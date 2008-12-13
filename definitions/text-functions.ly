%------------------------------------------------------------------%
% Opéra Libre -- text-functions.ly                                 %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

#(use-modules (ice-9 regex))
#(use-modules (ice-9 optargs))

%%%%%%%%%%%%%%%%%%%%%%%%%%% Definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Advanced definitions -------------------------------------------%

%%% This code was provided by Nicolas Sceaux.

#(define-public string-upper-case #f)
#(define accented-char-upper-case? #f)
#(define accented-char-lower-case? #f)

%%;; an accented character is seen as two characters by guile
#(let ((lower-case-accented-string "éèêëáàâäíìîïóòôöúùûüçœæ")
       (upper-case-accented-string "ÉÈÊËÁÀÂÄÍÌÎÏÓÒÔÖÚÙÛÜÇŒÆ"))
   (define (group-by-2 chars result)
      (if (or (null? chars) (null? (cdr chars)))
          (reverse! result)
          (group-by-2 (cddr chars)
                      (cons (string (car chars) (cadr chars))
                            result))))
   (let ((lower-case-accented-chars
          (group-by-2 (string->list lower-case-accented-string) (list)))
         (upper-case-accented-chars
          (group-by-2 (string->list upper-case-accented-string) (list))))
     (set! string-upper-case
           (lambda (str)
             (define (replace-chars str froms tos)
               (if (null? froms)
                   str
                   (replace-chars (regexp-substitute/global #f (car froms) str
                                                            'pre (car tos) 'post)
                                  (cdr froms)
                                  (cdr tos))))
             (string-upcase (replace-chars str
                                           lower-case-accented-chars
                                           upper-case-accented-chars))))
     (set! accented-char-upper-case?
           (lambda (char1 char2)
             (member (string char1 char2) upper-case-accented-chars string=?)))
     (set! accented-char-lower-case?
           (lambda (char1 char2)
             (member (string char1 char2) lower-case-accented-chars string=?)))))

#(define-markup-command (smallCaps layout props text) (markup?)
  "Turn @code{text}, which should be a string, to small caps.
@example
\\markup \\small-caps \"Text between double quotes\"
@end example"
  (define (string-list->markup strings lower)
    (let ((final-string (string-upper-case
                         (apply string-append (reverse strings)))))
      (if lower
          (markup #:fontsize -2 final-string)
          final-string)))
  (define (make-small-caps rest-chars currents current-is-lower prev-result)
    (if (null? rest-chars)
        (make-concat-markup (reverse! (cons (string-list->markup
                                              currents current-is-lower)
                                            prev-result)))
        (let* ((ch1 (car rest-chars))
               (ch2 (and (not (null? (cdr rest-chars))) (cadr rest-chars)))
               (this-char-string (string ch1))
               (is-lower (char-lower-case? ch1))
               (next-rest-chars (cdr rest-chars)))
          (cond ((and ch2 (accented-char-lower-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #t)
                 (set! next-rest-chars (cddr rest-chars)))
                ((and ch2 (accented-char-upper-case? ch1 ch2))
                 (set! this-char-string (string ch1 ch2))
                 (set! is-lower #f)
                 (set! next-rest-chars (cddr rest-chars))))
          (if (or (and current-is-lower is-lower)
                  (and (not current-is-lower) (not is-lower)))
              (make-small-caps next-rest-chars
                               (cons this-char-string currents)
                               is-lower
                               prev-result)
              (make-small-caps next-rest-chars
                               (list this-char-string)
                               is-lower
                               (if (null? currents)
                                   prev-result
                                   (cons (string-list->markup
                                            currents current-is-lower)
                                         prev-result)))))))
  (interpret-markup layout props
    (if (string? text)
        (make-small-caps (string->list text) (list) #f (list))
        text)))

%% Graphic fine-tuning --------------------------------------------%

#(define-markup-command (vspace layout props amount) (number?)
  (let ((amount (* amount 3.0)))
    (if (> amount 0)
        (ly:make-stencil "" (cons -1 1) (cons 0 amount))
        (ly:make-stencil "" (cons -1 1) (cons amount amount)))))

#(define-public (rounded-whiteout-stencil stencil blot)
  (let*
      ((x-ext (ly:stencil-extent stencil X))
       (y-ext (ly:stencil-extent stencil Y)))
    (ly:stencil-add
     (stencil-with-color (ly:round-filled-box x-ext y-ext blot)
       white)
     stencil)))

#(define-markup-command (rounded-whiteout layout props radius arg)
                        (number? markup?)
  (rounded-whiteout-stencil (interpret-markup layout props arg) radius))

  #(define-markup-command (line-width-ratio layout props width-ratio arg) (number? markup?)
  (interpret-markup layout props
   (markup #:override (cons 'line-width (* width-ratio (chain-assoc-get 'line-width props)))
           arg)))

%% Expressive indications -----------------------------------------%

#(define-markup-command (indic layout props arg) (markup?)
    (interpret-markup layout props
    (markup #:rounded-whiteout 1 #:small #:italic arg)))

%% Dynamics -------------------------------------------------------%

%%% This function was provided by Graham Percival.
#(define (make-dynamic-extra dynamic string)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup
           ;; uncomment next line for debugging
           ;;#:box
           #:line(
               dynamic
               #:hspace -0.3
               #:normal-text #:italic string))
      ))

#(define (make-extra-dynamic string dynamic)
     (make-music
       'AbsoluteDynamicEvent
       'tweaks
         ;; calculate centering for text
         (list (cons (quote X-offset)
           (+ -0.5 (* -0.5 (string-length dynamic)))))
       'text
         (markup
           ;; uncomment next line for debugging
           ;;#:box
           #:line(
               #:normal-text #:italic string
               #:hspace -0.3
               #:dynamic dynamic))
      ))

%%%%%%%%%%%%%%%%%%%%%%%%%% In-score Text %%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Non-standard synamics ------------------------------------------%

fpp = #(make-dynamic-script "fpp")
sffz = #(make-dynamic-script "sffz")


%% Composite Dynamics ---------------------------------------------%

% because of the use of a music-function,
% non-predefined composite dynamics have to be entered *before*
% the affected beat (unlike standard or predefined dynamics).
cmb =
#(define-music-function (parser location dyn str) (string? string?)
  (make-music 'SequentialMusic 'elements
    (list
      (make-music 'OverrideProperty
                  'symbol 'DynamicText
                  'grob-property-path (list 'self-alignment-X)
                  'grob-value -0.6 'once #t)
      (make-music 'AbsoluteDynamicEvent
                  'text
                  (markup #:dynamic dyn
                          #:hspace .5
                          #:text #:medium #:upright str)))))

bmc =
#(define-music-function (parser location str dyn) (string? string?)
  (make-music 'SequentialMusic 'elements
    (list
      (make-music 'OverrideProperty
                  'symbol 'DynamicText
                  'grob-property-path (list 'self-alignment-X)
                  'grob-value -0.6 'once #t)
      (make-music 'AbsoluteDynamicEvent
                  'text
                  (markup #:text #:medium #:upright str
                          #:hspace .5
                          #:dynamic dyn)))))

%% Predefined commands

ffsubito = #(make-dynamic-extra "ff" "subito")
fsubito = #(make-dynamic-extra "f" "subito")
mfsubito = #(make-dynamic-extra "mf" "subito")
fmolto = #(make-dynamic-extra "f" "molto")
psempre = #(make-dynamic-extra "p" "sempre")
ppsempre = #(make-dynamic-extra "pp" "sempre")
mfsempre = #(make-dynamic-extra "mf" "sempre")
mpsostenuto = #(make-dynamic-extra "mp" "sostenuto")
psubito = #(make-dynamic-extra "p" "subito")
pdolce = #(make-dynamic-extra "p"  "dolce")
pleggiero = #(make-dynamic-extra "p"  "leggiero")
ppsubito = #(make-dynamic-extra "pp"  "subito")
mfleggiero = #(make-dynamic-extra "mf" "leggiero")
piuf = #(make-extra-dynamic "più" "f")
pocof = #(make-extra-dynamic "poco" "f")


%% Text indications -----------------------------------------------%

ind =
#(define-music-function (parser location text music) (string? ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'direction 1
                  'text (markup #:indic text))))))
   music)

nind =
#(define-music-function (parser location texte)
(string? )
(make-dynamic-script
              (markup  #:text #:indic texte)))

%% Predefined commands

ten =
#(define-music-function (parser location music) (ly:music?)
   (if
     (equal? (ly:music-property music 'name) 'EventChord)
     (set! (ly:music-property music 'elements)
           (append (ly:music-property music 'elements)
                  (list (make-music 'TextScriptEvent 'text
                    (markup #:translate (cons 4 0)
                    #:indic "(ten.)"))))))
                 music)


pizz =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"pizz." $music #})

arco =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"arco" $music #})

flaut =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"flautando" $music #})

simile =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"simile" $music #})

loco =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"loco" $music #})

ordin =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"(ordin.)" $music #})

meno =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"meno" $music #})

jet =
#(define-music-function (parser location music) (ly:music?)
#{ \ind #"jeté" $music #})


%% Text Spanners --------------------------------------------------%

#(define (make-txt-span music t)
 (set! (ly:music-property music 'elements)
                       (append (ly:music-property music 'elements)
                       (list (make-music 'TextSpanEvent
                         'span-direction t))))
                         music)

%% The two following functions are deprecated. Better code follows below.
startTxt =
#(define-music-function (parser location texte music ) (string? ly:music?)
#{ \override TextSpanner #'bound-details #'left #'text =
  \markup { \bold $texte }
                $(make-txt-span music -1)#})

stopTxt =
#(define-music-function (parser location music) (ly:music?)
     (make-txt-span music 1))

#(define (make-text-span txt)
"Make a TextSpanner that begins with the given STR."
  (let* ((m (make-music 'TextSpanEvent
             'span-direction -1))
         (details (assoc-get 'bound-details
                   (assoc-get 'TextSpanner
                    all-grob-descriptions)))
         (left-details (assoc-get 'left
                        details)))
   (ly:music-set-property! m 'tweaks
    (acons 'bound-details
     (acons 'left
      (acons 'text txt
       left-details)
      details)
     (ly:music-property m 'tweaks)))
   m))

startText=
#(define-music-function (location parser txt) (string?)
(make-text-span txt))

stopText= #(make-music 'TextSpanEvent 'span-direction 1)

%% Predefined commands

rit = #(make-text-span "rit.")



%%%%%%%%%%%%%%%%%%%%%%%%%%%% Other Text %%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Lyrics formatting ----------------------------------------------%

freeStyleOn = {
\override Lyrics . LyricExtender #'stencil = ##f }

freeStyleOff = {
\revert Lyrics . LyricExtender #'stencil }

leftSyl = {
\once \override LyricText #'self-alignment-X = #0.9 }

dash = {
  \once \override LyricHyphen #'minimum-distance = #4
  \once \override LyricHyphen #'length = #2
  \once \override LyricHyphen #'thickness = #1.2
}

ital = {
\once \override LyricText #'font-shape = #'italic }

smallcaps = {
\override LyricText  #'font-shape = #'caps }

normal = {
\revert LyricText #'font-shape }


%% Scenography formatting ---------------------------------------%
long = {
\once \override TextScript #'extra-spacing-width = #'(0 . 0)
\once \override TextScript #'infinite-spacing-height = ##t
}

#(define-markup-command (did layout props text) (markup?)
  (interpret-markup layout props
    (markup #:override '(line-width . 40)
    #:override '(box-padding . 1)
    #:override '(corner-radius . 2)
    #:rounded-box #:sans #:italic #:small #:justify-string text)))

#(define-markup-command (init-did layout props text) (markup?)
  (interpret-markup layout props
    (markup
  ;  #:override (cons 'line-width (* 1 (chain-assoc-get 'line-width props)))
    #:fill-line (
    #:override '(line-width . 60)
    #:override '(box-padding . 1.5)
    #:override '(corner-radius . 2)
    #:rounded-box #:sans #:italic #:small #:justify-string  text))))


%% Table of contents --------------------------------------------%
tocAct =
#(define-music-function (parser location text) (markup?)
   (add-toc-item! 'tocActMarkup text))

tocQuote =
#(define-music-function (parser location text) (markup?)
   (add-toc-item! 'tocQuoteMarkup text))

%% Characters and instrument names ------------------------------%

#(define characters `((dummy . "")))
#(define instruments `((dummy . "")))

#(define (char-name n) (car (car (assoc-get n characters))))
#(define (char-shortname n) (cdr (car (assoc-get n characters))))
#(define (instr-name n) (car (car (assoc-get n instruments))))
#(define (instr-shortname n) (cdr (car (assoc-get n instruments))))

#(define (make-char-name n . pad)
(let* ((txt (char-name n))
       (srt (char-shortname n))
       (m (if (pair? pad)
          (markup #:hcenter-in (car pad) txt)
          (markup txt)))
       (n (if (pair? pad)
          (markup #:hcenter-in (car pad) srt)
          (markup srt))))
    (ly:export (make-sequential-music (list
                (context-spec-music (make-property-set 'instrumentName m)
                  'Staff)
                (context-spec-music (make-property-set 'shortInstrumentName n)
                  'Staff)
                (context-spec-music (make-property-set 'midiInstrument "voice oohs")
                  'Staff))))))

#(define (make-instrument-name n midi . pad)
  (let* ((txt (instr-name n))
         (srt (instr-shortname n))
         (m (if (pair? pad)
            (markup #:hcenter-in (car pad) txt)
            (markup txt)))
         (n (if (pair? pad)
            (markup #:hcenter-in (car pad) srt)
            (markup srt))))
    (ly:export (make-sequential-music (list
                (context-spec-music (make-property-set 'instrumentName m)
                  'Staff)
                (context-spec-music (make-property-set 'shortInstrumentName n)
                  'Staff)
                (context-spec-music (make-property-set 'midiInstrument midi)
                  'Staff))))))

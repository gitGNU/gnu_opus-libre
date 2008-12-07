%------------------------------------------------------------------%
% Opéra Libre -- text-functions.ly                                 %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


%%%%%%%%%%%%%%%%%%%%%%%%%%% Definitions %%%%%%%%%%%%%%%%%%%%%%%%%%%%


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
psubito = #(make-dynamic-extra "p"  "subito")
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


%------------------------------------------------------------------%
% Opéra Libre -- common.ly                                         %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%

%%%%%%%%%%%%%%%%%%%%%%%%%% Common Layout %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Paper size -----------------------------------------------------%
#(set-default-paper-size "a4" 'landscape)

%% Page breaking --------------------------------------------------%
#(define page-breaking ly:optimal-breaking)

%% Staff size -----------------------------------------------------%
#(set-global-staff-size 14)

%% Time Signatures layouts ----------------------------------------%

% FIXME: move to layout.ly

CoolSignatures = {
  \override TimeSignature #'break-visibility = #end-of-line-invisible
  \override TimeSignature #'font-size = #3
  \override TimeSignature #'break-align-symbol = ##f
  \override TimeSignature #'X-offset = #ly:self-alignment-interface::x-aligned-on-self
  \override TimeSignature #'self-alignment-X = #0
  \override TimeSignature #'after-line-breaking = #shift-right-at-line-begin
}

topTimeSig = {
  \CoolSignatures
  \override TimeSignature #'font-size = #4
}

middleTimeSig = {
  \CoolSignatures
%  \override TimeSignature #'break-visibility = ##(#f #t #f)
  \override TimeSig.TimeSignature #'font-size = #3
  \override TimeSig.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 5)
}

PianoDynamics = {
  \override Dynamics.TimeSignature #'font-size = #1
  \override Dynamics.VerticalAxisGroup #'minimum-Y-extent = #'(-1.5 . 1.5 )
}



%%%%%%%%%%%%%%%%%%%% Functions initialization %%%%%%%%%%%%%%%%%%%%%%

#(use-modules (srfi srfi-39)(ice-9 regex))
#(ly:set-option 'point-and-click #f)










%%% -*- Mode: scheme -*-
%%% The following functions were provided by
%%% Nicolas Sceaux <nicolas.sceaux@free.fr>


%%%%%%%%%%%%%%%%%%%%%%%%%% Score Inclusion %%%%%%%%%%%%%%%%%%%%%%%%%

%% Scheme functions -----------------------------------------------%

#(define *composer* (make-parameter ""))
#(define *category* (make-parameter ""))
#(define *opus* (make-parameter ""))
#(define *piece* (make-parameter ""))

#(define-public (include-pathname name)
   (let ((hierarchy (list (*composer*)
                          (*category*)
                          (*opus*)
                          (*piece*))))
     (string-append
      (apply string-append
             (map (lambda (dir)
                    (if (string-null? dir)
                        ""
                        (string-append dir "/")))
                  hierarchy))
      name
      ".ly")))

#(define-public (include-score parser name)
   (collect-music-for-book
    parser
    (make-music 'Music
                'page-marker #t
                'page-label (string->symbol name)))
   (parameterize ((*piece* name))
     (ly:parser-parse-string
      (ly:parser-clone parser)
      (format #f "\\include \"~a\""
              (include-pathname "score")))))

%%%
%%% Separate parts
%%%
#(define *all-part-specs* (make-parameter (list)))
#(define *part-specs* (make-parameter #f))
#(define *part* (make-parameter #f))
#(define *part-name* (make-parameter ""))
#(define *note-filename* (make-parameter #f))
#(define *instrument-name* (make-parameter #f))
#(define *score-ragged* (make-parameter #f))
#(define *score-indent* (make-parameter #f))
#(define *score-extra-music* (make-parameter #f))
#(define *tag* (make-parameter #f))

#(define-public (include-part-score parser
                                    name
                                    score-filename
                                    from-templates)
   (collect-music-for-book
    parser
    (make-music 'Music
                'page-marker #t
                'page-label (string->symbol name)))
   (parameterize ((*piece* name))
     (ly:parser-parse-string
      (ly:parser-clone parser)
      (format #f "\\include \"~a\""
              (if from-templates
                  (string-append "templates/" score-filename ".ly")
                  (include-pathname score-filename))))))

#(define (make-piece piece-spec default-note-filename)
  "Return an associative list defining a part piece, with the following keys:
 - name          the piece name.
 - score         the part piece filename (without directory, nor extension)
                   Default: \"score\"
 - from-template should the score filename be found in templates directory?
                   Is #t when #:score has been explicitely specified, #f otherwise.
 - ragged        the value of the layout ragged-last variable
                   Default: #f
 - indent        the value of the layout indent variable
                   Default: #f (which means that the globally defined indent is used)
 - tag           the tag to be used when including the 'global.ily' file:
                   \\keepWithTag #tag \\global
                   Default: #f (do not use a tag)
 - notes         the note filename (without directory, nor extension)
                   Default: default-note-filename
 - instrument    the instrumnt name to be printed before the first staff
                   Default: #f (do not print instrument name)

`piece-spec' should be a list, which first-element is the peice name,
then consisting of alterning keywords and values, the keywords being any
combination from the following list:
  #:score #:ragged #:indent #:tag #:notes #:instrument #:silence #:music
where #:silence, when associated to a true value, forces the printing of rests
      #:music allows to include some extra music"
  (let ((name (car piece-spec))
        (score "score")
        (from-templates #t)
        (ragged #f)
        (indent #f)
        (tag #f)
        (notes default-note-filename)
        (instrument #f)
        (music #f))
    (let parse-props ((props (cdr piece-spec)))
      (if (not (or (null? props) (null? (cdr props))))
          (begin
            (case (car props)
              ((#:notes) (set! notes (cadr props)))
              ((#:ragged) (set! ragged (cadr props)))
              ((#:indent) (set! indent (cadr props)))
              ((#:tag) (set! tag (cadr props)))
              ((#:score)
               (set! score (cadr props))
               (set! from-templates #f))
              ((#:instrument) (set! instrument (cadr props)))
              ((#:music) (set! music (cadr props)))
              ((#:silence)
               (if (cadr props)
                   (begin
                     (set! score "score-silence")
                     (set! ragged #t)
                     (set! notes "silence")
                     (set! from-templates #t)))))
            (parse-props (cddr props)))))
    `((name . ,name)
      (score . ,score)
      (from-templates . ,from-templates)
      (ragged . ,ragged)
      (indent . ,indent)
      (tag . ,tag)
      (notes . ,notes)
      (instrument . ,instrument)
      (music . ,music))))

%% Music functions ------------------------------------------------%

%%%   \includeScore "piece"
%%%     set the current piece to `piece', and parse the file
%%%     "<piece pathname>/score.ily"
%%%
%%% Functions parsing a file and returning its music:
%%%
%%%   \global
%%%     Return the music of the current piece "global.ily" file,
%%%     parsing it if that has not been done yet.

setPart =
#(define-music-function (parser location name) (string?)
   (define (add-piece! pieces-htable piece-spec forced default-note-filename instrument)
     (let ((piece-name (car piece-spec)))
       (if (or forced (not (hashq-ref pieces-htable piece-name #f)))
           (let ((piece (make-piece piece-spec default-note-filename)))
             (if (and instrument
                      (not (assoc-ref piece 'instrument)))
                 (assoc-set! piece 'instrument instrument))
             (hashq-set! pieces-htable piece-name piece)))))
   (let* ((part-key (string->symbol name))
          (spec (assoc part-key (*all-part-specs*))))
     (if spec
         (let ((part-name (cadr spec))
               (fallbacks (caddr spec))
               (default-notes (cadddr spec))
               (piece-specs (cddddr spec)))
           (*part* part-key)
           (*part-name* part-name)
           (*part-specs* (make-hash-table 150))
           (for-each (lambda (piece-spec)
                      (add-piece! (*part-specs*) piece-spec #t default-notes #f))
                    piece-specs)
           (for-each (lambda (fallback)
                      (let* ((key (car fallback))
                             (instrument (cadr fallback))
                             (spec (assoc key (*all-part-specs*))))
                        (if spec
                            (let ((default-notes (cadddr spec))
                                  (piece-specs (cddddr spec)))
                              (for-each (lambda (piece-spec)
                                         (add-piece! (*part-specs*) piece-spec #f default-notes instrument))
                                       piece-specs)))))
                    fallbacks))
         (ly:warning "No `~a' part defined for this opus" part-key)))
   (make-music 'Music 'void #t))

%%%
%%% Music functions
%%%

global = 
#(define-music-function (parser location) ()
  (let* ((global-symbol (string->symbol (format "global~a~a" (*opus*) (*piece*))))
         (global-music (ly:parser-lookup parser global-symbol))
         (start-overrides (ly:parser-lookup parser 'staffStart)))
   (if (not (ly:music? global-music))
       (let* ((global-file (include-pathname "global")))
         (if (not (ly:music? start-overrides))
             (set! start-overrides (make-music 'Music)))
         (set! global-music #{ \notemode { $start-overrides \include $global-file } #})
         (ly:parser-define! parser global-symbol global-music)))
   (ly:music-deep-copy global-music)))

includeNotes = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \notemode { \include $include-file } #}))

includeLyrics = 
#(define-music-function (parser location pathname) (string?)
  (let ((include-file (include-pathname pathname)))
   #{ \lyricmode { \include $include-file } #}))

includeScore =
#(define-music-function (parser location name) (string?)
   (if (*part*)
       ;; a part score
       (let ((piece (hashq-ref (*part-specs*)
                               (string->symbol name)
                               (make-piece (list (string->symbol name)
                                                 #:silence #t)
                                           "silence"))))
         (parameterize ((*score-ragged* (assoc-ref piece 'ragged))
                        (*note-filename* (assoc-ref piece 'notes))
                        (*instrument-name* (assoc-ref piece 'instrument))
                        (*score-indent* (assoc-ref piece 'indent))
                        (*tag* (assoc-ref piece 'tag))
                        (*score-extra-music* (assoc-ref piece 'music)))
           (include-part-score parser
                               name
                               (assoc-ref piece 'score)
                               (assoc-ref piece 'from-templates))))
       ;; conductor score
       (include-score parser name))
   (make-music 'Music 'void #t))

%%% -*- Mode: scheme -*-

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Tagging commands
%%%

#(use-modules (srfi srfi-1))
#(define* (has-some-member? list1 list2 #:key (test eqv?))
   "Return a true value iif there exists an element of list1 that also 
belongs to list2 under test."
   (if (null? list1)
       #f
       (or (member (car list1) list2 test)
           (has-some-member? (cdr list1) list2 #:test test))))

#(define (symbol-or-symbols? x)
   (or (null? x)
       (symbol? x)
       (and (list? x) (every symbol? x))))

keepWithTag =
#(define-music-function (parser location tags music)
                        (symbol-or-symbols? ly:music?)
   (music-filter
    (lambda (m)
      (let ((m.tags (ly:music-property m 'tags)))
        (cond ((symbol? tags)
               (or (null? m.tags) (memq tags m.tags)))
              ((null? tags)
               (null? m.tags))
              ((list? tags)
               (or (null? m.tags) (has-some-member? tags m.tags)))
              (else #t))))
    music))

tag =
#(define-music-function (parser location tags arg)
                        (symbol-or-symbols? ly:music?)
   "Add @var{tags} (a single tag or a list of tags) to the @code{tags} 
property of @var{arg}."
   (set! (ly:music-property arg 'tags)
         (if (symbol? tags)
             (cons tags (ly:music-property arg 'tags))
             (append tags (ly:music-property arg 'tags))))
   arg)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% smaller notes
%%%

smallNotes = 
#(define-music-function (parser location music) (ly:music?)
  (let ((first-chord-already-found #f)
        (last-chord #f)
        (start-beam (make-music 'BeamEvent
                                'span-direction -1))
        (end-beam (make-music 'BeamEvent
                              'span-direction 1))
        (note-count 0))
    ;; Add [ beaming directive to the first chord
    (music-map (lambda (event)
                 (cond ((eqv? (ly:music-property event 'name) 'EventChord)
                        (cond ((not first-chord-already-found)
                               ;; the first ChordEvent: add start beam
                               (set! first-chord-already-found #t)
                               (set! (ly:music-property event 'elements)
                                     (cons start-beam
                                           (ly:music-property event 'elements))))
                              (else (set! last-chord event))))
                       ((eqv? (ly:music-property event 'name) 'NoteEvent)
                        (set! note-count (1+ note-count))))
                 event)
               music)
    ;; Add ] beaming directive to the last chord
    (set! (ly:music-property last-chord 'elements)
          (cons end-beam (ly:music-property last-chord 'elements)))
    ;; If there are 3 notes, add a *2/3 duration factor
    (if (= note-count 3)
        (music-map (lambda (event)
                     (if (eqv? (ly:music-property event 'name) 'NoteEvent)
                         (let* ((duration (ly:music-property event 'duration))
                                (dot-count (ly:duration-dot-count duration))
                                (log (ly:duration-log duration)))
                           (set! (ly:music-property event 'duration)
                                 (ly:make-duration log dot-count 2 3))))
                     event)
                   music)))
  #{ 
  \override Voice.NoteHead #'font-size = #-3
  \override Voice.Stem #'font-size = #-3
  \override Voice.NoteHead #'font-size = #-3
  \override Voice.Accidental #'font-size = #-4
  $music
  \revert Voice.NoteHead #'font-size
  \revert Voice.Stem #'font-size
  \revert Voice.NoteHead #'font-size
  \revert Voice.Accidental #'font-size
  #})


%%%
%%% Misc utilities
%%%

instrumentName =
#(define-music-function (parser location name) (markup?)
   #{ \set Staff.instrumentName = \markup \large $name #})

characterName =
#(define-music-function (parser location name) (markup?)
  #{ \set Staff . instrumentName = \markup \large \smallCaps $name #})


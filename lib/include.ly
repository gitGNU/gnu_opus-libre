%------------------------------------------------------------------%
% opus_libre -- include.ly                                         %
%                                                                  %
% (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        %
%                                                                  %
%     opus_libre is a free framework for GNU LilyPond: you may     %
% redistribute it and/or modify it under the terms of the GNU      %
% General Public License, version 3 or later: gnu.org/licenses     %
%                                                                  %
%------------------------------------------------------------------%

% Inclusion functions.


%% FIXME: relative includes don't work in Scheme -- Issue 1078.
#(ly:set-option 'relative-includes #f)
%#(ly:set-option 'debug-messages #t)
%#(ly:set-option 'ignore-output-dir)
%#(ly:set-option 'use-variable-names #t)
%#(ly:set-option 'allow-suffixless-varnames #t)


%%%%%%%%%%%%%%%%%%%%%%%%%% Base includes %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Base libraries -------------------------------------------------%


%%%%%%%%%%%%%%%%%%%%%%%%%% Load libraries %%%%%%%%%%%%%%%%%%%%%%%%%%

#(load "lib/init.scm")
#(include-scm conf:lib-dir #t)
%#(display conf:locale-dir)
%#(load "lib/toto.scm")
#(include-ly score-dir)
%%%%%%%%%%%%%%%%%%%%%% Define music-functions %%%%%%%%%%%%%%%%%%%%%%

%% Required by main.ly --------------------------------------------%
% lang =
% #(define-music-function (parser location lang-code) (string?)
%   (input-language lang-code)
%   (make-sequential-music 'void #t))
%
% edition =
% #(define-music-function (parser location lang-code) (string?)
%   (edition-language lang-code)
%   (make-sequential-music 'void #t))
%
% make =
% #(define-music-function (parser location dir) (string?)
%   (use-score-dir dir))

% #(define (exists? loc) (access? loc F_OK))
%
% #(define (load-lib dir file)
%   (let* ((path (string-append dir "/" file ".scm")))
%    (if (exists? path)
%      (begin (load path)
%        (if debug-messages (ly:message "Loading ~a..." path)))
%      (if debug-messages (ly:message "File not found: ~a" path)))))
%
% #(let* ((files '(
%   "score"
%   "fstree"
%   "readconf"
%   "")))
%   (map (lambda (x) (load-lib conf:lib-dir x))
%        files))


%------------------------------------------------------------------%

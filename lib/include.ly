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

%%%%%%%%%%%%%%%%%%%%%%%%%% Base includes %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Default function set -------------------------------------------%
\include "etc/ly.conf"

%% Base libraries -------------------------------------------------%

#(let* ((lib (if (string? libDir) libDir "lib"))
       (files '(
                "fstree"
                "conf"
                )))
 (map (lambda (x)
       (let* ((path (string-append lib "/" x ".scm")))
        (begin (load path)
         (ly:message "Loading ~a..." path))))
  files))

%%%%%%%%%%%%%%%%%%%%%%%%%% Load libraries %%%%%%%%%%%%%%%%%%%%%%%%%%



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


%------------------------------------------------------------------%

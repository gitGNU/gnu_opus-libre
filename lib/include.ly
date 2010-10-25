%------------------------------------------------------------------%
% opus_libre -- include.ly                                         %
%                                                                  %
% (c) 2008-2010 Valentin Villenave <valentin@villenave.net>        %
%                                                                  %
%     opus_libre is a free framework for GNU LilyPond: you may     %
% redistribute it and/or modify it under the terms of the GNU      %
% General Public License as published by the Free Software         %
% Foundation, either version 3 of the License, or (at your option) %
% any later version.                                               %
%     This program is distributed WITHOUT ANY WARRANTY; without    %
% even the implied warranty of MERCHANTABILITY or FITNESS FOR A    %
% PARTICULAR PURPOSE.  You should have received a copy of the GNU  %
% General Public License along with this program (typically in the %
% share/doc/ directory).  If not, see http://www.gnu.org/licenses/ %
%                                                                  %
%------------------------------------------------------------------%

% Inclusion functions.


%% FIXME: relative includes don't work in Scheme -- Issue 1078.
#(ly:set-option 'relative-includes #f)
%#(ly:set-option 'ignore-output-dir #t)
%#(ly:set-option 'use-variable-names #t)
%#(ly:set-option 'allow-suffixless-varnames #t)
%#(ly:set-option 'automatic-piano-dynamics)
#(ly:set-option 'git-branch-as-score-name #t)

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


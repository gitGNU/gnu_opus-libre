%------------------------------------------------------------------%
% opus_libre -- main.ly                                            %
%                                                                  %
% (c) 2008-2011 Valentin Villenave <valentin@villenave.net>        %
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


% Entry point for scores compilation.


\version "2.13.35"

%%%%%%%%%%%%%%%%%%%%%%%% Language selection %%%%%%%%%%%%%%%%%%%%%%%%

%% Source code language (see locale/ ) ----------------------------%
%input = "en"

%% Edition localisation (if different) ----------------------------%
%edition = "fr"

%%%%%%%%%%%%%%%%%%%%%%%%%% Score selection %%%%%%%%%%%%%%%%%%%%%%%%%

%% Source code directory (see scores/ ) ---------------------------%
scores = "free"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Optional %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Skeleton (see etc/skel/ ) --------------------------------------%
skel = "song"

%% Graphic theme (see share/themes/ ) -----------------------------%
theme = "default"

structure = #'("")

%lyricsSuffix = "Texte"

%%%%%%%%%%%%%%%%%%%%%%%%%%% Main include %%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Automatic functions inclusion, do not edit ---------------------%
\include "lib/include.ly"

%% Select edition or instrument -----------------------------------%

% (e.g. "fullscore", "pianoscore" or any instrument name)
\make #"all"

%%-----------------------------------------------------------------%

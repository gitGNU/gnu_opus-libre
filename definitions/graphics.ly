%------------------------------------------------------------------%
% Opéra Libre -- graphics.ly                                       %
%                                                                  %
% (c) Valentin Villenave, 2008                                     %
%                                                                  %
%------------------------------------------------------------------%


%%% This file adds very basic graphic elements to the score. These
%%% drawings were (remotely) inspired by Jochen Gerner, the artist
%%% who drew the original comic book.


%%%%%%%%%%%%%%%%%%%%%%%% Scores Separator %%%%%%%%%%%%%%%%%%%%%%%%%%
Skyline =
\markup \with-dimensions #'(6 . 32) #'(-5 . 4)
\postscript #"
1 -1 scale
0 -4 translate
0.25 setlinewidth
12 0.5 moveto
12 5.5 lineto
10 5.5 lineto
10 4.5 lineto
10 3.5 lineto
9 3.5 lineto
9 4.5 lineto
8 4.5 lineto
8 3.5 lineto
7 3.5 lineto
7 4.5 lineto
6 4.5 lineto
6 3.5 lineto
5 3.5 lineto
5 6.6875 lineto
6.6357499 24 6.84375 moveto
24 3.5 lineto
23 3.5 lineto
23 4.5 lineto
22 4.5 lineto
22 3.5 lineto
21 3.5 lineto
21 4.5 lineto
20 4.5 lineto
20 3.5 lineto
19 3.5 lineto
19 5.5 lineto
18 5.5 lineto
17 5.5 lineto
17 1.5 lineto
17 0.5 lineto
16 0.5 lineto
16 1.5 lineto
15 1.5 lineto
15 0.5 lineto
14 0.5 lineto
14 1.5 lineto
13 1.5 lineto
13 0.5 lineto
12 0.5 lineto
33.21875 8.53125 moveto
32.752266 7.392383 30.7275 6.53125 28.3125 6.53125 curveto
27.034897 6.53125 25.884152 6.761574 25 7.15625 curveto
23.909336 6.743624 22.655323 6.53125 21.3125 6.53125 curveto
19.625293 6.53125 18.065979 6.903601 16.8125 7.53125 curveto
16.642035 7.530622 16.484082 7.53125 16.3125 7.53125 curveto
15.733231 7.53125 15.190726 7.555449 14.625 7.5625 curveto
13.347306 6.889327 11.75375 6.5 10 6.5 curveto
8.70625 6.5 7.4689209 6.70874 6.40625 7.09375 curveto
5.5507866 6.75155 4.4924315 6.53125 3.3125 6.53125 curveto
0.8975 6.53125 -1.1272656 7.392383 -1.59375 8.53125 curveto
stroke"

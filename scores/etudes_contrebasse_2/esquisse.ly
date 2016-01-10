%-- 21 Études -- esquisse.ly --------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

EsquisseTitre = "Esquisse vésanique"
% aliénée ?

EsquisseContrebasse = \relative do' {
  % \clef treble
  \time 3/4
  \tempo "Andantino impegnando" 4 = 60
  \acciaccatura sol8
  sol'16->\dyn "p_spiccato al fine"
  sol sol sol sol sol sol sol sol sol sol sol
  <fa sol>-> sol sol sol <mi sol>-> sol sol sol
  <fa sol>-> sol <mi sol>-> sol <mib sol>->
  sol sol sol sol sol sol sol sol sol sol sol

  %% TBC
}

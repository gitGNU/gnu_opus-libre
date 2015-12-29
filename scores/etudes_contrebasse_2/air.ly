%-- 21 Études -- air.ly -------------------------------------------%
% 2015 Valentin Villenave <valentin@villenave.net>

\language "italiano"

AirTitre = "Air monomane"

AirContrebasse = \relative do' {
  \clef bass
  \time 6/4
  \tempo "Moderato serioso"
  do,4->--\f\downbow fad->--\downbow si->--\downbow
  mib,->--\downbow la->--\downbow r8 sold-.\upbow
  do,4->--\downbow fad->--\downbow si->--\downbow
  mib,->--\downbow sold8-. la-. r4
  do,->--\downbow si'->--^"simile" fad->--
  mib8-. sold-. r la-. r4
  do,->-- si'->-- fad8-. mib-. r4 la8-. sold-. r4
  do,->-- fad8-. si-. r la-. r4 mib-. sold-.
  do,8-> si'-. fad-. sold-. mib-. la-. r4 r2
  %% 1
  do,8-> fa4-.\upbow si-.\upbow
  mib,-.\upbow lab-.\upbow re,4.--\upbow
  do8->(\downbow fa-.) si4-.\upbow
  r8 dod,4-.\upbow sol'8-.\upbow r fad4.--\upbow
  do,8-> si'-. fa-. mi-. r4 la-. sib-. r

}

AirPianoMd = \relative do' {
  r1 r4 sol''~ sol2.
}

AirPianoMg = \relative do' {
}

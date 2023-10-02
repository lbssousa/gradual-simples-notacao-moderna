\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

hymnChant = \relative c'' {
  \AntiphonSignature
  \key c \major
  \C g a g f g a g c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c d e \CC c b \CC a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g f g
  \finalis

  \C g a \CC g f g a g c d c
  \divisioMaior
  \C c a b c d c d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \C c d a b c
  \divisioMaior
  b c \C a \CC g f \C a \CC a b \C a g f g
  \finalis

  \CC g a \C g f g \CC a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \C a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g f g
  \finalis

  \C g a \CC g f \C g a g c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \C c d a b c
  \divisioMaior
  \CC b c \C a g f \C a \CC a b \C a g f g
  \finalis

  \C g a g f g \CC a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g f g
  \finalis

  \C g a g f g \CC a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g f g
  \finalis

  \CCC g a g \CC f g
  \finalis
}

hymnLyrics = \lyricmode {
  Oh vin -- de, Es -- pí -- ri -- to Cri -- a -- dor,
  as nos -- sas al -- mas __ vi -- si -- tai
  e en -- chei os __ nos -- sos __ co -- ra -- ções
  com __ vos -- sos __ dons ce -- les -- ti -- ais.

  Vós sois cha -- ma -- do o~In -- ter -- ces -- sor,
  do Deus ex -- cel -- so o dom sem par,
  a fon -- te __ vi -- va, o fo -- go,~o~a -- mor,
  a un -- ção di -- vi -- na __ e sa -- lu -- tar.

  Sois __ do -- a -- dor dos __ se -- te dons
  e sois po -- der na __ mão do Pai,
  por E -- le __ pro -- me -- ti -- do a nós,
  por __ nós seus __ fei -- tos __ pro -- cla -- mais.

  A nos -- sa __ men -- te i -- lu -- mi -- nai,
  os co -- ra -- ções en -- chei de~a -- mor,
  nos -- sa fra -- que -- za en -- co -- ra -- jai,
  qual for -- ça e -- ter -- na __ e pro -- te -- tor.

  Nos -- so i -- ni -- mi -- go __ re -- pe -- li,
  e con -- ce -- dei- -- nos __ vos -- sa paz;
  se pe -- la __ gra -- ça __ nos gui -- ais,
  o __ mal dei -- xa -- mos __ pa -- ra trás.

  Ao Pai e ao Fi -- lho __ Sal -- va -- dor
  por vós pos -- sa -- mos __ co -- nhe -- cer.
  Que pro -- ce -- deis __ do __ seu a -- mor
  fa -- zei- -- nos __ sem -- pre __ fir -- mes crer.

  A -- mém. __
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "VIII"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "hymn" {
      \transpose c a, \hymnChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "hymn" \hymnLyrics
  >>
}
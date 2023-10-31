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
  \C g a \C_C g f \C g \CC a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g \CC f g g
  \finalis

  \C g a \CC g f \C g \C_C a g \C c d c
  \divisioMaior
  \C c a b c \C_C d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \C_C c d \C a b c
  \divisioMaior
  \C_C b c \C a \CC g f \C a \CC_C a b a \C g \CC f g g
  \finalis

  \C g a \CC g f \C g \CC a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g \CC f g g
  \finalis

  \C g a \CC g f \C g \C_C a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \C_C c d \C a b c
  \divisioMaior
  \CC b c \C a \C_C g f \C a \CC_C a b a \C g \CC f g g
  \finalis

  \C g a \CC g f \C g \CC a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g \CC f g g
  \finalis

  \C g a \C_C g f \C g \CC a g \C c d c
  \divisioMaior
  \C c a b c \CC d c \C d e d
  \divisioMaxima
  c \CC d e \CC c b \CC a g \CC c d \C a b c
  \divisioMaior
  \CC b c \C a \CC g f \C a \CCC a b a \C g \CC f g g
  \finalis

  \CCC g a g \CC f g
  \finalis
}

hymnLyrics = \lyricmode {
  Ve -- ni Cre -- á -- tor __ Spí -- ri -- tus,
  mén -- tes tu -- ó -- rum __ ví -- si -- ta:
  im -- ple __ su -- pér -- na __ grá -- ti -- a
  quæ __ tu cre -- á -- sti __ pé -- cto -- ra.

  Qui dí -- ce -- ris Pa -- rá -- cli -- tus,
  do -- num De -- i al -- tís -- si -- mi,
  fons vi -- vus, __ i -- gnis, __ cá -- ri -- tas
  et __ spi -- ri -- tá -- lis __ _ ún -- cti -- o.

  Tu sep -- ti -- fór -- mis __ mú -- ne -- re,
  dex -- træ De -- i tu __ dí -- gi -- tus,
  tu ri -- te __ pro -- mís -- sum Pa -- tris
  ser -- mó -- ne __ di -- tans __ gút -- tu -- ra.

  Ac -- cén -- de __ lu -- men __ sén -- si -- bus,
  in -- fún -- de~a -- mó -- rem __ cór -- di -- bus,
  in -- fír -- ma __ no -- stri __ cór -- po -- ris,
  vir -- tú -- te __ fir -- mans __ _ pér -- pe -- ti.

  Hos -- tem re -- pél -- las __ lón -- gi -- us,
  pa -- cém -- que do -- nes __ pró -- ti -- nus;
  du -- ctó -- re __ sic __ te __ prǽ -- vi -- o
  vi -- té -- mus __ om -- ne __ nó -- xi -- um.

  Per te sci -- á -- mus __ da Pa -- trem
  no -- scá -- mus at -- que __ Fí -- li -- um,
  te u -- tri -- ús -- que __ Spí -- ri -- tum
  cre -- dá -- mus __ om -- ni __ tém -- po -- re.

  A -- men. __
}

hymnLyricsPt = \lyricmode {
  Oh vin -- \MelismaOff de, Es -- \MelismaOn pí -- ri -- to Cria -- dor,
  as nos -- sas al -- mas __ vi -- si -- tai
  e~en -- chei __ os __ nos -- sos __ co -- ra -- ções
  com __ vos -- sos __ dons ce -- les -- ti -- ais.

  Vós sois cha -- ma -- \MelismaOff do o~In -- \MelismaOn ter -- ces -- sor,
  do Deus ex -- cel -- \MelismaOff so o \MelismaOn dom sem par,
  a fon -- te __ vi -- \MelismaOff va, o \MelismaOn fo -- go,~o~a -- mor,
  \MelismaOff a un -- \MelismaOn ção di -- vi -- na __ e sa -- lu -- tar.

  Sois do -- a -- dor dos __ se -- te dons
  e sois po -- der na __ mão do Pai,
  por E -- le __ pro -- me -- ti -- do~a nós,
  por __ nós seus __ fei -- tos __ pro -- cla -- mais.

  A nos -- sa __ men -- \MelismaOff te i -- \MelismaOn lu -- mi -- nai,
  os co -- ra -- ções en -- chei de~a -- mor,
  nos -- sa __ fra -- que -- \MelismaOff za en -- \MelismaOn co -- ra -- jai,
  qual __ for -- \MelismaOff ça e -- \MelismaOn ter -- na __ e pro -- te -- tor.

  Nos -- so~i -- ni -- mi -- go __ re -- pe -- li,
  e con -- ce -- dei- -- nos __ vos -- sa paz;
  se pe -- la __ gra -- ça __ nos gui -- ais,
  o __ mal dei -- xa -- mos __ pa -- ra __ trás.

  Ao Pai \MelismaOff e ao \MelismaOn Fi -- lho __ Sal -- va -- dor
  por vós pos -- sa -- mos __ co -- nhe -- cer.
  Que pro -- ce -- deis __ do __ seu a -- mor
  fa -- zei- -- nos __ sem -- pre __ fir -- mes __ crer.

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

    \new GregorianTranscriptionLyrics \lyricsto "hymn"
    \hymnLyrics
    \new GregorianTranscriptionAltLyrics \lyricsto "hymn" \hymnLyricsPt
  >>
}
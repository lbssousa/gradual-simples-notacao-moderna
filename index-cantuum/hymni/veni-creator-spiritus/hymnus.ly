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
  \C g a \CC g f \C g \CC a g \C c d c
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

hymnLyricsI = \lyricmode {
  \set stanza = "1."
  Oh vin -- de,~Es -- pí -- ri -- to Cria -- dor,
  as nos -- sas al -- mas __ vi -- si -- tai
  e~en -- chei __ os __ nos -- sos __ co -- ra -- ções
  com __ vos -- sos __ dons ce -- les -- ti -- ais.
}

hymnLyricsII = \lyricmode {
  \set stanza = "2."
  Vós sois cha -- ma -- do~o~In -- ter -- ces -- sor,
  do Deus ex -- cel -- so~o __ dom sem par,
  a fon -- te __ vi -- va,~o __ fo -- go,~o~a -- mor,
  a~un -- ção di -- vi -- na~e __ sa -- lu -- tar.
}

hymnLyricsIII = \lyricmode {
  \set stanza = "3."
  Sois do -- a -- dor dos __ se -- te dons
  e sois po -- der na __ mão do Pai,
  por E -- le __ pro -- me -- ti -- do~a nós,
  por __ nós seus __ fei -- tos __ pro -- cla -- mais.
}

hymnLyricsIV = \lyricmode {
  \set stanza = "4."
  A nos -- sa __ men -- te~i -- lu -- mi -- nai,
  os co -- ra -- ções en -- chei de~a -- mor,
  nos -- sa __ fra -- que -- za~en -- co -- ra -- jai,
  qual for -- ça~e __ -- ter -- na~e __ pro -- te -- tor.
}

hymnLyricsV = \lyricmode {
  \set stanza = "5."
  Nos -- so~i -- ni -- mi -- go __ re -- pe -- li,
  e con -- ce -- dei- -- nos __ vos -- sa paz;
  se pe -- la __ gra -- ça __ nos gui -- ais,
  o __ mal dei -- xa -- mos __ pa -- ra trás.
}

hymnLyricsVI = \lyricmode {
  \set stanza = "6."
  Ao Pai e~ao Fi -- lho __ Sal -- va -- dor
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

    \new GregorianTranscriptionLyrics \lyricsto "hymn"
    \hymnLyricsI
    \new GregorianTranscriptionAltLyrics \lyricsto "hymn" \hymnLyricsII
    \new GregorianTranscriptionLyrics \lyricsto "hymn"
    \hymnLyricsIII
    \new GregorianTranscriptionAltLyrics \lyricsto "hymn" \hymnLyricsIV
    \new GregorianTranscriptionLyrics \lyricsto "hymn"
    \hymnLyricsV
    \new GregorianTranscriptionAltLyrics \lyricsto "hymn" \hymnLyricsVI
  >>
}
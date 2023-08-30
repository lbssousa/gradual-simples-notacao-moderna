\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-2.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \key c \major
  \PsalmSignature
  \chantInchoatioII
  \chantTenorII
  \chantMediatioII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'((syneresis . total))
  \finalis
  \Spacer 27
}

psalmChantB = {
  \key c \major
  \PsalmSignature
  \chantInchoatioII
  \chantTenorII
  \chantFlexaII #'((syneresis . total))
  \divisioMinima
  \chantTenorII
  \chantMediatioII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'((syneresis . partial))
  \finalis
  \Spacer 13
}

psalmChantC = {
  \key c \major
  \PsalmSignature
  \chantInchoatioII
  \chantTenorII
  \chantMediatioII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'((syneresis . partial))
  \finalis
  \Spacer 25
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Por que
  \Tenor "os povos agitados se re" --
  \MelismaOff vol -- tam? \MelismaOn
  \Tenor "Por que tramam as nações proje" -- tos vãos? __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "6" “Fui eu
  \Tenor "mesmo que escolhi este meu" Rei, __
  \Tenor "e em Sião, meu monte santo, o con" -- sa -- grei!” __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8" Po -- des
  \Tenor "pedir-me, e em resposta eu te da" -- rei __
  \Tenor "por tua herança os povos todos e as na" -- ções, __
  \Tenor "e há de ser a terra inteira o teu" do --
  \MelismaOff mí -- nio. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "9" “Com ce --
  \Tenor "tro férreo haverás de domi" --
  \MelismaOff ná -- -los, \MelismaOn
  \Tenor "e quebrá-los como um vaso de" ar --
  \MelismaOff gi -- la!” \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \AltLyrics
  \VSup "10" E a --
  \Tenor "gora, poderosos, enten" -- dei; __
  \Tenor "soberanos, aprendei esta" li -- ção. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "11" Com te --
  \Tenor "mor servi a Deus, rendei-lhe"
  \MelismaOff gló -- ria \MelismaOn
  \Tenor "e prestai-lhe homenagem com" res --
  \MelismaOff pei -- to! \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \AltLyrics
  \VSup "12cd" Fe -- li --
  \Tenor "zes hão de ser todos a" --
  \MelismaOff que -- les \MelismaOn
  \Tenor "que põem sua esperança no" Se -- nhor! __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose d g \gloriaPatriChantIID
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIID
  >>
}
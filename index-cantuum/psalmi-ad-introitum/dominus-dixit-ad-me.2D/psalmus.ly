\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-2.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \chantInchoatioII
  \chantTenorII
  \bar "!"
  \section
  \sectionLabel \markup { \italic flexa }
  \chantFlexaII
  \divisioMinima
  \chantTenorII
  \bar "!"
  \chantMediatioCumEpenthesisII
  \divisioMaxima
  \chantTenorII
  \chantTerminatioCumEpenthesisIID
  \finalis
  \fine
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Por que
  \Tenor "os povos agitados se re" _ _ _ -- vol -- _ tam?
  \Tenor "Por que tramam as nações" pro -- je -- tos vãos?
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "6" “Fui eu
  \Tenor "mesmo que escolhi este" _ _ _ meu _ Rei,
  \Tenor "e em Sião, meu monte santo," o con -- sa -- grei!”
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8" Po -- des
  \Tenor "pedir-me, e em resposta eu te" da -- rei
  \Tenor "por tua herança os povos todos e as" na -- _ ções,
  \Tenor "e há de ser a terra inteira o teu" do -- mí -- _ nio.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "9" “Com ce --
  \Tenor "tro férreo haverás de domi" -- _ _ _ ná -- _ -los,
  \Tenor "e quebrá-los como um vaso de" ar -- gi -- _ la!”
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "10" E a --
  \Tenor "gora, poderosos," _ _ _ en -- ten -- dei;
  \Tenor "soberanos, aprendei es" ta li -- _ ção.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "11" Com te --
  \Tenor "mor servi a Deus, rendei-lhe" _ _ _ gló -- _ ria
  \Tenor "e prestai-lhe homenagem com" res -- pei -- _ to!
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "12cd" Fe -- li --
  \Tenor "zes hão de ser todos a" -- _ _ _ que -- _ les
  \Tenor "que põem sua esperança" no Se -- _ nhor!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose d g \gloriaPatriChantIID
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIID
  >>
}
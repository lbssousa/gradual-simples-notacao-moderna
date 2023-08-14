\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantInchoatioI
  \chantTenorI
  \chantMediatioCumEpenthesisI
  \divisioMaxima
  \break
  \chantTenorI
  \chantTerminatioCumEpenthesisIf
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Se -- nhor __
  \Tenor "meu Deus, a vós elevo a"
  mi -- _ nha al -- _ ma,
  \Tenor "em vós confio: que eu não seja en" -- ver -- go -- nha _ -- do.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "6" Re -- cor --
  \Tenor "dai, Senhor meu Deus,"
  vos -- sa ter -- nu _ -- ra
  \Tenor "e a vossa salvação que" são e -- ter _ -- nas!
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" Ver -- da --
  \Tenor "de e amor são os ca" --
  mi -- nhos do Se _ -- nhor
  \Tenor "para quem guarda sua Aliança e" seus pre -- cei _ -- tos.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "20" De -- fen --
  \Tenor "dei a minha vida e"
  li -- _ ber -- tai _ -- -me;
  \Tenor "em vós confio, que eu não seja en" -- ver -- go -- nha _ -- do!
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "22" Li -- ber --
  \Tenor "tai, ó Senhor"
  Deus, _ a Is -- ra -- el
  \Tenor "de toda a sua an" -- gús -- tia~e a -- fli -- ção!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
  >>
}
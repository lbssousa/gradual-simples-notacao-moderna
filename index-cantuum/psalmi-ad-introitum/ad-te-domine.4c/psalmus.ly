\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantInchoatioIVA
  \bar "!"
  \chantTenorIVA^\markup { \italic flexa }
  \chantFlexaIVA
  \bar "!"
  \chantTenorIVA
  \break
  \chantMediatioCumEpenthesisIVA
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVc
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2b" Não tri -- _ _ _
  \Tenor "unfem sobre mim os"
  i -- ni -- mi -- _ gos!
  \Tenor \VSup "3a" "Não se envergonha quem em vós põe a espe" -- ran -- ça.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "4" Mos -- trai -- _ _ _
  \Tenor "-me, ó Senhor, vos" --
  sos ca -- mi -- _ nhos
  \Tenor "e fazei-me conhecer a vossa es" -- tra -- da!
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "5" Vos -- sa __
  \Tenor "verdade me oriente e me con" -- du -- za,
  \Tenor "porque sois o Deus da"
  mi -- nha sal -- va -- ção;
  \Tenor "em vós espero, ó Senhor, todos os" di -- as.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "7cd" De mim __ _ _ _
  \Tenor "lembrai-vos, porque sois mi" --
  se -- ri -- cór -- _ dia
  \Tenor "e sois bondade sem limites, ó" Se -- nhor!
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "8" O Se -- _ _ _
  \Tenor "nhor é pieda" --
  de e re -- ti -- dão,
  \Tenor "e reconduz ao bom caminho os peca" -- do -- res.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "9" E -- le __ _ _ _
  \Tenor "dirige os humildes"
  na jus -- ti -- _ ça,
  \Tenor "e aos pobres ele ensina o seu ca" -- mi -- nho.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c g, \gloriaPatriChantIVc
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIVc
  >>
}
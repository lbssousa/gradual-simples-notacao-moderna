\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantInchoatioIVA
  \chantTenorIVA
  \chantMediatioIVA
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVc
  \finalis
}

psalmChantCumFlexa = {
  \PsalmSignature
  \chantInchoatioIVA
  \chantTenorIVA
  \bar "!"
  \section
  \sectionLabel \markup { \italic flexa }
  \chantFlexaIVA
  \divisioMinima
  \chantTenorIVA
  \bar "!"
  \chantMediatioCumEpenthesisIVA
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVc
  \finalis
  \fine
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2b" Não tri --
  \Tenor "unfem sobre mim os" _ _ _
  i -- ni -- mi -- _ gos!
  \Tenor \VSup "3a" "Não se envergonha quem em vós põe a espe" -- ran -- ça.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "4" Mos -- trai --
  \Tenor "-me, ó Senhor, vos" -- _ _ _
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
  \VSup "7cd" De mim __
  \Tenor "lembrai-vos, porque sois mi" -- _ _ _
  se -- ri -- cór -- _ dia
  \Tenor "e sois bondade sem limites, ó" Se -- nhor!
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "8" O Se --
  \Tenor "nhor é pieda" -- _ _ _
  de e re -- ti -- dão,
  \Tenor "e reconduz ao bom caminho os peca" -- do -- res.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "9" E -- le __
  \Tenor "dirige os humildes" _ _ _
  na jus -- ti -- _ ça,
  \Tenor "e aos pobres ele ensina o seu ca" -- mi -- nho.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChantCumFlexa
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
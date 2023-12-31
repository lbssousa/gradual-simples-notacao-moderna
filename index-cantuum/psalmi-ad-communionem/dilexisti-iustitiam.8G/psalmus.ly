\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantFlexaVIII #'((syneresis . partial))
  \divisioMinima
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'()
  \finalis
}

psalmChantB = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . total))
  \finalis
}

psalmChantC = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantFlexaVIII #'()
  \divisioMinima
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'()
  \finalis
}

psalmChantD = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'()
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Trans -- bor --
  \Tenor "da um poema do meu cora" -- ção; __
  \Tenor "vou cantar-vos, ó Rei, esta minha can" -- ção; __
  \Tenor "minha língua é qual pena de um á" -- gil es -- cri -- ba.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3" Sois tão
  \Tenor "belo, o mais belo entre os filhos dos"
  \MelismaOff ho -- mens! \MelismaOn
  \Tenor "Vossos lábios espalham a graça, o en" --
  \MelismaOff can -- to, \MelismaOn
  \Tenor "porque Deus, para sempre, vos deu" su -- a bên -- ção.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" Le -- vai
  \Tenor "vossa espada de glória no"
  flan -- co,
  \Tenor "herói valoroso, no vos" -- so~es -- plen -- dor. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "5" Sa -- í
  \Tenor "para a luta no carro de" guer -- ra
  \Tenor "em defesa da fé, da justiça e ver" -- da -- de!
  \Tenor "Vossa mão vos ensine valen" -- tes pro -- e -- zas.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6" Vos -- sas
  \Tenor "flechas agudas abatam os"
  \MelismaOff po -- vos \MelismaOn
  \Tenor "e firam no seu coração o" i -- ni -- mi -- go!
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "7" Vos -- so
  \Tenor "trono, ó Deus, é eterno, é sem" fim; __
  \Tenor "vosso cetro real é sinal" de jus -- ti -- ça.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "9" Vos -- sas
  \Tenor "vestes exalam preciosos per" --
  \MelismaOff fu -- mes. \MelismaOn
  \Tenor "De ebúrneos palácios os sons" vos de -- lei -- tam.
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "17" Dei -- xa --
  \Tenor "reis vossos pais, mas tereis muitos"
  \MelismaOff fi -- lhos; \MelismaOn
  \Tenor "Fareis deles os reis sobera" -- nos da ter -- ra.
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "18" Can -- ta --
  \Tenor "rei vosso nome de idade em i" --
  \MelismaOff da -- de. \MelismaOn
  \Tenor "Para sempre haverão de louvar" -- -vos os po -- vos!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantD
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm"
    \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c a, \gloriaPatriChantVIIIG
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIII
  >>
}
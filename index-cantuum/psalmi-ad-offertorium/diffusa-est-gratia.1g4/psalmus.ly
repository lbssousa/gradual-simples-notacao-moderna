\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantFlexaI #'((syneresis . partial))
  \divisioMinima
  \chantTenorI
  \chantMediatioPrimusI #'((epenthesis . partial))
  \chantMediatioSecundusI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIgFour #'()
  \finalis
}

psalmChantB = {
  \PsalmSignature
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'((epenthesis . partial))
  \chantMediatioSecundusI #'((syneresis . total))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIgFour #'()
  \finalis
}

psalmChantC = {
  \PsalmSignature
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantFlexaI #'()
  \divisioMinima
  \chantTenorI
  \chantMediatioPrimusI #'((epenthesis . total))
  \chantMediatioSecundusI #'()
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIgFour #'()
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Trans -- bor -- \Tenor "da um poema do meu cora" -- ção; __
  \Tenor "vou cantar-vos, ó Rei, esta" mi -- nha can -- ção; __
  \Tenor "minha língua é qual pena de um á" -- gil es -- cri -- ba.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "5" Sa -- í __ \Tenor "para a luta no carro de"
  \MelismaOff guer -- ra \MelismaOn
  \Tenor "em defesa da fé, da justiça" e _ ver --
  \MelismaOff da -- de! \MelismaOn
  \Tenor "Vossa mão vos ensine valen" -- tes pro -- e -- zas.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "7" Vos -- so \Tenor "trono, ó Deus, é e" -- ter -- no,~é sem fim; __
  \Tenor "vosso cetro real é sinal" de jus -- ti -- ça.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "8" Vós a -- \Tenor "mais a justiça e odiais a mal" --  da -- de.
  \Tenor "É por isso que Deus vos un" -- giu com seu
  ó -- leo,
  \Tenor "deu-vos mais alegria que aos vos" -- sos a -- mi -- gos.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
  >>
}
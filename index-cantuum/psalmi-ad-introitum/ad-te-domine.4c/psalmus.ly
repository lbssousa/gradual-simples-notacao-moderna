\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \chantInchoatioIVA #'()
  \chantTenorIVA
  \chantMediatioIVA #'()
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVc #'()
  \finalis
  \Spacer 13
}

psalmChantB = {
  \PsalmSignature
  \chantInchoatioIVA #'()
  \chantTenorIVA
  \chantFlexaIVA #'()
  \divisioMinima
  \chantTenorIVA
  \break
  \chantMediatioIVA #'((syneresis . total))
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVc #'()
  \finalis
  \Spacer 11
}

psalmChantC = {
  \PsalmSignature
  \chantInchoatioIVA #'()
  \chantTenorIVA
  \chantMediatioIVA #'((syneresis . partial))
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVc #'((syneresis . partial))
  \finalis
  \Spacer 16
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2b" Não tri --
  \Tenor "unfem sobre mim os"
  i -- ni --
  \MelismaOff mi -- gos! \MelismaOn
  \Tenor \VSup "3a" "Não se envergonha quem em vós põe a espe" --
  \MelismaOff ran -- ça. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "4" Mos -- trai --
  \Tenor "-me, ó Senhor, vos" --
  sos ca --
  \MelismaOff mi -- nhos \MelismaOn
  \Tenor "e fazei-me conhecer a vossa es" --
  \MelismaOff tra -- da! \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "5" Vos -- sa __
  \Tenor "verdade me oriente e me con" -- du -- za,
  \Tenor "porque sois o Deus da minha"
  sal -- va -- ção; __
  \Tenor "em vós espero, ó Senhor, todos os"
  \MelismaOff di -- as. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "7cd" De mim __
  \Tenor "lembrai-vos, porque sois mi" --
  se -- ri --
  \MelismaOff cór -- dia \MelismaOn
  \Tenor "e sois bondade sem limites, ó Se" -- nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \AltLyrics
  \VSup "8" O Se --
  \Tenor "nhor é piedade e"
  re -- ti -- dão, __
  \Tenor "e reconduz ao bom caminho os peca" --
  \MelismaOff do -- res. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "9" E -- le __
  \Tenor "dirige os humildes"
  na jus --
  \MelismaOff ti -- ça, \MelismaOn
  \Tenor "e aos pobres ele ensina o seu ca" --
  \MelismaOff mi -- nho. \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c g, \gloriaPatriChantIVc
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIVc
  >>
}
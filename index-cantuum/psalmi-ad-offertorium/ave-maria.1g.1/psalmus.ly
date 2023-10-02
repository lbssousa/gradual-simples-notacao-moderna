\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key d \minor
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIg #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Se -- nhor __
  \Tenor "meu Deus, a vós elevo a"
  mi -- nha
  \MelismaOff al -- ma, \MelismaOn
  \Tenor "em vós confio: que eu não seja en" -- ver -- go --
  nha -- do.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "7cd" De mim __
  \Tenor "lembrai-vos, porque sois mi" se -- ri --
  \MelismaOff cór -- dia \MelismaOn
  \Tenor "e sois bondade sem limites," ó Se -- nhor! __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8" O Se --
  \Tenor "nhor é piedade e" re -- ti -- dão, __
  \Tenor "e reconduz ao bom caminho os" pe -- ca --
  do -- res.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "9" E -- le __
  \Tenor "dirige os humildes" na jus --
  \MelismaOff ti -- ça, \MelismaOn
  \Tenor "e aos pobres ele ensina o" seu ca --
  mi -- nho.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "14" O Se --
  \Tenor "nhor se torna íntimo aos" que o
  \MelismaOff te -- mem \MelismaOn
  \Tenor "e lhes dá a conhecer su" -- a~A -- li --
  an -- ça.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
  >>
}
\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantInchoatioIVA #'()
  \chantTenorIVA
  \chantMediatioIVA #'((syneresis . partial))
  \divisioMaxima
  \S \chantTenorIVA
  \chantTerminatioIVA #'((syneresis . partial))
  \finalis

}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Can -- tai __
  \Tenor "ao Senhor Deus um" can -- to
  \MelismaOff no -- vo, \MelismaOn
  \VSup "2a" \Tenor "cantai ao Senhor Deus," ó ter -- ra~in --
  \MelismaOff tei -- ra! \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "2bc" Can -- tai __
  \Tenor "e bendizei seu" san -- to
  \MelismaOff no -- me! \MelismaOn
  "" \Tenor "Dia após dia anunciai su" -- a sal -- va -- ção! __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" Ma -- ni --
  \Tenor "festai a sua glória en" -- tre~as na -- ções, __
  "" \Tenor "e entre os povos do univer" -- so seus pro --
  \MelismaOff dí -- gios! \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "8b" O -- fe --
  \Tenor "recei um sacrifício" nos seus
  \MelismaOff á -- trios, \MelismaOn
  \VSup "9a" \Tenor "adorai-o no esplendor" da san -- ti --
  \MelismaOff da -- de! \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "13cd" Go -- ver --
  \Tenor "nará o mundo todo" com jus --
  \MelismaOff ti -- ça, \MelismaOn
  "" \Tenor "e os povos julgará" com le -- al --
  \MelismaOff da -- de. \MelismaOn
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
  >>
}
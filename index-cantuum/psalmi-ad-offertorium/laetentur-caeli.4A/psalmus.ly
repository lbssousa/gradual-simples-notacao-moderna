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
  \divisioMaxima \break
  \chantTenorIVA
  \chantTerminatioCumEpenthesisIVA
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Can -- tai __
  \Tenor "ao Senhor Deus um" can -- to no vo,
  \Tenor \VSup "2a" "cantai ao Senhor Deus," ó ter -- ra~in -- tei -- _ ra!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "2bc" Can -- tai __
  \Tenor "e bendizei seu" san -- to no -- me!
  \Tenor "Dia após dia anunci" -- ai su -- a sal -- va -- ção!
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" Ma -- ni --
  \Tenor "festai a sua gló" -- ria~en -- tre~as na -- ções,
  \Tenor "e entre os povos do univer" -- so seus pro -- dí -- _ gios!
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "8b" O -- fe --
  \Tenor "recei um sacrifício" nos seus á -- trios,
  \Tenor \VSup "9a" "adorai-o no esplendor" da san -- ti -- da -- _ de!
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "13cd" Go -- ver --
  \Tenor "nará o mundo todo" com jus -- ti -- ça,
  \Tenor "e os povos julgará" com le -- al -- da -- _ de.
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
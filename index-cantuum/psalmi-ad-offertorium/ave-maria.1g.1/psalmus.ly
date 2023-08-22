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
  \chantMediatioPrimusCumEpenthesisI
  \chantMediatioSecundusCumEpenthesisI
  \divisioMaxima \break
  \chantTenorI
  \chantTerminatioIg
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Se -- nhor __
  \Tenor "meu Deus, a vós elevo a"
  mi -- _ nha al -- _ ma,
  \Tenor "em vós confio: que eu não seja en" -- ver -- go -- nha -- do.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "7cd" De mim __
  \Tenor "lembrai-vos, porque sois mi" se -- _ ri -- cór -- _ dia
  \Tenor "e sois bondade sem limi" -- tes, ó Se -- nhor!
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8" O Se --
  \Tenor "nhor é pie" -- da -- de e re -- ti -- dão,
  \Tenor "e reconduz ao bom caminho os" pe -- ca -- do -- res.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "9" E -- le __
  \Tenor "dirige os humildes" na _ jus -- ti -- _ ça,
  \Tenor "e aos pobres ele ensina o" seu ca -- mi -- nho.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "14" O Se --
  \Tenor "nhor se torna íntimo aos" que _ o te -- _ mem
  \Tenor "e lhes dá a conhecer su" -- a~A -- li -- an -- ça.
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
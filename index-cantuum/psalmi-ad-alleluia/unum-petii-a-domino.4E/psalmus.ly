\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'((syneresis . partial))
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'()
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "4ab" Ao Se --
  \Tenor "nhor eu peço apenas" u -- ma
  \MelismaOff coi -- sa, \MelismaOn
  \Tenor "e é só is" -- to que~eu de -- se -- jo:
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "4cd" Ha -- bi --
  \Tenor "tar no santuário" do Se -- nhor __
  \Tenor "por to" -- da~a mi -- nha vi -- da.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4ef" Sa -- bo --
  \Tenor "rear a suavidade" do Se -- nhor __
  \Tenor "e contemplá" -- -lo no seu tem -- plo.
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
  >>
}
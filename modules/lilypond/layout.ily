\version "2.24.1"

\include "./alignment-functions/center-on-vowel.ily"

AntiphonSignature = {
  \time 1/4
}

PsalmSignature = {
  \time 1/4
}

GregorianTranscriptionLayout = \layout {
  ragged-last = ##f
  \context {
    \GregorianTranscriptionStaff
    measureBarType = ""
    \override BarLine.X-extent = #'(-1 . 1)
    \hide Beam
    \hide TupletNumber
    \hide TupletBracket
  }

  %\context {
  %  \GregorianTranscriptionVoice
  %  \consists Stem_engraver
  %}

  \context {
    \GregorianTranscriptionLyrics {
      \override LyricText.X-offset = #center-on-vowel
    }
  }
}
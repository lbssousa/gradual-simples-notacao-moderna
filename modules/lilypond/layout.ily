\version "2.24.1"

AntiphonSignature = {
  \time 1/4
  %\override Lyrics.LyricText.X-extent  = #'(0 . 3)
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
}
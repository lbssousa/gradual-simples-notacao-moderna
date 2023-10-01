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

  \context {
    \GregorianTranscriptionLyrics
    \name GregorianTranscriptionAltLyrics
    \alias GregorianTranscriptionLyrics
    %\override StanzaNumber.font-series = #'medium
    \override LyricText.font-shape = #'italic
    \override LyricText.color = #(x11-color 'grey20)
  }

  \context {
    \StaffGroup
    \accepts GregorianTranscriptionAltLyrics
  }
}
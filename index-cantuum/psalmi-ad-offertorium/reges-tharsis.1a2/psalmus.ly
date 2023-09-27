\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \key d \minor
  \PsalmSignature
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIgTwo #'((syneresis . partial))
  \finalis

}

psalmChantB = {
  \key d \minor
  \PsalmSignature
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantFlexaI #'((syneresis . total))
  \divisioMinima
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'((syneresis . total))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIgTwo #'()
  \finalis

}

psalmChantC = {
  \key d \minor
  \PsalmSignature
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'()
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIgTwo #'()
  \finalis

}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "7" Nos seus __
  \Tenor "dias a justiça" flo -- ri -- rá __
  \Tenor "e grande paz, até que a lua" per -- ca~o bri -- lho! __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "8" De mar __
  \Tenor "a mar estenderá o" seu do --
  \MelismaOff mí -- nio, \MelismaOn
  \Tenor "e desde o rio até os confins de" to -- da~a ter -- ra! __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "9" Seus i --
  \Tenor "nimigos vão curvar-se di" -- an -- te
  \MelismaOff de -- le, \MelismaOn
  \Tenor "vão lamber o pó da terra os" seus ri -- vais. __ _
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "15" Que e --
  \Tenor "le viva e tenha o ouro de Sa" -- bá! __
  \Tenor "Hão de rezar também por ele" sem ces -- sar, __
  \Tenor "bendizê-lo e honrá-lo" ca -- da di -- a. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "16ab" Ha -- ve --
  \Tenor "rá grande fartura" so -- bre~a ter -- ra,
  \Tenor "até mesmo no mais alto" das mon -- ta -- nhas. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}

\markup \vspace #2

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
  >>
}

\markup \vspace #2

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
  >>
}
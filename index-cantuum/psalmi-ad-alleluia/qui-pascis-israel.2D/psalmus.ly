\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-2.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioII
  \chantTenorII
  \chantMediatioII #'()
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'()
  \finalis

}

psalmChantB = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioII
  \chantTenorII
  \chantFlexaII #'()
  \divisioMinima
  \chantTenorII
  \chantMediatioII #'((syneresis . total))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'()
  \finalis

}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2ab" Ó Pas --
  \Tenor "tor de Israel, prestai ou" -- vi -- dos.
  \Tenor "Vós, que a José apascentais qual um" re -- ba -- nho!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "15" Vol -- tai --
  \Tenor "-vos para nós, Deus do uni" -- ver -- so!
  \Tenor "Olhai dos altos céus e obser" -- vai. __
  \Tenor "Visitai a vossa vinha e pro" -- te -- gei- -- a!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
  >>
}
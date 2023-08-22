\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-2.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \chantInchoatioII
  \chantTenorII
  \bar "!"
  \section
  \sectionLabel \markup { \italic flexa }
  \chantFlexaII
  \divisioMinima
  \chantTenorII
  \bar "!"
  \chantMediatioCumEpenthesisII
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID
  \finalis
  \fine
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2ab" Ó Pas --
  \Tenor "tor de Israel, prestai ou" -- _ _ _ vi -- _ dos.
  \Tenor "Vós, que a José apascentais qual um" re -- ba -- nho!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "15" Vol -- tai --
  \Tenor "-vos para nós, Deus do uni" -- ver -- so!
  \Tenor "Olhai dos altos céus e" ob -- ser -- vai.
  \Tenor "Visitai a vossa vinha e pro" -- te -- gei -- -a!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
  >>
}
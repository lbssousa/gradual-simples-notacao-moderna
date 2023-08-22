\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantTenorCIV
  \chantTerminatioCumEpenthesisCI
  \finalis
}

psalmVerseIa = \lyricmode {
  \set stanza = "1a."
  \Tenor \VSup "1ab" "Cantai ao Senhor Deus um can" -- to no -- _ vo.
}

psalmVerseIb = \lyricmode {
  \set stanza = "1b."
  \Tenor "Porque ele fez" pro -- dí -- _ gios.
}

psalmVerseII = \lyricmode {
  \set stanza = "2a."
  \AltLyrics
  \Tenor \VSup "1cd" "Sua mão e o seu braço for" -- te~e san -- _ to.
  _ _ _ _
  \set stanza = "2b."
  \Tenor "Alcançaram-lhe a" vi -- tó -- _ ria.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3a."
  \Tenor \VSup "2" "O Senhor fez conhecer" a sal -- va -- ção.
  _ _ _ _
  \set stanza = "3b."
  \Tenor "E às nações, sua" jus -- ti -- _ ça.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4a."
  \AltLyrics
  \Tenor \VSup "3ab" "Recordou o seu amor sem" -- pre fi -- _ el.
  _ _ _ _
  \set stanza = "4b."
  \Tenor "Pela ca" -- sa de~Is -- ra -- el.
}

psalmVerseV = \lyricmode {
  \set stanza = "5a."
  \Tenor \VSup "3cd" "Os confins do universo con" -- tem -- pla -- _ ram.
  _ _ _ _
  \set stanza = "5b."
  \Tenor "A salvação" do nos -- so Deus.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6a."
  \AltLyrics
  \Tenor \VSup "4" "Aclamai o Senhor Deus, ó ter" -- ra~in -- tei -- _ ra.
  _ _ _ _
  \set stanza = "6b."
  \Tenor "Alegrai" -- -vos e~e -- xul -- tai!
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "C 4"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \section
      \sectionLabel \markup { \italic "Cantor" }
      \psalmChant
      \section
      \sectionLabel \markup { \italic "Grupo ou todos" }
      \chantAlleluiaPrimusCIV
      \break
      \section
      \sectionLabel \markup { \italic "Cantor" }
      \psalmChant
      \section
      \sectionLabel \markup { \italic "Todos" }
      \chantAlleluiaSecundusCIV
      \fine
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseIa
      \lyricsAlleluiaCIV
      \psalmVerseIb
      \lyricsAlleluiaCIV
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}
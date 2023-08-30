\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantTenorC
  \chantTerminatioCOne #'((syneresis . partial))
  \finalis
}

psalmVerseIa = \lyricmode {
  \set stanza = "1a."
  \Tenor \VSup "1ab" "Cantai ao Senhor Deus um can" -- to
  \MelismaOff no -- vo. \MelismaOn
}

psalmVerseIb = \lyricmode {
  \set stanza = "1b."
  \Tenor "Porque ele fez" pro --
  \MelismaOff dí -- gios. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2a."
  \AltLyrics
  \Tenor \VSup "1cd" "Sua mão e o seu braço for" -- te~e
  \MelismaOff san -- to. \MelismaOn
  "" _ _ _
  \set stanza = "2b."
  \Tenor "Alcançaram-lhe a" vi --
  \MelismaOff tó -- ria. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3a."
  \Tenor \VSup "2" "O Senhor fez conhecer a sal" -- va -- ção. __
  "" _ _ _
  \set stanza = "3b."
  \Tenor "E às nações, sua" jus --
  \MelismaOff ti -- ça. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4a."
  \AltLyrics
  \Tenor \VSup "3ab" "Recordou o seu amor sempre" fi -- el. __
  "" _ _ _
  \set stanza = "4b."
  \Tenor "Pela casa de Is" -- ra -- el. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5a."
  \Tenor \VSup "3cd" "Os confins do universo con" -- tem --
  \MelismaOff pla -- ram. \MelismaOn
  "" _ _ _
  \set stanza = "5b."
  \Tenor "A salvação do nos" -- so Deus. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6a."
  \AltLyrics
  \Tenor \VSup "4" "Aclamai o Senhor Deus, ó ter" -- ra~in --
  \MelismaOff tei -- ra. \MelismaOn
  "" _ _ _
  \set stanza = "6b."
  \Tenor "Alegrai-vos e e" -- xul -- tai! __
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
      \chantAlleluiaPrimusCFour
      \break
      \section
      \sectionLabel \markup { \italic "Cantor" }
      \psalmChant
      \section
      \sectionLabel \markup { \italic "Todos" }
      \chantAlleluiaSecundusCFour
      \fine
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseIa
      \lyricsAlleluiaCFour
      \psalmVerseIb
      \lyricsAlleluiaCFour
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}
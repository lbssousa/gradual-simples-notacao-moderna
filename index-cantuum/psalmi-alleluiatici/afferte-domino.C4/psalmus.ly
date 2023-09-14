\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \chantTenorC
  \chantTerminatioCOne #'((syneresis . partial))
  \finalis
}

psalmChantB = {
  \PsalmSignature
  \chantTenorC
  \chantTerminatioCOne #'((syneresis . partial)
                          (epenthesis . partial))
  \finalis
}

psalmVerseIa = \lyricmode {
  \set stanza = "1a."
  \Tenor \VSup "1" "Filhos de Deus, tributai ao" Se -- nhor.
}

psalmVerseIb = \lyricmode {
  \set stanza = "1b."
  \Tenor "Tributai-lhe a glória e o" po -- der! __
}

psalmVerseII = \lyricmode {
  \set stanza = "2a."
  \AltLyrics
  \Tenor \VSup "2" "Dai-lhe a glória devida ao" seu
  \MelismaOff no -- me. \MelismaOn
  "" _ _ _
  \set stanza = "2b."
  \Tenor "Adorai-o com santo or" -- na --
  \MelismaOff men -- _ to! \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3a."
  \Tenor \VSup "3" "Eis a voz do Senhor so" -- bre~as
  \MelismaOff á -- guas. \MelismaOn
  "" _ _ _
  \set stanza = "3b."
  \Tenor "Sua voz sobre as águas" i --
  \MelismaOff men -- _ sas! \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4a."
  \AltLyrics
  \Tenor \VSup "4" "Eis a voz do Senhor com poder! ’ Eis a voz do Senhor ma" -- jes --
  \MelismaOff to -- sa. \MelismaOn
  "" _ _ _
  \set stanza = "4b."
  \Tenor "Sua voz no trovão re" -- bo --
  \MelismaOff an -- _ do! \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5a."
  \Tenor \VSup "5" "Eis que a voz do Senhor que" -- bra~os
  \MelismaOff ce -- dros. \MelismaOn
  "" _ _ _
  \set stanza = "5b."
  \Tenor "O Senhor quebra os cedros" do
  \MelismaOff Lí -- ba -- no. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6a."
  \AltLyrics
  \Tenor \VSup "10" "É o Senhor que domina os" di --
  \MelismaOff lú -- vios. \MelismaOn
  "" _ _ _
  \set stanza = "6b."
  \Tenor "O Senhor reinará pa" -- ra
  \MelismaOff sem -- _ pre. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7a."
  \AltLyrics
  \Tenor \VSup "11" "Que o Senhor fortaleça o" seu
  \MelismaOff po -- vo. \MelismaOn
  "" _ _ _
  \set stanza = "7b."
  \Tenor "E abençoe com paz o" seu
  \MelismaOff po -- _ vo! \MelismaOn
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
      \psalmChantA
      \section
      \sectionLabel \markup { \italic "Grupo ou todos" }
      \chantAlleluiaPrimusCFour
      \break
      \section
      \sectionLabel \markup { \italic "Cantor" }
      \psalmChantB
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
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}
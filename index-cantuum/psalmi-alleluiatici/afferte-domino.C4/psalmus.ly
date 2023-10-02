\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/colors.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \S \chantTenorC
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
  \VSup "1" \Tenor "Filhos de Deus, tributai ao" Se -- nhor.
}

psalmVerseIb = \lyricmode {
  \set stanza = "1b."
  \Tenor "Tributai-lhe a glória e o" po -- der! __
}

psalmVerseII = \lyricmode {
  \set stanza = "2a."
  \VSup "2" \Tenor "Dai-lhe a glória devida ao" seu
  \MelismaOff no -- me. \MelismaOn
  "" _ _ _
  \set stanza = "2b."
  \Tenor "Adorai-o com santo or" -- na --
  \MelismaOff men -- _ to! \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3a."
  \VSup "3" \Tenor "Eis a voz do Senhor so" -- bre~as
  \MelismaOff á -- guas. \MelismaOn
  "" _ _ _
  \set stanza = "3b."
  \Tenor "Sua voz sobre as águas" i --
  \MelismaOff men -- _ sas! \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4a."
  \VSup "4" \Tenor "Eis a voz do Senhor com poder! ’ Eis a voz do Senhor ma" -- jes --
  \MelismaOff to -- sa. \MelismaOn
  "" _ _ _
  \set stanza = "4b."
  \Tenor "Sua voz no trovão re" -- bo --
  \MelismaOff an -- _ do! \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5a."
  \VSup "5" \Tenor "Eis que a voz do Senhor que" -- bra~os
  \MelismaOff ce -- dros. \MelismaOn
  "" _ _ _
  \set stanza = "5b."
  \Tenor "O Senhor quebra os cedros" do
  \MelismaOff Lí -- ba -- no. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6a."
  \VSup "10" \Tenor "É o Senhor que domina os" di --
  \MelismaOff lú -- vios. \MelismaOn
  "" _ _ _
  \set stanza = "6b."
  \Tenor "O Senhor reinará pa" -- ra
  \MelismaOff sem -- _ pre. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7a."
  \VSup "11" \Tenor "Que o Senhor fortaleça o" seu
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
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Cantor"
        }
      }
      \psalmChantA
      \section
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Grupo ou todos"
        }
      }
      \chantAlleluiaPrimusCFour

      \section
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Cantor"
        }
      }
      \psalmChantB
      \section
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Todos"
        }
      }
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
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}
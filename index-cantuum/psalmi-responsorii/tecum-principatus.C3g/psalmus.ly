\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/colors.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c' {
  \C f f f g a g f d f g \CC g f
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  Co -- mo~o~or -- va -- lho,~an -- tes da~au -- ro -- ra,~eu te ge -- rei. __
}

psalmOddVersesChant = {
  \PsalmSignature
  \S \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima
  \chantTenorC
  \chantTerminatioCTwog #'((syneresis . partial))
  \finalis
}

psalmEvenVersesChant = {
  \PsalmSignature
  \key d \minor
  \S \chantInchoatioCThree #'((epenthesis . partial))
  \chantTenorPrimusCThree
  \chantMediatioCThree #'((syneresis . partial))
  \divisioMaxima
  \chantTenorSecundusCThree
  \chantTerminatioCThreeg #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "3" \Tenor "Tu és príncipe desde o dia em que nas" -- \MelismaOff ces -- te; \MelismaOn
  \Tenor "na glória e esplendor da santi" -- da -- de. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "1ab" Pa -- la -- \Tenor "vra do Senhor ao meu Se" -- nhor: __ _
  \Tenor "“Assenta-te ao lado meu" di -- rei -- to”. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "2ab" \Tenor "O Senhor estenderá desde Si" -- ão __
  \Tenor "vosso cetro de poder, pois Ele" diz: __ _
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "2b" “Do -- mi -- \Tenor "na com vi" -- gor __ _
  \Tenor "teus i" -- ni -- mi -- gos”. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "4a" \Tenor "Jurou o Se" -- nhor __
  \Tenor "e manterá sua pa" -- la -- vra: __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "4bc" "" “Tu __ \Tenor "és sacerdote eterna" -- men -- te,
  \Tenor "segundo a ordem do rei Melqui" -- se -- dec!” __ _
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "5" \Tenor "À vossa destra está o Senhor, Ele vos" diz: __
  \Tenor "“No dia da ira esmagarás os reis da"
  ter -- ra!” __
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "7" "" “Be -- \Tenor "berás água corrente no ca" -- mi -- nho,
  \Tenor "por isso seguirás de fron" -- te~er -- gui -- da!” __
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "C 3 g"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \section
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Versos ímpares"
        }
      }
      \psalmOddVersesChant
      \chantResponsorium
      \fine
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsResponsorium
    }
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \section
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Versos pares"
        }
      }
      \psalmEvenVersesChant
      \chantResponsorium
      \fine
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseII
      \lyricsResponsorium
    }
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}
\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c' {
  \C f f f f g a g \CC f d \C f g g f
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  Co -- mo~o~or -- va -- lho,~an -- tes da~au -- ro -- ra, __ eu te ge -- rei.
}

psalmOddVersesChant = {
  \PsalmSignature
  \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima \break
  \chantTenorC
  \chantTerminatioCTwog #'((syneresis . partial))
  \finalis \break
}

psalmEvenVersesChant = {
  \PsalmSignature
  \key d \minor
  \chantInchoatioCThree #'((epenthesis . partial))
  \chantTenorPrimusCThree
  \chantMediatioCThree #'((syneresis . partial))
  \divisioMaxima \break
  \chantTenorSecundusCThree
  \chantTerminatioCThreeg #'((syneresis . partial))
  \finalis \break
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "3" "Tu és príncipe desde o dia em que nas" -- \MelismaOff ces -- te; \MelismaOn
  \Tenor "na glória e esplendor da santi" -- da -- de.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "1ab" Pa -- la -- \Tenor "vra do Senhor ao meu Se" -- nhor: __ _
  \Tenor "“Assenta-te ao lado meu" di -- rei -- to”. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \AltLyrics
  \Tenor \VSup "2ab" "O Senhor estenderá desde Si" -- ão __
  \Tenor "vosso cetro de poder, pois Ele" diz: __ _
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "2b" “Do -- mi -- \Tenor "na com vi" -- gor __ _
  \Tenor "teus i" -- ni -- mi -- gos”. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "4a" "Jurou o Se" -- nhor __
  \Tenor "e manterá sua pa" -- la -- vra: __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  _ \VSup "4bc" “Tu \Tenor "és sacerdote eterna" -- men -- te,
  \Tenor "segundo a ordem do rei Melqui" -- se -- dec!” __ _
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \AltLyrics
  \Tenor \VSup "5" "À vossa destra está o Senhor, Ele vos" diz: __
  \Tenor "“No dia da ira esmagarás os reis da"
  ter -- ra!” __
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  _ \VSup "7" “Be -- \Tenor "berás água corrente no ca" -- mi -- nho,
  \Tenor "por isso seguirás de fron" -- te~er -- gui -- da!” __
}

\GregorianTranscriptionLayout

\header {
  meter = "C 3 g"
}

\score {
  \header {
    piece = "Versos ímpares"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmOddVersesChant
      \chantResponsorium
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsResponsorium
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}

\markup \vspace #1

\score {
  \header {
    piece = "Versos pares"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmEvenVersesChant
      \chantResponsorium
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseII
      \lyricsResponsorium
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}
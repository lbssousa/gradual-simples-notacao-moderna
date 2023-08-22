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
  \chantMediatioC
  \divisioMaxima \break
  \chantTenorC
  \chantTerminatioCumEpenthesisCII
  \finalis \break
}

psalmEvenVersesChant = {
  \PsalmSignature
  \key d \minor
  \chantInchoatioCIII
  \chantTenorPrimusCIII
  \chantMediatioCIII
  \divisioMaxima
  \chantTenorSecundusCIII
  \chantTerminatioCumEpenthesisCIIIg
  \finalis \break
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "3" "Tu és príncipe desde o dia em que nas" -- ces -- te;
  \Tenor "na glória e esplendor da santi" -- _ da -- de. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "1ab" Pa -- la -- \Tenor "vra do Senhor ao meu" Se -- nhor:
  \Tenor "“Assenta-te ao lado meu" di -- _ rei -- to”. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \AltLyrics
  \Tenor \VSup "2ab" "O Senhor estenderá desde" Si -- ão
  \Tenor "vosso cetro de poder, pois" E -- le diz: __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "2b" “Do -- mi -- \Tenor "na com" vi -- gor
  \Tenor "teus i" -- ni -- _ mi -- gos”. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "4a" "Jurou o" Se -- nhor
  \Tenor "e manterá sua pa" -- _ la -- vra: __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  _ \VSup "4bc" “Tu \Tenor "és sacerdote eterna" -- men -- te,
  \Tenor "segundo a ordem do rei" Mel -- qui -- se -- dec!” __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \AltLyrics
  \Tenor \VSup "5" "À vossa destra está o Senhor, Ele" vos diz:
  \Tenor "“No dia da ira esmagarás os reis da" _ ter -- ra!” __
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  _ \VSup "7" “Be -- \Tenor "berás água corrente no ca" -- mi -- nho,
  \Tenor "por isso seguirás de fron" -- te~er -- _ gui -- da!” __
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
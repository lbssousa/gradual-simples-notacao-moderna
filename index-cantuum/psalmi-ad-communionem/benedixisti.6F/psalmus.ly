\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-6.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \slurDotted
  \chantInchoatioVI
  \slurSolid
  \bar "!"
  \chantTenorVI
  \chantMediatioCumEpenthesisVI
  \divisioMaxima \break
  \chantTenorVI
  \chantTerminatioCumEpenthesisVIF
  \finalis
}

psalmVerseIa = \lyricmode {
  \set stanza = "1."
  \set ignoreMelismata = ##t
  \VSup "9" Que -- ro ou --
  \unset ignoreMelismata
  \Tenor "vir o que o Senhor i" -- rá fa -- _ lar:
  \Tenor "é a paz que ele" vai a -- nun -- ci -- \Tenor "ar. ↵"
}

psalmVerseIb = \lyricmode {
  _ _
  \Tenor "A paz para o seu povo e seus" a -- mi -- _ gos,
  \Tenor "para os que voltam ao Se" -- nhor seu __ co -- ra -- ção.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "10" Es -- tá __
  \Tenor "perto a salvação dos que" o te -- _ mem,
  \Tenor "e a glória habitará em" nos -- sa __ ter -- _ ra.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "11" A ver --
  \Tenor "dade e o amor" se~en -- con -- tra -- rão,
  \Tenor "a justiça e a" paz se~a -- bra -- ça -- rão.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "12" Da ter --
  \Tenor "ra brotará a fide" -- li -- da -- _ de,
  \Tenor "e a justiça olha" -- rá dos __ al -- tos céus.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "13" O Se --
  \Tenor "nhor nos dará tudo o" que é _ bom,
  \Tenor "e a nossa terra nos dará su" -- as co -- lhei -- _ tas.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "14" A jus --
  \Tenor "tiça andará na su" -- a fren -- _ te
  \Tenor "e a salvação há de se" -- guir os __ pas -- sos seus.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIa
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIb
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm"
    \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \gloriaPatriChantVIF
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIF
  >>
}
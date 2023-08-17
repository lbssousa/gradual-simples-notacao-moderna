\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantInchoatioIVA
  \bar "!"
  \chantTenorIVA
  \chantMediatioCumEpenthesisIVA
  \divisioMaxima \break
  \chantTenorIVA
  \chantTerminatioCumEpenthesisIVA
  \finalis
}

psalmChantAlt = {
  \PsalmSignature
  \chantInchoatioIVA
  \bar "!"
  \chantTenorIVA
  \chantMediatioIVA
  \divisioMaxima \break
  \chantTenorIVA
  \chantTerminatioIVA
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Os céus __ \Tenor "proclamam a gló" -- ria do Se -- _ nhor,
  \Tenor "e o firmamento, a" o -- bra de su -- as mãos.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "3" O di --
  \Tenor "a ao dia transmite es" -- ta men -- sa -- _ gem,
  \Tenor "a noite à noite publica" es -- ta no -- tí -- _ cia.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" Não são __
  \Tenor "discursos nem frases" ou pa -- la -- _ vras,
  \Tenor "nem são vozes que pos" -- sam ser ou -- vi -- _ das.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "5" Seu som __
  \Tenor "ressoa e se espalha em" to -- da~a ter -- _ ra,
  \Tenor "chega aos confins do uni" -- ver -- so a su -- a voz.
}

psalmVerseVa = \lyricmode {
  \set stanza = "5."
  \VSup "6" Ar -- mou __
  \Tenor "no alto uma" ten -- da pa -- ra~o sol;
  \Tenor "ele desponta no céu" e se le -- van -- _ \Tenor "ta ↵"
}

psalmVerseVb = \lyricmode {
  _ _
  \Tenor "como um esposo do" quar -- to nup -- ci -- al,
  \Tenor "como um herói exultan" -- te~em seu ca -- mi -- _ nho.
}

psalmVerseVIa = \lyricmode {
  \set stanza = "6."
  \VSup "7" \markup { \concat { "D" \undertie "e u" "m" } } ex -- \Tenor "tremo do céu" põe -- -se~a cor -- rer,
  \Tenor "e vai traçando o seu ras" -- tro lu -- mi -- no -- \Tenor "so, ↵"
}

psalmVerseVIb = \lyricmode {
  _ _
  \Tenor "até que possa chegar ao" ou -- tro~ex -- tre -- mo,
  \Tenor "e nada pode fu" -- gir ao seu ca -- lor.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChant
    }

    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVa
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVb
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChantAlt
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIa
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIb
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c g, \gloriaPatriChantIVA
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIVA
  >>
}
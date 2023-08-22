\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantAltInchoatioIVA
  \chantTenorIVA
  \chantMediatioCumEpenthesisIVA
  \divisioMaxima \break
  \chantTenorIVA
  \chantTerminatioCumEpenthesisIVA
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

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6ab" Ar -- mou __
  \Tenor "no alto uma" ten -- da pa -- ra~o sol;
  \Tenor "ele desponta no céu" e se le -- van -- _ ta.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \set ignoreMelismata = ##t
  \VSup "6cd" Co -- mo um
  \unset ignoreMelismata
  \Tenor "esposo do" quar -- to nup -- ci -- al,
  \Tenor "como um herói exultan" -- te~em seu ca -- mi -- _ nho.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "7ab" \markup { \concat { "D" \undertie "e u" "m" } } ex -- \Tenor "tremo do céu" põe -- -se~a cor -- _ rer,
  \Tenor "e vai traçando o seu ras" -- tro lu -- mi -- no -- _ so.
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "7ab" A -- té __
  \Tenor "que possa chegar ao" ou -- tro~ex -- tre -- _ mo,
  \Tenor "e nada pode fu" -- gir ao seu ca -- _ lor.
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c g, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
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
\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantInchoatioIVA #'((dieresis . partial))
  \chantTenorIVA
  \chantMediatioIVA #'((syneresis . partial))
  \divisioMaxima \break
  \chantTenorIVA
  \chantTerminatioIVA #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Os céus __ \Tenor "proclamam a glória" do Se -- nhor, __
  \Tenor "e o firmamento, a obra" de su -- as mãos. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "3" O di --
  \Tenor "a ao dia transmite es" -- ta men --
  \MelismaOff sa -- gem, \MelismaOn
  \Tenor "a noite à noite publica" es -- ta no --
  \MelismaOff tí -- cia. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" Não são __
  \Tenor "discursos nem frases" ou pa --
  \MelismaOff la -- vras, \MelismaOn
  \Tenor "nem são vozes que pos" -- sam ser ou --
  \MelismaOff vi -- das. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "5" Seu som __
  \Tenor "ressoa e se espalha em" to -- da~a
  \MelismaOff ter -- ra, \MelismaOn
  \Tenor "chega aos confins do univer" -- so~a su -- a voz. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6ab" Ar -- mou __
  \Tenor "no alto uma tenda" pa -- ra~o sol; __
  \Tenor "ele desponta no céu" e se le --
  \MelismaOff van -- ta. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \MelismaOff
  \VSup "6cd" Co --
  \MelismaOff mo um \MelismaOn
  \MelismaOn
  \Tenor "esposo do quarto" nup -- ci -- al, __
  \Tenor "como um herói exultan" -- te~em seu ca --
  \MelismaOff mi -- nho. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "7ab" \markup { \concat { "D" \undertie "e u" "m" } } ex -- \Tenor "tremo do céu põe" -se~a cor -- rer, __
  \Tenor "e vai traçando o seu ras" -- tro lu -- mi --
  \MelismaOff no -- _ so. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "7ab" A -- té __
  \Tenor "que possa chegar ao" ou -- tro~ex --
  \MelismaOff tre -- mo, \MelismaOn
  \Tenor "e nada pode fugir" ao seu ca -- lor. __
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
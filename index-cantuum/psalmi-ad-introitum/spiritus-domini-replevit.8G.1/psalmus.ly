\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Os céus \Tenor "proclamam a glória do Se" -- nhor, __
  \Tenor "e o firmamento, a obra de" su -- as mãos. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3" O di --
  \Tenor "a ao dia transmite esta men" --
  \MelismaOff sa -- gem, \MelismaOn
  \Tenor "a noite à noite publica es" -- ta no --
  \MelismaOff tí -- cia. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" Não são
  \Tenor "discursos nem frases ou pa" --
  \MelismaOff la -- vras, \MelismaOn
  \Tenor "nem são vozes que possam" ser ou --
  \MelismaOff vi -- das. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "5" Seu som
  \Tenor "ressoa e se espalha em toda a"
  \MelismaOff ter -- ra, \MelismaOn
  \Tenor "chega aos confins do universo a" su -- a voz. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6ab" Ar -- mou
  \Tenor "no alto uma tenda para o" sol; __
  \Tenor "ele desponta no céu e" se le --
  \MelismaOff van -- ta. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "6cd" Co -- mo~um
  \Tenor "esposo do quarto nupci" -- al, __
  \Tenor "como um herói exultante em" seu ca --
  \MelismaOff mi -- nho. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "7ab" De~um ex -- \Tenor "tremo do céu põe-se a cor" -- rer, __
  \Tenor "e vai traçando o seu rastro" lu -- mi --
  \MelismaOff no -- so. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "7cd" A -- té
  \Tenor "que possa chegar ao outro ex" --
  \MelismaOff tre -- mo, \MelismaOn
  \Tenor "e nada pode fugir ao" seu ca -- lor. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}

\markup \vspace #2

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c a, \gloriaPatriChantVIIIG
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIII
  >>
}
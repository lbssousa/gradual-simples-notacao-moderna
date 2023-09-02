\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . total))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . total))
  \finalis
  \Spacer 26
}

psalmChantB = {
  \PsalmSignature
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantFlexaVIII #'((epenthesis . partial))
  \divisioMinima
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \break
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
  \Spacer 14
}

psalmChantC = {
  \PsalmSignature
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
  \Spacer 26
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Es -- pe --
  \Tenor "rando, esperei no Se" -- nhor, __
  \Tenor "e inclinando-se, ouviu" meu cla -- mor. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "7cd" Não pe --
  \Tenor "distes ofertas nem" ví -- ti -- mas,
  \Tenor "holocaustos por nossos pe" --
  \MelismaOff ca -- dos. \MelismaOn
  \Tenor \VSup "8a" "E então eu vos disse:" “Eis que
  \MelismaOff ve -- nho!” \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \AltLyrics
  \VSup "8b" So -- bre
  \Tenor "mim está escrito no" li -- _ vro:
  \Tenor \VSup "9" "“Com prazer faço a vossa von" --
  \MelismaOff ta -- de. \MelismaOn
  \Tenor "Guardo em meu coração" vos -- sa lei!” __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "17ab" Mas se~a --
  \Tenor "legre e em vós reju" --
  \MelismaOff bi -- le \MelismaOn
  \Tenor "todo ser que vos bus" -- ca, Se -- nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \AltLyrics
  \VSup "17cd" Di -- gam
  \Tenor "sempre: “É grande o Se" -- nhor!” __
  \Tenor "os que buscam em vós" seu au --
  \MelismaOff xí -- lio. \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
  >>
}

\markup \vspace #2

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  >>
}

\markup \vspace #2

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
  >>
}
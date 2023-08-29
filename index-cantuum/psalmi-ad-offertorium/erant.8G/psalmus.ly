\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \bar "!"
  \section
  \sectionLabel \markup { \italic flexa }
  \chantFlexaVIII #'((epenthesis . partial))
  \divisioMinima
  \chantTenorVIII
  \bar "!"
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Es -- pe --
  \Tenor "rando, esperei no Se" _ _ _ _ -- nhor, __
  \Tenor "e inclinando-se, ouviu" meu cla -- mor. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "7cd" Não pe --
  \Tenor "distes ofertas nem" ví -- ti -- mas,
  \Tenor "holocaustos por nossos pe" --
  \MelismaOff ca -- dos. \MelismaOn
  \Tenor \VSup "8a" "E então eu vos disse:" “Eis que
  \MelismaOff ve -- nho!” \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8b" So -- bre
  \Tenor "mim está escrito no" li -- _ vro:
  \Tenor \VSup "9" "“Com prazer faço a vossa von" --
  \MelismaOff ta -- de. \MelismaOn
  \Tenor "Guardo em meu coração" vos -- sa lei!” __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "17ab" Mas se~a --
  \Tenor "legre e em vós reju" -- _ _ _ _
  \MelismaOff bi -- le \MelismaOn
  \Tenor "todo ser que vos bus" -- ca, Se -- nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "17cd" Di -- gam
  \Tenor "sempre: “É grande o Se" _ _ _ _ -- nhor!” __
  \Tenor "os que buscam em vós" seu au --
  \MelismaOff xí -- lio. \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
  >>
}
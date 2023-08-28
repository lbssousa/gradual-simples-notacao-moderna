\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-7.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \chantInchoatioVII #'()
  \chantTenorVII
  \chantMediatioPrimusVII #'()
  \chantMediatioSecundusVII #'((syneresis . partial))
  \divisioMaxima \break
  \chantTenorVII
  \chantTerminatioPrimusVII #'()
  \chantTerminatioSecundusVIIa #'((syneresis . partial)
                                  (epenthesis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1ab" Can -- tai __
  \Tenor "ao Senhor Deus um" can -- to
  \MelismaOff no -- vo, \MelismaOn
  \Tenor "porque ele" fez pro -- dí -- gi -- os! __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "4" A -- cla --
  \Tenor "mai o Senhor Deus, ó" ter -- ra~in --
  \MelismaOff tei -- ra, \MelismaOn
  \Tenor "alegrai-vos e " e -- xul -- tai! __ _ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "5" Can -- tai __
  \Tenor "salmos ao Senhor ao" som da
  \MelismaOff har -- pa \MelismaOn
  \Tenor "e da cíta" -- ra su -- a -- _ ve! __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "6" A -- cla --
  \Tenor "mai, com os clarins e" as trom --
  \MelismaOff be -- tas, \MelismaOn
  \Tenor "ao Senhor, o" nos -- so Rei! __ _ _
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "7" A -- plau --
  \Tenor "da o mar com todo ser que" ne -- le
  \MelismaOff vi -- ve, \MelismaOn
  \Tenor "o mundo inteiro e" to -- da gen -- _ te! __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "8" As __ mon --
  \Tenor "tanhas e os rios" ba -- tam
  \MelismaOff pal -- mas \MelismaOn
  \Tenor "e exultem de" a -- le -- gri -- _ a. __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "9ab" Na __ pre --
  \Tenor "sença do Senhor, pois" e -- le vem, __
  \Tenor "vem julgar a" ter -- ra~in -- tei -- _ ra. __
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "9bc" Jul -- ga --
  \Tenor "rá o universo" com jus --
  \MelismaOff ti -- ça \MelismaOn
  \Tenor "e as nações com" e -- qui -- da -- _ de. __
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
      \transpose c g, \gloriaPatriChantVIIa
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVII
  >>
}
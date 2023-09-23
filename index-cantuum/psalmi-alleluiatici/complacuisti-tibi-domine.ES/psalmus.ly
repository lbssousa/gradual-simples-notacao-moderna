\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantTenorEStar
  \chantMediatioEStar #'((syneresis . partial))
  \divisioMaxima
  \chantTenorEStar
  \chantTerminatioEStar #'((syneresis . partial)
                           (epenthesis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" \Tenor "Favorecestes, ó Senhor, a vossa"
  \MelismaOff ter -- ra, \MelismaOn
  \Tenor "libertastes os cativos de" Ja -- có. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "3" \Tenor "Perdoastes o pecado ao vosso"
  \MelismaOff po -- vo, \MelismaOn
  \Tenor "encobristes toda a falta co" -- me --
  \MelismaOff ti -- _ da. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" \Tenor "Retirastes a ameaça que fi" --
  \MelismaOff zes -- tes, \MelismaOn
  \Tenor "acalmastes o furor de vos" -- sa __
  \MelismaOff i -- _ ra. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "5" \Tenor "Renovai-nos, nosso Deus e Salva" -- dor, __
  \Tenor "esquecei a vossa mágoa con" -- tra __ nós! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6" \Tenor "Ficareis eternamente irri" --
  \MelismaOff ta -- do? \MelismaOn
  \Tenor "Guardareis a vossa ira pe" -- los __
  \MelismaOff sé -- cu -- los? \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "7" \Tenor "Não vireis restituir a nossa"
  \MelismaOff vi -- da, \MelismaOn
  \Tenor "para que em vós se rejubile o vos" -- so __
  \MelismaOff po -- _ vo? \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "8" \Tenor "Mostrai-nos, ó Senhor, vossa bon" --
  \MelismaOff da -- de, \MelismaOn
  \Tenor "concedei-nos também vossa sal" -- va -- ção. __
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "E *"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantAlleluiaEStar
      \finalis
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaEStar
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}
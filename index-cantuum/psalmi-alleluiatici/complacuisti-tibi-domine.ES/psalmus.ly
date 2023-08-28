\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantTenorEStar
  \chantMediatioEStar #'((syneresis . partial))
  \divisioMaxima
  \chantTenorEStar
  \break
  \chantTerminatioEStar #'((syneresis . partial)
                           (epenthesis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "2" "Favorecestes, ó Senhor, a vossa"
  \MelismaOff ter -- ra, \MelismaOn
  \Tenor "libertastes os cativos de" Ja -- có. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "3" "Perdoastes o pecado ao vosso"
  \MelismaOff po -- vo, \MelismaOn
  \Tenor "encobristes toda a falta co" -- me --
  \MelismaOff ti -- _ da. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "4" "Retirastes a ameaça que fi" --
  \MelismaOff zes -- tes, \MelismaOn
  \Tenor "acalmastes o furor de vos" -- sa __
  \MelismaOff i -- _ ra. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "5" "Renovai-nos, nosso Deus e Salva" -- dor, __
  \Tenor "esquecei a vossa mágoa con" -- tra __ nós! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "6" "Ficareis eternamente irri" --
  \MelismaOff ta -- do? \MelismaOn
  \Tenor "Guardareis a vossa ira pe" -- los __
  \MelismaOff sé -- cu -- los? \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "7" "Não vireis restituir a nossa"
  \MelismaOff vi -- da, \MelismaOn
  \Tenor "para que em vós se rejubile o vos" -- so __
  \MelismaOff po -- _ vo? \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "8" "Mostrai-nos, ó Senhor, vossa bon" --
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
\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantTenorES
  \chantMediatioCumEpenthesisES
  \divisioMaxima
  \chantTenorES
  \chantTerminatioCumEpenthesisES
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "2" "Favorecestes, ó Senhor, a vossa" ter -- _ ra,
  \Tenor "libertastes os cativos de" Ja -- có. _ _
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "3" "Perdoastes o pecado ao vosso" po -- _ vo, \Tenor "encobristes toda a falta co" -- me -- ti -- _ da.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "4" "Retirastes a ameaça que fi" -- zes -- _ tes,
  \Tenor "acalmastes o furor de vos" -- sa __ i -- _ ra.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "5" "Renovai-nos, nosso Deus e" Sal -- va -- dor,
  \Tenor "esquecei a vossa mágoa con" -- tra __ nós! _ _
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "6" "Ficareis eternamente irri" -- ta -- _ do?
  \Tenor "Guardareis a vossa ira pe" -- los __ sé -- cu -- los?
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "7" "Não vireis restituir a nossa" vi -- _ da,
  \Tenor "para que em vós se rejubile o vos" -- so __ po -- _ vo?
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "8" "Mostrai-nos, ó Senhor, vossa bon" -- da -- _ de,
  \Tenor "concedei-nos também vossa sal" -- va -- ção. _ _

}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "E *"
  }
  \new GregorianTranscriptionStaff <<
    {
      \new GregorianTranscriptionVoice = "psalm" {
        \psalmChant
      }

      \new GregorianTranscriptionVoice = "alleluia" {
        \chantAlleluiaES \finalis
      }
    }

    \new GregorianTranscriptionLyrics \lyricsto "alleluia" \lyricsAlleluiaES

    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}
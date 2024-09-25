\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \S g' \chantTenorEStar
  \chantMediatioEStar #'((syneresis . partial))
  \divisioMaxima
  \chantTenorEStar
  \chantTenorEStar
  \chantTerminatioEStar #'((syneresis . partial)
                           (epenthesis . partial))
  \finalis
}

psalmOrganRight = {
  \PsalmSignature
  \key c \major
  s4 \rightTenorEStar
  \divisioMaxima
  \rightTenorTerminatioPrimusEStar ~
  \rightTenorTerminatioSecundusEStar
  \rightTerminatioEStar
  \finalis
}

psalmOrganLeft = {
  \PsalmSignature
  \clef bass
  \key c \major
  s4 \leftTenorEStar
  \divisioMaxima
  \leftTenorTerminatioPrimusEStar
  \leftTenorTerminatioSecundusEStar ~
  \leftTerminatioEStar
  \finalis
}

psalmOrganPedal = \relative c {
  \PsalmSignature
  s4 \pedalTenorEStar
  \pedalTenorTerminatioPrimusEStar
  \pedalTenorTerminatioSecundusEStar
  \pedalTerminatioEStar
}

psalmChords = \chordmode {
  s4 c2*3/2 g2*1/2:7/b g2*3/2/d a2*3/2:m
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" \Tenor "Favorecestes, ó Senhor, a vossa"
  \MelismaOff \B ter -- \Mediatio ra, \MelismaOn
  \Tenor "libertastes os ca" -- \Tenor "tivos de" \I Ja -- \B có. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3" \Tenor "Perdoastes o pecado ao vosso"
  \MelismaOff \B po -- \Mediatio vo, \MelismaOn
  \Tenor "encobristes toda a" \Tenor "falta co" -- \I me --
  \MelismaOff \B ti -- _ da. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" \Tenor "Retirastes a ameaça que fi" --
  \MelismaOff \B zes -- \Mediatio tes, \MelismaOn
  \Tenor "acalmastes o fu" -- \Tenor "ror de vos" -- \I sa __
  \MelismaOff \B i -- _ ra. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "5" \Tenor "Renovai-nos, nosso Deus e Salva" -- \BeginBold \Mediatio dor, __ \EndBold
  \Tenor "esquecei a vossa" \Tenor "mágoa con" -- \I tra __ \B nós! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6" \Tenor "Ficareis eternamente irri" --
  \MelismaOff \B ta -- \Mediatio do? \MelismaOn
  \Tenor "Guardareis a vossa" \Tenor "ira pe" -- \I los __
  \MelismaOff \B sé -- cu -- los? \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "7" \Tenor "Não vireis restituir a nossa"
  \MelismaOff \B vi -- \Mediatio da, \MelismaOn
  \Tenor "para que em vós se reju" -- \Tenor "bile o vos" -- \I so __
  \MelismaOff \B po -- _ vo? \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "8" \Tenor "Mostrai-nos, ó Senhor, vossa bon" --
  \MelismaOff \B da -- \Mediatio de, \MelismaOn
  \Tenor "concedei-nos também" \Tenor "vossa sal" -- \I va -- \B ção. __
}

\GregorianTranscriptionLayout

\header {
  arranger = "Harmonização: Theo Flury, Gennaro M. Becchimanzi"
}

chantPart = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "psalm" {
    \psalmChant
    \chantAlleluiaEStar
  }

  \new GregorianTranscriptionLyrics \lyricsto "psalm" {
    \psalmVerseI
    \lyricsAlleluiaEStar
  }
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
>>

organPart = \new PianoStaff <<
  \new GregorianTranscriptionStaff = "right" <<
    %\new GregorianTranscriptionVoice { \voiceOne \psalmChant }
    \new GregorianTranscriptionVoice {
      \voiceTwo
      \psalmOrganRight
      \rightAlleluiaEStar
    }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
    \new GregorianTranscriptionVoice {
      \voiceOne
      \psalmOrganLeft
      \leftAlleluiaEStar
    }
    \new GregorianTranscriptionVoice {
      \voiceTwo
      \psalmOrganPedal
      \pedalAlleluiaEStar
    }
  >>
>>

chordsPart = \new ChordNames {
  \psalmChords
  \chordsAlleluiaEStar
}

\score {
  \header {
    piece = "E *"
  }

  <<
    \chordsPart
    \chantPart
    \organPart
  >>
}
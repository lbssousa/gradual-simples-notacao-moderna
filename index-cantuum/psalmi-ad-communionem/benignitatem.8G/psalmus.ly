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
  \chantMediatioVIII #'((epenthesis . partial)
                        (syneresis . partial)) \noBreak \S
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((epenthesis . partial)
                           (syneresis . partial))
  \finalis
  \Spacer 35
}

psalmOrganRight = {
  \PsalmSignature
  s4 \rightInchoatioVIII ~
  \rightTenorVIII ( s4
  \rightTenorAltVIII ) (
  \rightTerminatioAccentusVIIIG ) (
  \rightTerminatioPostAccentusVIIIG )
}

psalmOrganLeft = {
  \clef bass
  \key c \major
  s4 \leftInchoatioVIII ~
  \leftTenorVIII ( s4
  \divisioMaxima
  \leftTenorAltVIII ) (
  \leftTerminatioAccentusVIIIG ) (
  \leftTerminatioPostAccentusVIIIG )
  \finalis
  \Spacer 35
}

psalmOrganPedal = {
  s4 \pedalInchoatioVIII ~
  \pedalTenorVIII ( s4
  \pedalTenorAltVIII ) (
  \pedalTerminatioAccentusVIIIG ) (
  \pedalTerminatioPostAccentusVIIIG )
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioVIII
  \chordsTenorVIII s4
  \chordsTenorAltVIII
  \chordsTerminatioAccentusVIIIG
  \chordsTerminatioPostAccentusVIIIG
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "9ab" \Inchoatio Que -- ro~ou --
  \Tenor "vir o que o Senhor irá fa" -- \B lar: __  \MediatioMark
  \Tenor "é a paz que ele vai a" -- \TerminatioVIII nun -- ci -- ar. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "9cd" \Inchoatio A paz
  \Tenor "para o seu povo e seus a" --
  \MelismaOff \B mi -- _ gos, \MelismaOn \MediatioMark
  \Tenor "para os que voltam ao Senhor seu" \TerminatioVIII co -- ra -- ção. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" \Inchoatio Es -- tá
  \Tenor "perto a salvação dos que o"
  \MelismaOff \B te -- _ mem, \MelismaOn \MediatioMark
  \Tenor "e a glória habitará em"
  \MelismaOff
  \TerminatioVIII nos -- sa ter -- _ ra.
  \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "11" \Inchoatio A ver --
  \Tenor "dade e o amor se encontra" -- \B rão, __ \MediatioMark
  \Tenor "a justiça e a paz se a" -- \TerminatioVIII bra -- ça -- rão. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "12" \Inchoatio Da ter --
  \Tenor "ra brotará a fideli" --
  \MelismaOff \B da -- _ de, \MelismaOn \MediatioMark
  \Tenor "e a justiça olhará dos" \TerminatioVIII al -- tos céus. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "14" \Inchoatio A jus --
  \Tenor "tiça andará na sua"
  \MelismaOff \B fren -- _ te \MelismaOn \MediatioMark
  \Tenor "e a salvação há de seguir os " \TerminatioVIII pas -- sos seus. __
}

chantPart =  \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "psalm" {
    \psalmChant
  }

  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
>>

organPart = \new PianoStaff <<
  \new GregorianTranscriptionStaff = "right" <<
    \new GregorianTranscriptionVoice { \voiceOne \psalmChant }
    \new GregorianTranscriptionVoice { \voiceTwo \psalmOrganRight }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
    \new GregorianTranscriptionVoice { \voiceOne \psalmOrganLeft }
    \new GregorianTranscriptionVoice { \voiceTwo \psalmOrganPedal }
  >>
>>

\GregorianTranscriptionLayout

\header {
  arranger = "Harmonização: Theo Flury, Gennaro M. Becchimanzi"
}

\score {
  \transpose c a, <<
    \chordsPart
    \chantPart
    \organPart
  >>
}

\score {
  \transpose c a, <<
    \gloriaPatriChordsPartVIIIG
    \gloriaPatriChantPartVIIIG
    \gloriaPatriOrganPartVIIIG
  >>
}
\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

MySpacer = \Spacer 18

psalmChant = {
  \PsalmSignature
  \key c \major
  \S g' \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
  \MySpacer
}

psalmOrganRight = {
  \PsalmSignature
  s4 \rightInchoatioVIII ~
  \rightTenorVIII
  \divisioMaxima
  \rightTenorTerminatioVIII
  \rightTerminatioAccentusVIIIG ~
  \rightTerminatioPostAccentusVIIIG
  \finalis
  \MySpacer
}

psalmOrganLeft = {
  \clef bass
  \key c \major
  s4 \leftInchoatioVIII ~
  \leftTenorVIII ~
  \divisioMaxima
  \leftTenorTerminatioVIII ~
  \leftTerminatioAccentusVIIIG
  \leftTerminatioPostAccentusVIIIG
  \finalis
  \MySpacer
}

psalmOrganPedal = {
  s4 \pedalInchoatioVIII ~
  \pedalTenorVIII
  \pedalTenorTerminatioVIII
  \pedalTerminatioAccentusVIIIG ~
  \pedalTerminatioPostAccentusVIIIG
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioVIII
  \chordsTenorVIII
  \chordsTenorTerminatioVIII
  \chordsTerminatioAccentusVIIIG
  \chordsTerminatioPostAccentusVIIIG
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "9ab" \Inchoatio Que -- ro~ou --
  \Tenor "vir o que o Senhor irá fa" -- \BeginBold \Mediatio lar: __ \EndBold
  \Tenor "é a paz que ele vai a" -- \TerminatioVIII nun -- ci -- ar. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "9cd" \Inchoatio A paz
  \Tenor "para o seu povo e seus a" --
  \MelismaOff \B mi -- \Mediatio gos, \MelismaOn
  \Tenor "para os que voltam ao Senhor seu" \TerminatioVIII co -- ra -- ção. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" \Inchoatio Es -- tá
  \Tenor "perto a salvação dos que o"
  \MelismaOff \B te -- \Mediatio mem, \MelismaOn
  \Tenor "e a glória habitará em"
  \MelismaOff
  \TerminatioVIII nos -- sa ter -- ra.
  \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "11" \Inchoatio A ver --
  \Tenor "dade e o amor se encontra" -- \BeginBold \Mediatio rão, __ \EndBold
  \Tenor "a justiça e a paz se a" -- \TerminatioVIII bra -- ça -- rão. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "12" \Inchoatio Da ter --
  \Tenor "ra brotará a fideli" --
  \MelismaOff \B da -- \Mediatio de, \MelismaOn
  \Tenor "e a justiça olhará dos" \TerminatioVIII al -- tos céus. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "14" \Inchoatio A jus --
  \Tenor "tiça andará na sua"
  \MelismaOff \B fren -- \Mediatio te \MelismaOn
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
    %\new GregorianTranscriptionVoice { \voiceOne \psalmChant }
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
  \transpose c bes, <<
    \chordsPart
    \chantPart
    \organPart
  >>
}

\score {
  \transpose c bes, <<
    \gloriaPatriChordsPartVIIIG
    \gloriaPatriChantPartVIIIG
    \gloriaPatriOrganPartVIIIG
  >>
}
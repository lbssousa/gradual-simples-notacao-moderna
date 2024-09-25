\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

MySpacer = \Spacer 23

global = {
  \PsalmSignature
  \key d \major
}

psalmChant = {
  \global
  \S b' \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \chantTenorIV
  \chantTenorTerminatioSecundusIV
  \chantTerminatioIVE #'((syneresis . total))
  \finalis
  \MySpacer
}

psalmOrganRight = {
  \global
  s4 \rightInchoatioIV ~
  \rightTenorIV ~
  \rightMediatioIV
  \divisioMaxima
  \rightTenorTerminatioPrimusIV
  \rightTenorTerminatioSecundusIV
  \rightTerminatioAccentusIVE
  \rightTerminatioPostAccentusIVE
  \finalis
  \MySpacer
}

psalmOrganLeft = {
  \global
  \clef bass
  s4 \leftInchoatioIV ~
  \leftTenorIV (
  \leftMediatioIV )
  \divisioMaxima
  \leftTenorTerminatioPrimusIV ~
  \leftTenorTerminatioSecundusIV
  \leftTerminatioAccentusIVE
  \leftTerminatioPostAccentusIVE
  \finalis
  \MySpacer
}

psalmOrganPedal = {
  s4 \pedalInchoatioIV ~
  \pedalTenorIV (
  \pedalMediatioIV )
  \pedalTenorTerminatioPrimusIV ~
  \pedalTenorTerminatioSecundusIV
  \pedalTerminatioAccentusIVE
  \pedalTerminatioPostAccentusIVE
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioIV
  \chordsTenorIV
  \chordsMediatioIV s4
  \chordsTenorTerminatioPrimusIV
  \chordsTenorTerminatioSecundusIV
  \chordsTerminatioAccentusIVE
  \chordsTerminatioPostAccentusIVE
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" \Inchoatio Fa -- vo --
  \Tenor "recestes, ó Senhor, a"
  \MediatioIV vos -- sa ter -- \Mediatio ra,
  \Tenor "libertastes os ca" -- ti --
  \BeginItalic vos de Ja -- \EndItalic
  \BeginBold có. __ \EndBold
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "8" \Inchoatio Mos -- trai- --
  \Tenor "nos, ó Senhor, vos" --
  \MediatioIV sa bon -- da -- \Mediatio de,
  \Tenor "concedei-nos também" vos --
  \BeginItalic sa sal -- va -- \EndItalic
  \BeginBold ção! __ \EndBold
}

chantPart = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "psalm" {
    \psalmChant
  }

  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
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
  \transpose d c <<
    \chordsPart
    \chantPart
    \organPart
  >>
}
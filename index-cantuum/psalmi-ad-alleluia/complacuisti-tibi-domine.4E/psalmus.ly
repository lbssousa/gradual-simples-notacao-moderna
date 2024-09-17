\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'((epenthesis . partial)) \noBreak \S
  \divisioMaxima
  \chantTenorIV
  \chantTenorAltSecundusIV
  \chantTerminatioIVE #'((epenthesis . partial)
                         (syneresis . total))
  \finalis
  \Spacer 23
}

psalmOrganRight = {
  \PsalmSignature
  \S \rightInchoatioIV ~
  \rightTenorIV ~
  \rightMediatioIV ( \S
  \rightTenorAltPrimusIV ) (
  \rightTenorAltSecundusIV ) (
  \rightTerminatioAccentusIVE ) (
  \rightTerminatioPostAccentusIVE )
}

psalmOrganLeft = {
  \clef bass
  \S \leftInchoatioIV ~
  \leftTenorIV (
  \leftMediatioIV ) ( \S
  \divisioMaxima
  \leftTenorAltPrimusIV ~
  \leftTenorAltSecundusIV ) (
  \leftTerminatioAccentusIVE ) (
  \leftTerminatioPostAccentusIVE )
  \finalis
  \Spacer 23
}

psalmOrganPedal = {
  \S \pedalInchoatioIV ~
  \pedalTenorIV (
  \pedalMediatioIV ) ( \S
  \pedalTenorAltPrimusIV ~
  \pedalTenorAltSecundusIV ) (
  \pedalTerminatioAccentusIVE ) (
  \pedalTerminatioPostAccentusIVE )
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioIV
  \chordsTenorIV
  \chordsMediatioIV s4
  \chordsTenorAltPrimusIV
  \chordsTenorAltSecundusIV
  \chordsTerminatioAccentusIVE
  \chordsTerminatioPostAccentusIVE
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" \Inchoatio Fa -- vo --
  \Tenor "recestes, ó Senhor, a"
  \MediatioIV vos -- sa ter -- _ ra, \MediatioMark
  \Tenor "libertastes os ca" -- ti --
  \BeginItalic vos de Ja -- \EndItalic _
  \BeginBold có. __ \EndBold
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "8" \Inchoatio Mos -- trai- --
  \Tenor "nos, ó Senhor, vos" --
  \MediatioIV sa bon -- da -- _ de, \MediatioMark
  \Tenor "concedei-nos também" vos --
  \BeginItalic sa sal -- va -- \EndItalic _
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
  <<
    \chordsPart
    \chantPart
    \organPart
  >>
}
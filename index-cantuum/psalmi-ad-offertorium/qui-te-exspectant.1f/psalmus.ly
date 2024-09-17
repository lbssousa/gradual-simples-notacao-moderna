\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key d \minor
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'((epenthesis . partial))
  \chantMediatioSecundusI #'((epenthesis . partial)
                             (syneresis . partial)) \S \break
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIf #'((epenthesis . partial)
                        (syneresis . partial))
  \finalis
  \Spacer 13
}

psalmOrganRight = {
  \PsalmSignature
  s4 \rightInchoatioI (
  \rightTenorI ) ( s4
  \rightTenorAltI ) (
  \rightTerminatioAccentusIf ) (
  \rightTerminatioPostAccentusPrimusIf ) (
  \rightTerminatioPostAccentusSecundusIf )
}

psalmOrganLeft = {
  \clef bass
  \key d \minor
  s4 \leftInchoatioI (
  \leftTenorI ) ( s4
  \divisioMaxima
  \leftTenorAltI ) (
  \leftTerminatioAccentusIf ) (
  \leftTerminatioPostAccentusPrimusIf ) (
  \leftTerminatioPostAccentusSecundusIf )
  \finalis
  \Spacer 13
}

psalmOrganPedal = {
  s4 \pedalInchoatioI (
  \pedalTenorI ) ( s4
  \pedalTenorAltI ) (
  \pedalTerminatioAccentusIf ) (
  \pedalTerminatioPostAccentusPrimusIf ) (
  \pedalTerminatioPostAccentusSecundusIf )
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioI
  \chordsTenorI s4
  \chordsTenorAltI
  \chordsTerminatioAccentusIf
  \chordsTerminatioPostAccentusPrimusIf
  \chordsTerminatioPostAccentusSecundusIf
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" \Inchoatio Se -- nhor __
  \Tenor "meu Deus, a vós elevo a" \B mi -- _ nha
  \MelismaOff \B al -- _ ma, \MelismaOn \MediatioMark
  \Tenor "em vós confio: que eu não seja en" -- \TerminatioI ver -- go -- nha -- _ do. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "6" \Inchoatio Re -- cor --
  \Tenor "dai, Senhor meu Deus," \B vos -- sa ter --
  \MelismaOff \B nu -- _ ra \MelismaOn \MediatioMark
  \Tenor "e a vossa salvação que" \TerminatioI são e --
  ter -- _ nas! __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" \Inchoatio Ver -- da --
  \Tenor "de e amor são os caminhos" \B do _ Se -- \B nhor __ \MediatioMark
  \Tenor "para quem guarda sua Aliança e" \TerminatioI seus pre --
  cei -- _ tos. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "20" \Inchoatio De -- fen --
  \Tenor "dei a minha vida e" \B li -- _ ber --
  \MelismaOff \B tai- -- _ me; \MelismaOn \MediatioMark
  \Tenor "em vós confio, que eu não seja en" -- \TerminatioI ver -- go --
  nha -- _ do! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "22" \Inchoatio Li -- ber --
  \Tenor "tai, ó Senhor Deus, a"
   \B Is -- _ ra -- \B el __ \MediatioMark
  \Tenor "de toda a sua angústia" \TerminatioI e~a -- fli -- ção! __ _ _
}

chantPart = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "psalm" {
    \psalmChant
  }

  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
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
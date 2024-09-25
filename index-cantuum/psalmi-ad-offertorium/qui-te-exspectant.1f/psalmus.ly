\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

MySpacer = \Spacer 13

psalmChant = {
  \PsalmSignature
  \key d \minor
  \S f' \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'((epenthesis . partial))
  \chantMediatioSecundusI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIf #'((syneresis . partial))
  \finalis
  \MySpacer
}

psalmOrganRight = {
  \PsalmSignature
  \key d \minor
  s4 \rightInchoatioI
  \rightTenorI
  \divisioMaxima
  \rightTenorTerminatioI
  \rightTerminatioAccentusIf
  \rightTerminatioPostAccentusPrimusIf~
  \rightTerminatioPostAccentusSecundusIf
  \finalis
  \MySpacer
}

psalmOrganLeft = {
  \clef bass
  \key d \minor
  s4 \leftInchoatioI~
  \leftTenorI~
  \divisioMaxima
  \leftTenorTerminatioI
  \leftTerminatioAccentusIf~
  \leftTerminatioPostAccentusPrimusIf
  \leftTerminatioPostAccentusSecundusIf
  \finalis
  \MySpacer
}

psalmOrganPedal = {
  s4 \pedalInchoatioI~
  \pedalTenorI
  \pedalTenorTerminatioI~
  \pedalTerminatioAccentusIf~
  \pedalTerminatioPostAccentusPrimusIf~
  \pedalTerminatioPostAccentusSecundusIf
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioI
  \chordsTenorI
  \chordsTenorTerminatioI
  \chordsTerminatioAccentusIf
  \chordsTerminatioPostAccentusPrimusIf
  \chordsTerminatioPostAccentusSecundusIf
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" \Inchoatio Se -- nhor __
  \Tenor "meu Deus, a vós elevo a" \B mi -- _ nha
  \MelismaOff \B al -- \Mediatio ma, \MelismaOn
  \Tenor "em vós confio: que eu não seja en" -- \TerminatioI ver -- go -- nha -- do. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "6" \Inchoatio Re -- cor --
  \Tenor "dai, Senhor meu Deus," \B vos -- sa ter --
  \MelismaOff \B nu -- \Mediatio ra \MelismaOn
  \Tenor "e a vossa salvação que" \TerminatioI são e --
  ter -- nas! __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" \Inchoatio Ver -- da --
  \Tenor "de e amor são os caminhos" \B do _ Se -- \BeginBold \Mediatio nhor __ \EndBold
  \Tenor "para quem guarda sua Aliança e" \TerminatioI seus pre --
  cei -- tos. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "20" \Inchoatio De -- fen --
  \Tenor "dei a minha vida e" \B li -- _ ber --
  \MelismaOff \B tai- -- \Mediatio me; \MelismaOn
  \Tenor "em vós confio, que eu não seja en" -- \TerminatioI ver -- go --
  nha -- do! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "22" \Inchoatio Li -- ber --
  \Tenor "tai, ó Senhor Deus, a"
   \B Is -- _ ra -- \BeginBold \Mediatio el __ \EndBold
  \Tenor "de toda a sua angústia e" \TerminatioI a -- fli -- ção! __ _ _
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
  \transpose f g <<
    \chordsPart
    \chantPart
    \organPart
  >>
}
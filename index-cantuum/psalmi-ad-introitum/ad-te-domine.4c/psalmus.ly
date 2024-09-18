\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

MySpacer = \Spacer 8

psalmChant = {
  \PsalmSignature
  \S a'
  \chantInchoatioIVA #'()
  \bar "!"
  \chantTenorIVA
  \chantFlexaIVA #'()
  \divisioMinima
  \bar "!"
  \chantTenorIVA
  \chantMediatioIVA #'((syneresis . partial))
  \divisioMaxima
  \S a' \chantTenorIVA
  \chantTerminatioIVc #'((syneresis . partial))
  \finalis
  \MySpacer
}

psalmOrganRight = {
  \PsalmSignature
  s4 \rightInchoatioIVA
  \rightTenorIVA
  \rightFlexaIVA #'()
  \rightTenorIVA
  \rightMediatioIVA #'()
  \divisioMaxima
  s4 \rightTenorTerminatioIVA
  \rightTerminatioIVc s4
  \finalis
  \MySpacer
}

psalmOrganLeft = {
  \clef bass
  s4 \leftInchoatioIVA
  \leftTenorIVA
  \leftFlexaIVA #'()
  \leftTenorIVA
  \leftMediatioIVA #'()
  \divisioMaxima
  s4 \leftTenorTerminatioIVA (
  \leftTerminatioIVc ) s4
  \finalis
  \MySpacer
}

psalmOrganPedal = {
  s4 \pedalInchoatioIVA
  \pedalTenorIVA
  \pedalFlexaIVA #'()
  \pedalTenorIVA
  \pedalMediatioIVA #'()
  s4 \pedalTenorTerminatioIVc (
  \pedalTerminatioIVc ) s4
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioIVA
  \chordsTenorIVA
  \chordsFlexaIVA #'()
  \chordsTenorIVA
  \chordsMediatioIVA #'()
  s4 \chordsTenorTerminatioIVA
  \chordsTerminatioIVc s4
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2b" \Inchoatio Não tri --
  _ _ _
  \Tenor "unfem sobre mim os"
  \MelismaOff
  \MediatioIV i -- ni -- mi -- \Mediatio gos!
  \MelismaOn
  \VSup "3a" \Tenor "Não se envergonha quem em vós põe a espe" --
  \MelismaOff
  \B ran -- ça.
  \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "4" \Inchoatio Mos -- trai- --
  _ _ _
  \Tenor "me, ó Senhor, vos" --
  \MelismaOff
  \MediatioIV sos ca -- mi -- \Mediatio nhos
  \MelismaOn
  "" \Tenor "e fazei-me conhecer a vossa es" --
  \MelismaOff
  \B tra -- da!
  \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "5" \Inchoatio Vos -- sa __
  \Tenor "verdade me oriente e me con" --
  \B du -- \Flexa za,
  \Tenor "porque sois o Deus da minha"
  \BeginItalic sal -- va -- \EndItalic \BeginBold \Mediatio ção; __ \EndBold
  "" \Tenor "em vós espero, ó Senhor, todos os"
  \MelismaOff
  \B di -- as.
  \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "7cd" \Inchoatio De mim __
  _ _ _
  \Tenor "lembrai-vos, porque sois mi" --
  \MelismaOff
  \MediatioIV se -- ri -- cór -- \Mediatio dia
  \MelismaOn
  "" \Tenor "e sois bondade sem limites, ó Se" --
  \B nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "8" \Inchoatio O Se --
  _ _ _
  \Tenor "nhor é piedade e"
  \BeginItalic re -- ti -- \EndItalic \BeginBold \Mediatio dão, __ \EndBold
  "" \Tenor "e reconduz ao bom caminho os peca" --
  \MelismaOff
  \B do -- res.
  \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "9" \Inchoatio E -- le __
  _ _ _
  \Tenor "dirige os humildes"
  \MelismaOff
  \MediatioIV na jus -- ti -- \Mediatio ça,
  \MelismaOn
  "" \Tenor "e aos pobres ele ensina o seu ca" --
  \MelismaOff
  \B mi -- nho.
  \MelismaOn
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
  <<
    \chordsPart
    \chantPart
    \organPart
  >>
}

\score {
  <<
    \gloriaPatriChordsPartIVc
    \gloriaPatriChantPartIVc
    \gloriaPatriOrganPartIVc
  >>
}
\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantInchoatioIVASlot #'()
  \bar "!"
  \chantTenorIVA
  \chantFlexaIVA #'((slot . yes))
  \divisioMinima
  \bar "!"
  \chantTenorIVA
  \chantMediatioIVA #'((syneresis . partial)
                       (slot . yes))
  \divisioMaxima
  \chantTenorIVASlot
  \chantTerminatioIVc #'((syneresis . partial))
  \finalis
}

psalmOrganRight = {
  \PsalmSignature
  \phrasingSlurDashed
  \rightInchoatioIVASlot #'() \(
  \rightTenorFlexaIVA
  \rightFlexaIVA #'()
  \rightTenorMediatioIVA \)
  \divisioMaxima
  \rightTenorTerminatioIVASlot
  \rightTerminatioIVc #'((syneresis . partial))
  \finalis
}

psalmOrganLeft = {
  \clef bass
  \phrasingSlurDashed
  \leftInchoatioIVASlot #'() \(
  \leftTenorFlexaIVA
  \leftFlexaIVA #'()
  \leftTenorMediatioIVA \)
  \divisioMaxima
  \leftTenorTerminatioIVASlot
  \leftTerminatioIVc #'((syneresis . partial))
  \finalis
}

psalmOrganPedal = {
  \phrasingSlurDashed
  \pedalInchoatioIVASlot #'() \(
  \pedalTenorFlexaIVA
  \pedalFlexaIVA #'()
  \pedalTenorMediatioIVA \)
  \pedalTenorTerminatioIVcSlot
  \pedalTerminatioIVc #'((syneresis . partial))
}

chordsPart = \new ChordNames {
  \set chordChanges = ##t
  \chordsInchoatioIVASlot #'()
  \chordsTenorFlexaIVA
  \chordsFlexaIVA #'()
  \chordsTenorMediatioIVA
  \chordsTenorTerminatioIVASlot
  \chordsTerminatioIVc #'((syneresis . partial))
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2b" \Inchoatio Não tri --
  _ _ _ _
  \Tenor "unfem sobre mim os"
  \MelismaOff
  \MediatioIV i -- ni -- mi -- gos! \MediatioMark
  \MelismaOn
  \VSup "3a" \Tenor "Não se envergonha quem em vós põe a espe" --
  \MelismaOff
  \B ran -- ça.
  \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "4" \Inchoatio Mos -- trai- --
  _ _ _ _
  \Tenor "me, ó Senhor, vos" --
  \MelismaOff
  \MediatioIV sos ca -- mi -- nhos \MediatioMark
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
  \B du -- za, \FlexaMark
  \Tenor "porque sois o Deus da minha"
  \BeginItalic sal -- va -- \EndItalic \BeginBold ção; __ \EndBold \MediatioMark
  "" \Tenor "em vós espero, ó Senhor, todos os"
  \MelismaOff
  \B di -- as.
  \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "7cd" \Inchoatio De mim __
  _ _ _ _
  \Tenor "lembrai-vos, porque sois mi" --
  \MelismaOff
  \MediatioIV se -- ri -- cór -- dia \MediatioMark
  \MelismaOn
  "" \Tenor "e sois bondade sem limites, ó Se" --
  \B nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "8" \Inchoatio O Se --
  _ _ _ _
  \Tenor "nhor é piedade e"
  \BeginItalic re -- ti -- \EndItalic \BeginBold dão, __ \EndBold \MediatioMark
  "" \Tenor "e reconduz ao bom caminho os peca" --
  \MelismaOff
  \B do -- res.
  \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "9" \Inchoatio E -- le __
  _ _ _ _
  \Tenor "dirige os humildes"
  \MelismaOff
  \MediatioIV na jus -- ti -- ça, \MediatioMark
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
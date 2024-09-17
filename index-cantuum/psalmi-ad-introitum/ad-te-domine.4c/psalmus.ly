\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantInchoatioIVA #'()
  \bar "!"
  \chantTenorIVA
  \chantFlexaIVA #'((epenthesis . partial)) \noBreak \S
  \divisioMinima
  \bar "!"
  \chantTenorIVA
  \chantMediatioIVA #'((epenthesis . partial)
                       (syneresis . partial)) \noBreak \S
  \divisioMaxima
  \S \chantTenorIVA
  \chantTerminatioIVc #'((epenthesis . partial)
                         (syneresis . partial))
  \finalis
}

psalmOrganRight = {
  \PsalmSignature
  s4 \rightInchoatioIVA ~
  \rightTenorIVA (
  \rightFlexaIVA ) (
  \rightTenorIVA ) ~
  \rightMediatioIVA ( s4
  s4 \rightTenorAltIVA ) (
  \rightTerminatioIVc )
}

psalmOrganLeft = {
  \clef bass
  s4 \leftInchoatioIVA ~
  \leftTenorIVA (
  \leftFlexaIVA ) (
  \leftTenorIVA ) (
  \leftMediatioIVA ) ( s4
  \divisioMaxima
  s4 \leftTenorAltIVA ) (
  \leftTerminatioIVc )
  \finalis
}

psalmOrganPedal = {
  s4 \pedalInchoatioIVA ~
  \pedalTenorIVA ~
  \pedalFlexaIVA ~
  \pedalTenorIVA ~
  \pedalMediatioIVA ( s4
  s4 \pedalTenorAltIVA ) (
  \pedalTerminatioIVc )
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioIVA
  \chordsTenorIVA
  \chordsFlexaIVA
  \chordsTenorIVA
  \chordsMediatioIVA s4
  s4 \chordsTenorAltIVA
  \chordsTerminatioIVc
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2b" \Inchoatio Não tri -- _ _ _ _ _
  \Tenor "unfem sobre mim os"
  \MelismaOff
  \MediatioIV i -- ni -- mi -- _ gos! \MediatioMark
  \MelismaOn
  \VSup "3a" \Tenor "Não se envergonha quem em vós põe a espe" --
  \MelismaOff
  \B ran -- _ ça.
  \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "4" \Inchoatio Mos -- trai- -- _ _ _ _ _
  \Tenor "me, ó Senhor, vos" --
  \MelismaOff
  \MediatioIV sos ca -- mi -- _ nhos \MediatioMark
  \MelismaOn
  "" \Tenor "e fazei-me conhecer a vossa es" --
  \MelismaOff
  \B tra -- _ da!
  \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "5" \Inchoatio Vos -- sa __
  \Tenor "verdade me oriente e me con" --
  \B du -- _ za, \FlexaMark
  \Tenor "porque sois o Deus da minha"
  \MediatioIV sal -- va -- ção; __ \MediatioMark
  "" \Tenor "em vós espero, ó Senhor, todos os"
  \MelismaOff
  \B di -- _ as.
  \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "7cd" \Inchoatio De mim __ -- _ _ _ _ _
  \Tenor "lembrai-vos, porque sois mi" --
  \MelismaOff
  \MediatioIV se -- ri -- cór -- _ dia \MediatioMark
  \MelismaOn
  "" \Tenor "e sois bondade sem limites, ó Se" --
  \B nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "8" \Inchoatio O Se -- _ _ _ _ _
  \Tenor "nhor é piedade e"
  \MediatioIV re -- ti -- dão, __ \MediatioMark
  "" \Tenor "e reconduz ao bom caminho os peca" --
  \MelismaOff
  \B do -- _ res.
  \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "9" \Inchoatio E -- le __ -- _ _ _ _ _
  \Tenor "dirige os humildes"
  \MelismaOff
  \MediatioIV na jus -- ti -- _ ça, \MediatioMark
  \MelismaOn
  "" \Tenor "e aos pobres ele ensina o seu ca" --
  \MelismaOff
  \B mi -- _ nho.
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
  \transpose c g, <<
    \chordsPart
    \chantPart
    \organPart
  >>
}

\score {
  \transpose c g, <<
    \gloriaPatriChordsPartIVc
    \gloriaPatriChantPartIVc
    \gloriaPatriOrganPartIVc
  >>
}
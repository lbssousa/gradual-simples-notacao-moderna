\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4A.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantInchoatioIVA #'((dieresis . partial))
  \chantTenorIVA
  \chantMediatioIVA #'((epenthesis . partial)
                       (syneresis . partial)) \noBreak \S
  \divisioMaxima
  \chantTenorIVA
  \chantTerminatioIVA #'((epenthesis . partial)
                         (syneresis . partial))
  \finalis
  \Spacer 17
}

psalmOrganRight = {
  \PsalmSignature
  s4 \rightInchoatioIVA ~
  \rightTenorIVA (
  \rightTenorTerminatioIVA ) (
  \rightTerminatioIVA )
}

psalmOrganLeft = {
  \clef bass
  s4 \leftInchoatioIVA ~
  \leftTenorIVA (
  \divisioMaxima
  \leftTenorTerminatioIVA ) (
  \leftTerminatioIVA )
  \finalis
  \Spacer 17
}

psalmOrganPedal = {
  s4 \pedalInchoatioIVA ~
  \pedalTenorIVA (
  \pedalTenorTerminatioIVA ) (
  \pedalTerminatioIVA )
}

chordsPart = \new ChordNames {
  s4 \chordsInchoatioIVA
  \chordsTenorIVA
  \chordsTenorTerminatioIVA
  \chordsTerminatioIVA
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" \Inchoatio Os céus __ \Tenor "proclamam a glória" \I do \I Se -- \B nhor, __ \MediatioMark
  \Tenor "e o firmamento, a obra" \TerminatioIVA de su -- as mãos. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3" \Inchoatio O di --
  \Tenor "a ao dia transmite es" -- \I ta \I men --
  \MelismaOff \B sa -- _ gem, \MelismaOn \MediatioMark
  \Tenor "a noite à noite publica"
  \MelismaOff
  \TerminatioIVA es -- ta no -- tí -- _ cia.
  \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" \Inchoatio Não são __
  \Tenor "discursos nem frases" \I ou \I pa --
  \MelismaOff la -- _ vras, \MelismaOn \MediatioMark
  \Tenor "nem são vozes que pos" --
  \MelismaOff
  \TerminatioIVA sam ser ou -- vi -- _ das.
  \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "5" \Inchoatio Seu som __
  \Tenor "ressoa e se espalha em" \BeginItalic to -- da~a \EndItalic
  \MelismaOff \B ter -- _ ra, \MelismaOn \MediatioMark
  \Tenor "chega aos confins do univer" -- \TerminatioIVA so~a su -- a voz. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6ab" \Inchoatio Ar -- mou __
  \Tenor "no alto uma tenda" \BeginItalic pa -- ra~o \EndItalic \B sol; __ \MediatioMark
  \Tenor "ele desponta no céu"
  \MelismaOff
  \TerminatioIVA e se le -- van -- _ ta.
  \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \MelismaOff
  \VSup "6cd" \Inchoatio Co --
  \MelismaOff mo um \MelismaOn
  \MelismaOn
  \Tenor "esposo do quarto" \I nup -- \I ci -- \B al, __ \MediatioMark
  \Tenor "como um herói exultan" --
  \MelismaOff
  \TerminatioIVA te~em seu ca -- mi -- _ nho.
  \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "7ab" \Inchoatio De~um ex -- \Tenor "tremo do céu põe-" \BeginItalic se~a cor -- \EndItalic \B rer, __ \MediatioMark
  \Tenor "e vai traçando o seu ras" --
  \MelismaOff
  \TerminatioIVA tro lu -- mi -- no -- _ so.
  \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "7cd" \Inchoatio A -- té __
  \Tenor "que possa chegar ao" \BeginItalic ou -- tro~ex -- \EndItalic
  \MelismaOff \B tre -- _ mo, \MelismaOn \MediatioMark
  \Tenor "e nada pode fugir" \TerminatioIVA ao seu ca -- lor. __
}

\GregorianTranscriptionLayout

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
  \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
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
    \gloriaPatriChordsPartIVA
    \gloriaPatriChantPartIVA
    \gloriaPatriOrganPartIVA
  >>
}
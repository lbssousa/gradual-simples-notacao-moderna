\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  \C g e f d c d f f e \finalis
}

responsoriumOrganRight = \relative c' {
  c2*3/2 a2~ a d4 b
  \finalis
}

responsoriumOrganLeft = \relative c' {
  g2*3/2 a2~ a~ a4 e
  \finalis
}

responsoriumOrganPedal = \relative c {
  c2*3/2 f2 e d4
  \tweak X-offset #1.2
  e
}

responsoriumChords = \chordmode {
  c2*3/2 d2:m/f d:m/e d4:m e:m
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  Ó Se -- nhor, Deus do u -- ni -- ver -- so.
}

psalmChant = {
  \PsalmSignature
  \key a \minor
  \S g' \chantTenorEOne
  \chantMediatioEOne #'((syneresis . partial))
  \divisioMaxima
  \S g' \chantTenorEOne
  \chantTerminatioEOne #'((syneresis . partial))
  \finalis
}

psalmOrganRight = {
  \PsalmSignature
  \key a \minor
  s4 \rightTenorEOne (
  \divisioMaxima
  s4 \rightTenorTerminatioEOne )
  \rightTerminatioEOne
  \finalis
}

psalmOrganLeft = {
  \PsalmSignature
  \clef bass
  \key a \minor
  s4 \leftTenorEOne
  \divisioMaxima
  s4 \leftTenorTerminatioEOne
  \leftTerminatioEOne
  \finalis
}

psalmOrganPedal = \relative c {
  \PsalmSignature
  s4 \pedalTenorEOne
  s4 \pedalTenorTerminatioEOne
  \pedalTerminatioEOne
}

psalmChords = \chordmode {
  s4 c2*3/2
  s4 a2*2:m g4
}

psalmVerseI = \lyricmode {
  _ _ _ _
  \set stanza = "1."
  \VSup "3c" \Tenor "Vinde logo nos trazer a sal" --
  va -- ção! __ _
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2ab" \Tenor "Ó Pastor de Israel, prestai ou" --
  vi -- dos.
  "" \Tenor "Vós, que a José apascentais qual um" re --
  ba -- nho!
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3bc" \Tenor "Despertai vosso poder, ó nosso" Deus, __ _
  "" \Tenor "e vinde logo nos trazer a sal" --
  va -- ção! __ _
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "9" \Tenor "Arrancastes do Egito esta vi" --
  dei -- ra,
  "" \Tenor "e expulsastes as nações para" plan --
  tá -- -la.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "10" \Tenor "Diante dela preparastes o ter" --
  re -- no,
  "" \Tenor "lançou raízes e encheu a terra" in --
  tei -- ra.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "11" \Tenor "Os montes recobriu com sua"
  som -- bra,
  "" \Tenor "e os cedros do Senhor com os" seus __
  ra -- mos.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "12" \Tenor "Até o mar se estenderam seus sar" -- men -- tos,
  "" \Tenor "até o rio os seus rebentos se es" -- pa -- lha -- ram.
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "15" \Tenor "Voltai-vos para nós, Deus do universo! Olhai dos altos céus e obser" -- vai. _ __
  "" \Tenor "Visitai a vossa vinha e pro" -- te -- gei -- -a!
}

\GregorianTranscriptionLayout

\header {
  arranger = "Harmonização: Theo Flury, Gennaro M. Becchimanzi"
}

chantPart = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "psalm" {
    \psalmChant
    \chantResponsorium
  }

  \new GregorianTranscriptionLyrics \lyricsto "psalm" {
    \psalmVerseI
    \lyricsResponsorium
  }
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
    %\new GregorianTranscriptionVoice { \voiceOne \psalmChant }
    \new GregorianTranscriptionVoice {
      \voiceTwo
      \psalmOrganRight
      \responsoriumOrganRight
    }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
    \new GregorianTranscriptionVoice {
      \voiceOne
      \psalmOrganLeft
      \responsoriumOrganLeft
    }
    \new GregorianTranscriptionVoice {
      \voiceTwo
      \psalmOrganPedal
      \responsoriumOrganPedal
    }
  >>
>>

chordsPart = \new ChordNames {
  \psalmChords
  \responsoriumChords
}

\score {
  \header {
    piece = "E 1"
  }

  \transpose a c'
  <<
    \chordsPart
    \chantPart
    \organPart
  >>
}
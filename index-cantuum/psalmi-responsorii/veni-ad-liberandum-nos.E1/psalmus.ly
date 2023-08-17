\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  g4 e f d c d f f e \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  Ó Se -- nhor, Deus do u -- ni -- ver -- so.
}

psalmChant = {
  \PsalmSignature
  \chantTenorE
  \chantMediatioCumEpenthesisE
  \divisioMaxima
  \chantTenorE
  \chantTerminatioCumEpenthesisEI
  \finalis
}

psalmVerseI = \lyricmode {
  _ __ _ _ _
  \set stanza = "1."
  \Tenor \VSup "3c" "Vinde logo nos trazer" a __
  \set ignoreMelismata = ##t
  sal -- va -- ção!
  \unset ignoreMelismata
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "2ab" "Ó Pastor de Israel, prestai ou" -- vi -- _ dos.
  \Tenor "Vós, que a José apascentais qual um" re -- ba -- nho!
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "3bc" "Despertai vosso poder, ó" nos -- so Deus,
  \Tenor "e vinde logo nos trazer" a __
  \set ignoreMelismata = ##t
  sal -- va -- ção!
  \unset ignoreMelismata
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "9" "Arrancastes do Egito esta vi" -- dei -- _ ra,
  \Tenor "e expulsastes as nações para" plan -- tá -- -la.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "10" "Diante dela preparastes o ter" -- re -- _ no,
  \Tenor "lançou raízes e encheu a terra" in -- tei -- ra.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "11" "Os montes recobriu com sua" som -- _ bra,
  \Tenor "e os cedros do Senhor com os" seus __ ra -- mos.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "12" "Até o mar se estenderam seus sar" -- men -- _ tos,
  \Tenor "até o rio os seus rebentos se es" -- pa -- lha -- ram.
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "15" "Voltai-vos para nós, Deus do universo! Olhai dos altos céus e" ob -- ser -- vai.
  \Tenor "Visitai a vossa vinha e pro" -- te -- gei -- -a!
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "E 1"
  }
  \new GregorianTranscriptionStaff <<
    {
      \new GregorianTranscriptionVoice = "psalm" {
        \psalmChant
      }

      \new GregorianTranscriptionVoice = "responsorium" {
        \chantResponsorium \finalis
      }
    }

    \new GregorianTranscriptionLyrics \lyricsto "responsorium" \lyricsResponsorium

    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \with { \AfterStanzaSpacing } \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}
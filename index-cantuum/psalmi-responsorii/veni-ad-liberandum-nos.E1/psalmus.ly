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
  \chantTenorEOne
  \chantMediatioEOne #'((syneresis . partial))
  \divisioMaxima
  \chantTenorEOne
  \chantTerminatioEOne #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  _ _ _
  \set stanza = "1."
  \Tenor \VSup "3c" "Vinde logo nos trazer a sal" --
  va -- ção! __ _
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "2ab" "Ó Pastor de Israel, prestai ou" --
  vi -- dos.
  \Tenor "Vós, que a José apascentais qual um" re --
  ba -- nho!
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "3bc" "Despertai vosso poder, ó nosso" Deus, __ _
  \Tenor "e vinde logo nos trazer a sal" --
  va -- ção! __ _
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "9" "Arrancastes do Egito esta vi" --
  dei -- ra,
  \Tenor "e expulsastes as nações para" plan --
  tá -- -la.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "10" "Diante dela preparastes o ter" --
  re -- no,
  \Tenor "lançou raízes e encheu a terra" in --
  tei -- ra.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "11" "Os montes recobriu com sua"
  som -- bra,
  \Tenor "e os cedros do Senhor com os" seus __
  ra -- mos.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "12" "Até o mar se estenderam seus sar" -- men -- tos,
  \Tenor "até o rio os seus rebentos se es" -- pa -- lha -- ram.
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "15" "Voltai-vos para nós, Deus do universo! Olhai dos altos céus e obser" -- vai. _ __
  \Tenor "Visitai a vossa vinha e pro" -- te -- gei -- -a!
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "E 1"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantResponsorium
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsResponsorium
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}
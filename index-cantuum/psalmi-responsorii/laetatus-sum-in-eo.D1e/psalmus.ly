\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-D.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c' {
  \C e d e \CC g a \C a
  \divisioMinima
  a g f g f e
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  A -- le -- gres va -- mos à ca -- sa do Se -- nhor.
}

psalmChant = {
  \PsalmSignature
  \chantTenorD
  \chantMediatioCumEpenthesisD
  \divisioMaxima
  \chantTenorD
  \chantTerminatioCumEpenthesisDIe
  \finalis
}

psalmVerseI = \lyricmode {
  _ _ _ _
  \set stanza = "1."
  \Tenor \VSup "1" "Que alegria, quando ouvi que" me dis -- se -- _ ram:
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "2" "E agora nossos pés já se" de -- _ têm,
  \Tenor "Jerusalém, em" tu -- as por -- _ tas.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "3" "Jerusalém, cidade bem edifi" -- ca -- _ da
  \Tenor "num conjunto har" -- mo -- ni -- o -- _ so.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "4ab" "Para lá sobem as tribos de" Is -- ra -- el,
  \Tenor "as tri" -- bos do Se -- _ nhor.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "4cd" "Para louvar, segundo a lei de" Is -- ra -- el,
  \Tenor "o no" -- me do Se -- _ nhor.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "5" "A sede da justiça lá" es -- _ tá
  \Tenor "e o tro" -- no de Da -- _ vi.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "6" "Rogai que viva em paz Je" -- ru -- sa -- lém,
  \Tenor "e em segurança os" que te a -- _ mam!
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "7" "Que a paz habite dentro de teus" mu -- _ ros,
  \Tenor "tranquilidade em" teus pa -- lá -- _ cios!
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \Tenor \VSup"8" "Por amor a meus irmãos e meus a" -- mi -- _ gos,
  \Tenor "peço: “A" -- paz es -- te -- ja~em ti”!
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \AltLyrics
  \Tenor \VSup "9" "Pelo amor que tenho à casa do" Se -- _ nhor,
  \Tenor "eu te de" -- se -- jo to -- do bem!
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "D 1 e"
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
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseX
  >>
}
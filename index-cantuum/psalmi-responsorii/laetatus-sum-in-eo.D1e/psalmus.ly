\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-D.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
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
  \S \chantTenorD
  \chantMediatioD #'((syneresis . partial))
  \divisioMaxima
  \S \chantTenorD
  \chantTerminatioDOnee #'((syneresis . partial))
  s \finalis

}

psalmVerseI = \lyricmode {
  _ _ _
  \set stanza = "1."
  \VSup "1" \Tenor "Que alegria, quando ouvi que" me dis -- \MelismaOff se -- ram: \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2" \Tenor "E agora nossos pés já se de" -- têm, __
  "" \Tenor "Jerusalém, em" tu -- as
  \MelismaOff por -- tas. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" \Tenor "Jerusalém, cidade bem edifi" --
  \MelismaOff ca -- da \MelismaOn
  "" \Tenor "num conjunto har" -- mo -- ni --
  \MelismaOff o -- so. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "4ab" \Tenor "Para lá sobem as tribos de Isra" -- el, __
  "" \Tenor "as tribos" do Se -- nhor. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "4cd" \Tenor "Para louvar, segundo a lei de Isra" -- el, __
  "" \Tenor "o nome" do Se -- nhor. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "5" \Tenor "A sede da justiça lá es" -- tá __
  "" \Tenor "e o trono" de Da -- vi. __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "6" \Tenor "Rogai que viva em paz Jerusa" -- lém, __
  "" \Tenor "e em segurança os" que te
  \MelismaOff a -- mam! \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "7" \Tenor "Que a paz habite dentro de teus"
  \MelismaOff mu -- ros, \MelismaOn
  "" \Tenor "tranquilidade em" teus pa --
  \MelismaOff lá -- cios! \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "8" \Tenor "Por amor a meus irmãos e meus a" --
  \MelismaOff mi -- gos, \MelismaOn
  "" \Tenor "peço: “A paz es" -- te -- ja~em ti”! __
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "9" \Tenor "Pelo amor que tenho à casa do Se" -- nhor, __
  "" \Tenor "eu te desejo" to -- do bem! __
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

    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseX
  >>
}
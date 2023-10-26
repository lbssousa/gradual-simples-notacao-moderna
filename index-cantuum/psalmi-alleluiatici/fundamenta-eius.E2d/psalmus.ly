\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantTenorEOne
  \chantMediatioEOne #'((syneresis . partial))
  \divisioMaxima
  \chantTenorEOne
  \chantTerminatioETwod #'((syneresis . partial))
  s \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" \Tenor "O Senhor ama a ci" -- da -- de
  \Tenor "que fundou no Monte"
  \MelismaOff san -- to. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2" \Tenor "Ama as portas de Si" -- ão __ _
  \Tenor "mais que as casas de Ja" -- có. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" \Tenor "Dizem coisas glori" -- o -- sas
  \Tenor "da Cidade do Se" -- nhor. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "4ab" \Tenor "“Lembro o Egito e a Babi" -- lô -- nia
  \Tenor "entre os meu venera" --
  \MelismaOff do -- res. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "4cde" \Tenor "Na Filisteia ou em Tiro ’ ou no país da Eti" -- ó -- pia,
  \Tenor "este ou aquele ali nas" -- ceu”. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "5" \Tenor "De Sião, porém, se diz: ’ “Nasceu nela todo" ho -- mem;
  \Tenor "Deus é sua segu" --
  \MelismaOff ran -- ça”. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "6" \Tenor "Deus anota no seu livro, ’ onde inscreve os povos" to -- dos:
  \Tenor "“Foi ali que estes nas" --
  \MelismaOff ce -- ram”. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "7ab" \Tenor "E por isso todos" jun -- tos
  \Tenor "a cantar se alegra" -- rão. __
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "7cd" \Tenor "E, dançando, exclama" -- rão: __ _
  \Tenor "“Estão em ti as nossas"
  \MelismaOff fon -- tes!” \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "E 2 d"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantAlleluiaETwod
      \finalis
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaETwod
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}
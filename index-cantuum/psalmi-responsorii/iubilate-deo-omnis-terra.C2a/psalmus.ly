\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  \C g f g a g f d f g g f
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  Dai a Deus a mais su -- bli -- me lou -- va -- ção!
}

psalmChant = {
  \PsalmSignature
  \S \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima
  \S \chantTenorC
  \chantTerminatioCTwoa #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" \Tenor "Aclamai o Senhor Deus, ó terra in" -- \MelismaOff tei -- ra, \MelismaOn
  \VSup "2" \Tenor "cantai salmos a seu nome glori" --
  o -- so.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3" \Tenor "Dizei a Deus: “Como são grandes vossas obras! ’ Pela grandeza e o poder de vossa"
  \MelismaOff for -- ça, \MelismaOn
  "" \Tenor "vossos próprios inimigos vos ba" --
  ju -- lam.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" \Tenor "“Toda a terra vos adore com res" --
  \MelismaOff pei -- to \MelismaOn
  "" \Tenor "e proclame o louvor de vosso"
  no -- me!”
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "5" \Tenor "Vinde ver todas as obras do Se" -- nhor: __
  "" \Tenor "seus prodígios estupendos entre os"
  ho -- mens!
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6" \Tenor "O mar ele mudou em terra firme, ’ e passaram pelo rio a pé en" --
  \MelismaOff xu -- to. \MelismaOn
  "" \Tenor "Exultemos de alegria no Se" -- nhor! __ _
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "7" \Tenor "Ele domina para sempre com poder. ’ E seus olhos estão fixos sobre os"
  \MelismaOff po -- vos: \MelismaOn
  "" \Tenor "que os rebeldes não se elevem contra" e -- le!
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "20" \Tenor "Bendito seja o senhor Deus que me escutou, ’ não rejeitou minha oração e meu cla" -- mor, __
  "" \Tenor "nem afastou longe de mim o seu a" -- mor! __ _
}

\GregorianTranscriptionLayout

\header {
  meter = "C 2 a"
}

\score {
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
  >>
}
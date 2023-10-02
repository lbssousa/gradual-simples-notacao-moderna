\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-2.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioII
  \chantTenorII
  \chantMediatioII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'((syneresis . partial)
                         (epenthesis . partial))
  \finalis
}

psalmChantB = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioII
  \chantTenorII
  \chantMediatioII #'((syneresis . total))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'()
  \finalis
}

psalmChantC = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioII
  \chantTenorII
  \chantFlexaII #'()
  \divisioMinima
  \S \chantTenorII
  \chantMediatioII #'((syneresis . total))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'()
  \finalis
}

psalmChantD = {
  \key c \major
  \PsalmSignature
  \S \chantInchoatioII
  \chantTenorII
  \chantMediatioII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorII
  \chantTerminatioIID #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" O Se --
  \Tenor "nhor para nós é refúgio e vi" -- gor, __
  \Tenor "sempre pronto, mostrou-se um socorro" na~an --
  \MelismaOff gús -- _ tia. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3" As -- sim
  \Tenor "não tememos, se a terra estre" --
  \MelismaOff me -- ce, \MelismaOn
  \Tenor "se os montes desabam, caindo" nos
  \MelismaOff ma -- _ res. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4" Se~as á --
  \Tenor "guas trovejam e as ondas se a" --
  \MelismaOff gi -- tam, \MelismaOn
  \Tenor "se, em feroz tempestade, as montanhas" se~a --
  \MelismaOff ba -- _ lam. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "5" Os bra --
  \Tenor "ços de um rio vêm trazer ale" --
  \MelismaOff gri -- a \MelismaOn
  \Tenor "à Cidade de Deus, à morada" do~Al --
  \MelismaOff tís -- si -- mo. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6"  Quem a
  \Tenor "pode abalar? Deus está no seu"
  \MelismaOff mei -- o! \MelismaOn
  \Tenor "Já bem antes da aurora, ele vem a" -- ju --
  \MelismaOff dá -- _ -la. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "8" Co -- nos --
  \Tenor "co está o Senhor do uni"
  \MelismaOff ver -- so! \MelismaOn
  \Tenor "O nosso refúgio é o Deus de" Ja -- có! __ _
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "9ab" Vin -- de
  \Tenor "ver, contemplai os prodígios de" Deus __
  \Tenor "e a obra estupenda que fez no u" -- ni --
  ver -- so.
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "9c" Re -- pri --
  \Tenor "me as guerras na face da"
  \MelismaOff ter -- ra, \MelismaOn
  \VSup "10" \Tenor "ele quebra os arcos, as lanças des" -- trói, __
  \Tenor "e queima no fogo os escudos" e~as ar -- mas.
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "11" Pa -- rai
  \Tenor "e sabei, conhecei que eu sou" Deus, __
  \Tenor "que domino as nações, que domino" a
  \MelismaOff ter -- ra! \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "12" Co -- nos --
  \Tenor "co está o Senhor do uni"
  \MelismaOff ver -- so! \MelismaOn
  \Tenor "O nosso refúgio é o Deus de" Ja -- có! __ _
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\markup \vspace #3

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}

\markup \vspace #3

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}

\markup \vspace #2

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose d g \psalmChantD
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseX
  >>
}

\markup \vspace #2

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose d g \gloriaPatriChantIID
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIID
  >>
}
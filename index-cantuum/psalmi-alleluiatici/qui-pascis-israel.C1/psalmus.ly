\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima
  \chantTenorC
  \chantTerminatioCOne #'((syneresis . partial))
  \finalis
  \Spacer 1
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2ab" \Tenor "Ó Pastor de Israel, prestai ou" --
  \MelismaOff vi -- dos. \MelismaOn
  \Tenor "Vós, que a José apascentais qual um" re --
  \MelismaOff ba -- nho! \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "9" \Tenor "Arrancastes do Egito esta vi" --
  \MelismaOff dei -- ra, \MelismaOn
  \Tenor "e expulsastes as nações para" plan --
  \MelismaOff tá -- -la. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "15" \Tenor "Voltai-vos para nós, Deus do universo! ’ Olhai dos altos céus e obser" -- vai. __
  \Tenor "Visitai a vossa vinha e pro" -- te --
  \MelismaOff gei -- -a! \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "16" \Tenor "Foi a vossa mão direita que a plan" -- tou; __
  \Tenor "protegei-a, e ao rebento que" fir --
  \MelismaOff mas -- tes! \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "17" \Tenor "E aqueles que a cortaram e a quei" --
  \MelismaOff ma -- ram, \MelismaOn
  \Tenor "vão perecer ante o furor de vos" -- sa
  \MelismaOff fa -- ce. \MelismaOff
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "18" \Tenor "Pousai a mão por sobre o vosso Prote" --
  \MelismaOff gi -- do, \MelismaOn
  \Tenor "o filho do homem que escolhestes pa" -- ra vós! __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "19" \Tenor "E nunca mais vos deixaremos, Senhor"
  Deus! __
  \Tenor "Dai-nos vida, e louvaremos vos" -- so
  \MelismaOff no -- me! \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "20" \Tenor "Convertei-nos, ó Senhor Deus do universo, ’ e sobre nós iluminai a vossa"
  \MelismaOff fa -- ce! \MelismaOn
  \Tenor "Se voltardes para nós, sere" -- mos
  \MelismaOff sal -- vos! \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "C 1"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantAlleluiaCOne
      \finalis
      \Spacer 22
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaCOne
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}
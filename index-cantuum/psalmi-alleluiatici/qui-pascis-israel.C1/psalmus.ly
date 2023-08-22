\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantTenorC
  \chantMediatioCumEpenthesisC
  \divisioMaxima \break
  \chantTenorC
  \chantTerminatioCumEpenthesisCI
  \finalis \break
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "2ab" "Ó Pastor de Israel, prestai ou" -- vi -- _ dos.
  \Tenor "Vós, que a José apascentais qual um" re -- ba -- _ nho!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "9" "Arrancastes do Egito esta vi" -- dei -- _ ra,
  \Tenor "e expulsastes as nações para" plan -- tá -- _ -la.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "15" "Voltai-vos para nós, Deus do universo! Olhai dos altos céus e" ob -- ser -- vai.
  \Tenor "Visitai a vossa vinha e pro" -- te -- gei -- _ -a!
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "16" "Foi a vossa mão direita que a" plan -- _ tou;
  \Tenor "protegei-a, e ao rebento que" fir -- mas -- _ tes!
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "17" "E aqueles que a cortaram e a quei" -- ma -- _ ram,
  \Tenor "vão perecer ante o furor de vos" -- sa fa -- _ ce.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "18" "Pousai a mão por sobre o vosso Prote" -- gi -- _ do,
  \Tenor "o filho do homem que escolhes" -- tes pa -- ra vós!
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "19" "E nunca mais vos deixaremos, Se" -- nhor _ Deus!
  \Tenor "Dai-nos vida, e louvaremos vos" -- so no -- _ me!
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "20" "Convertei-nos, ó Senhor Deus do universo, e sobre nós iluminai a vossa" fa -- _ ce!
  \Tenor "Se voltardes para nós, sere" -- mos sal -- _ vos!
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "C 1"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantAlleluiaCI
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaCI
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
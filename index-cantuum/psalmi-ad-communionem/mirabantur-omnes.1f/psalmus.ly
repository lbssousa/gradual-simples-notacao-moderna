\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key d \minor
  \S \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'((epenthesis . partial))
  \chantMediatioSecundusI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIf #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Lou -- vai __ \Tenor "o Senhor Deus nos" al -- _ tos céus, __
  \Tenor "louvai-o no excelso" fir -- ma -- men -- to! __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2" Lou -- vai- -- \Tenor "o, anjos seus," to -- dos lou --
  \MelismaOff vai- -- o, \MelismaOn
  \Tenor "louvai-o, legiões ce" -- les -- ti -- ais! __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" Lou -- vai- -- \Tenor "o, sol e lua," ben -- _ di --
  \MelismaOff zei- -- o, \MelismaOn
  \Tenor "louvai-o, vós estrelas" re -- lu -- zen -- tes. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "4" Lou -- vai- -- \Tenor "o, céus dos céus, e" ben -- _ di --
  \MelismaOff zei- -- o, \MelismaOn
  \Tenor "e vós, águas que estais por" so -- bre~os céus. __ _
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "5" Lou -- vem __ \Tenor "todos e bendigam" o _ seu
  \MelismaOff no -- me, \MelismaOn
  \Tenor "porque mandou e logo tudo" foi cri -- a -- do. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "6" Ins -- ti -- \Tenor "tuiu todas as coisas"
  pa -- _ ra
  \MelismaOff sem -- pre, \MelismaOn
  \Tenor "e deu a tudo uma lei que é" i -- mu -- tá -- vel. __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "7" Lou -- vai __ \Tenor "o Senhor Deus por"
  to -- _ da~a
  \MelismaOff ter -- ra, \MelismaOn
  \Tenor "grandes peixes e abismos" mais pro -- fun -- dos. __
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "11" Reis da __ \Tenor "terra, povos todos," ben -- _ di --
  \MelismaOff zei- -- o, \MelismaOn
  \Tenor "e vós, jovens, e vós, moças" e ra -- pa -- zes. __
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "14cd" É um __ \Tenor "hino para os filhos de" Is -- _ ra -- el, __
  \Tenor "este povo que ele ama e" lhe per -- ten -- ce. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \gloriaPatriChantIf
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIf
  >>
}
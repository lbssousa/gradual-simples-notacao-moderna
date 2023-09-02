\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \key d \minor
  \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'((syneresis . partial))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIg #'((syneresis . partial))
  \finalis
  \Spacer 25
}

psalmChantB = {
  \PsalmSignature
  \key d \minor
  \chantInchoatioI #'()
  \chantTenorI
  \chantMediatioPrimusI #'()
  \chantMediatioSecundusI #'((syneresis . total))
  \divisioMaxima
  \chantTenorI
  \chantTerminatioIg #'()
  \finalis
  \Spacer 15
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Fe -- liz __
  \Tenor "és tu se temes" o Se -- nhor, __
  \Tenor "e trilhas" seus ca -- mi -- nhos!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "2" Do tra --
  \Tenor "balho de tuas mãos hás" de vi -- ver, __
  \Tenor "serás feliz, tu" -- do~i -- rá bem! __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3ab" A tu --
  \Tenor "a esposa é uma videira" bem fe --
  \MelismaOff cun -- da \MelismaOn
  \Tenor "no coração da" tu -- a ca -- sa.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "3ab" Os teus __
  \Tenor "filhos são rebentos de" o -- li --
  \MelismaOff vei -- ra \MelismaOn
  \Tenor "ao redor de" tu -- a me -- sa.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "4" Se -- rá __
  \Tenor "assim abençoado" to -- do
  \MelismaOff ho -- mem \MelismaOn
  \Tenor "que te" -- me o Se -- nhor.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "5ab" O Se --
  \Tenor "nhor te abençoe" de Si -- ão, __
  \Tenor "cada dia de" tu -- a vi -- da.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "5c" Pa -- ra __
  \Tenor "que vejas prosperar Je" -- ru -- sa -- lém __
  \Tenor \VSup "6a" "e os filhos" dos teus fi -- lhos.
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "6bc" Ó Se --
  \Tenor "nhor, que venha a paz a" Is -- ra -- el, __
  \Tenor "que venha a paz ao" vos -- so po -- vo!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \gloriaPatriChantIg
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseI
  >>
}
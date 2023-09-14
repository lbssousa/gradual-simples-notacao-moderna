\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
  \Spacer 10
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Vin -- de,~e --
  \Tenor "xultemos de alegria no Se" -- nhor, __
  \Tenor "aclamemos o rochedo" que nos
  \MelismaOff sal -- va. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "2" Ao seu
  \Tenor "encontro caminhemos com lou" --
  \MelismaOff vo -- res, \MelismaOn
  \Tenor "e com cantos de alegria o" ce -- le --
  \MelismaOff bre -- mos! \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" Na ver --
  \Tenor "dade, o Senhor é o grande" Deus, __
  \Tenor "o grande Rei, muito maior que os" deu -- ses
  \MelismaOff to -- dos. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "4" Tem nas
  \Tenor "mãos as profundezas dos a" --
  \MelismaOff bis -- mos, \MelismaOn
  \Tenor "e as alturas das montanhas" lhe per --
  \MelismaOff ten -- cem. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "5" O mar
  \Tenor "é dele, pois foi ele quem o" fez, __
  \Tenor "e a terra firme suas mãos a" mo -- de
  \MelismaOff la -- ram. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "6" Vin -- de,~a --
  \Tenor "doremos e prostremo-nos por"
  \MelismaOff ter -- ra, \MelismaOn
  \Tenor "e ajoelhemos ante o Deus que" nos cri -- ou! __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "7bc" E nós
  \Tenor "somos o seu povo e seu re" --
  \MelismaOff ba -- nho, \MelismaOn
  \Tenor "as ovelhas que conduz com" su -- a mão. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c a, \gloriaPatriChantVIIIG
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIII
  >>
}
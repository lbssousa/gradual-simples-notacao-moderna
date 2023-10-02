\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-1.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
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
  \VSup "1" Se -- nhor __
  \Tenor "meu Deus, a vós elevo a" mi -- _ nha
  \MelismaOff al -- ma, \MelismaOn
  \Tenor "em vós confio: que eu não seja en" -- ver -- go -- nha -- do. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "6" Re -- cor --
  \Tenor "dai, Senhor meu Deus," vos -- sa ter --
  \MelismaOff nu -- ra \MelismaOn
  \Tenor "e a vossa salvação que" são e --
  ter -- nas! __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "10" Ver -- da --
  \Tenor "de e amor são os caminhos" do _ Se -- nhor __
  \Tenor "para quem guarda sua Aliança e" seus pre --
  cei -- tos. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "20" De -- fen --
  \Tenor "dei a minha vida e" li -- _ ber --
  \MelismaOff tai -- -me; \MelismaOn
  \Tenor "em vós confio, que eu não seja en" -- ver -- go --
  nha -- do! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "22" Li -- ber --
  \Tenor "tai, ó Senhor Deus, a"
   Is -- _ ra -- el __
  \Tenor "de toda a sua angústia" e~a -- fli -- ção! __ _
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
  >>
}
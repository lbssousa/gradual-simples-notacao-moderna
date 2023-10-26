\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-8.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
}

psalmChantB = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantFlexaVIII #'((syneresis . total))
  \divisioMinima
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'()
  \finalis
}

psalmChantC = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . total))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'()
  \finalis
}

psalmChantD = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantFlexaVIII #'((syneresis . partial))
  \divisioMinima
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" Gran -- de~é~o \Tenor "Senhor e muito digno de lou"
  vo -- res
  \Tenor "na cidade on" -- de~e -- le
  \MelismaOff mo -- ra. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3" Seu mon -- \Tenor "te santo, esta colina encanta" -- do -- ra
  \Tenor "é a alegria" do~u -- ni --
  \MelismaOff ver -- so. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3cd" Mon -- te \Tenor "Sião, no extremo norte situ" -- a -- do,
  \Tenor "és a mansão do" gran -- de Rei! __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "4" Deus re -- \Tenor "velou-se em suas fortes cida" -- de -- las
  \Tenor "um refúgio" po -- de --
  \MelismaOff ro -- so. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "5" Pois eis \Tenor "que os reis da terra se ali" -- a -- ram,
  \Tenor "e todos juntos" a -- van --
  \MelismaOff ça -- ram. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "6" Mal a \Tenor "viram, de pavor estreme" -- ce -- ram,
  \Tenor "debandaram" per -- tur --
  \MelismaOff ba -- dos. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "9ab" Co -- mo~ou -- \Tenor "vimos dos antigos, contem" -- pla -- mos:
  \Tenor "Deus habita es" -- ta ci --
  \MelismaOff da -- de, \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "9cd" A ci -- \Tenor "dade do Senhor onipo" -- ten -- te,
  \Tenor "que ele a guarde e" -- ter -- na --
  \MelismaOff men -- te! \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "11" Com vos -- \Tenor "so nome vai também vosso lou" -- vor __
  \Tenor "aos confins de toda a"
  \MelismaOff ter -- ra. \MelismaOn
  \Tenor "Vossa direita está repleta" de jus -- ti -- ça.
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "12" E -- xul -- \Tenor "te o monte de Si" -- ão! __
  \Tenor "Alegram-se as cidades de Ju" -- dá __
  \Tenor "com os vossos" jul -- ga -- men -- tos!
}

psalmVerseXI = \lyricmode {
  \set stanza = "11."
  \VSup "13" Vin -- de~a \Tenor "Sião, fazei a volta ao seu re" -- dor __
  \Tenor "e contai as" su -- as tor -- res.
}

psalmVerseXII = \lyricmode {
  \set stanza = "12."
  \VSup "14" Ob -- ser -- \Tenor "vai com atenção suas mu" --
  \MelismaOff ra -- lhas, \MelismaOn
  \Tenor "visitai os seus pa" -- lá -- cios,
  \Tenor "para contar às gerações que" hão de vir. __
}

psalmVerseXIII = \lyricmode {
  \set stanza = "13."
  \VSup "15" Co -- mo~é \Tenor "grande o nosso" Deus! __
  \Tenor "O nosso Deus é desde sempre e para" sem -- pre:
  \Tenor "Será ele o" nos -- so
  \MelismaOff gui -- a. \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseX
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseXI
  >>
}

\markup \vspace #3

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantD
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseXII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseXIII
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
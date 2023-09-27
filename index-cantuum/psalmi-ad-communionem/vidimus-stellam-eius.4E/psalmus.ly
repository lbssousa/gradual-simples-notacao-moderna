\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-4.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChantA = {
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'((syneresis . partial))
  \divisioMaxima
  \S \chantTenorIV
  \chantTerminatioIVE #'((syneresis . partial))
  \finalis

}

psalmChantB = {
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantFlexaIV #'((syneresis . total))
  \divisioMinima
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \S \chantTenorIV
  \chantTerminatioIVE #'()
  \finalis

}

psalmChantC = {
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima \break
  \S \chantTenorIV
  \chantTerminatioIVE #'((syneresis . partial))
  \finalis

}

psalmChantD = {
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantFlexaIV #'()
  \divisioMinima
  \S \chantTenorIV
  \chantMediatioIV #'((syneresis . total))
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'()
  \finalis

}

psalmChantE = {
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'()
  \finalis

}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Can -- tai __
  \Tenor "ao Senhor Deus um" can -- to
  \MelismaOff no -- vo, \MelismaOn
  \VSup "2a" \Tenor "cantai ao Senhor Deus, ó" ter -- ra in --
  tei -- ra!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "2bc" Can -- tai __
  \Tenor "e bendizei seu" san -- to
  \MelismaOff no -- me! \MelismaOn
  "" \Tenor "Dia após dia anunciai su" -- a sal -- va -- ção! __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" Ma -- ni --
  \Tenor "festai a sua glória en" -- tre~as na -- ções, __
  "" \Tenor "e entre os povos do univer" -- so seus pro --
  dí -- gios!
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "4" Pois Deus __
  \Tenor "é grande e muito digno" de lou -- vor, __
  "" \Tenor "é mais terrível e maior" que~os ou -- tros deu -- ses.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6" Di -- an --
  \Tenor "te dele vão a glória e a" ma -- jes --
  \MelismaOff ta -- de, \MelismaOn
  "" \Tenor "e o seu templo, que bele" -- za e~es -- plen -- dor! __ _
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "7" Ó fa --
  \Tenor "mília das nações, dai ao Se" -- nhor, __
  \Tenor "ó nações, dai ao Senhor po" -- der e gló -- ria,
  \VSup "8a" \Tenor "dai-lhe a glória que é devi" -- da ao seu no -- me!
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "8b" O -- fe --
  \Tenor "recei um sacrifício" nos seus
  á -- trios,
  \VSup "9a" \Tenor "adorai-o no esplendor" da san -- ti --
  da -- de!
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "9b" Ter -- ra
  \Tenor "inteira, estremecei di" -- an -- te de -- le!
  \VSup "10a" \Tenor "Publicai entre as nações:" “Rei -- na~o Se -- nhor!” __ _
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "12b" E e --
  \Tenor "xultem as florestas e as" ma -- tas
  \VSup "13ab" \Tenor "na presença do Senhor, pois" e -- le vem, __
  \Tenor "porque vem para julgar a" ter -- ra in -- tei -- ra.
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "13cd" Go -- ver --
  \Tenor "nará o mundo todo" com jus --
  ti -- ça,
  \Tenor "e os povos julgará" com le -- al --
  da -- de.
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
  >>
}

\markup \vspace #4

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\markup \vspace #4

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
  >>
}

\markup \vspace #4

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantD
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}

\markup \vspace #4

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantE
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseX
  >>
}

\markup \vspace #4

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \gloriaPatriChantIVE
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIVE
  >>
}
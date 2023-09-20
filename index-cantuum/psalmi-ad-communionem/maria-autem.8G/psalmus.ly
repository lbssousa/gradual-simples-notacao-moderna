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
  \chantMediatioVIII #'((syneresis . partial)
                        (epenthesis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial))
  \finalis
  \Spacer 19
}

psalmChantB = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantFlexaVIII #'((syneresis . total))
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . total))
  \divisioMaxima
  \break
  \chantTenorVIII
  \chantTerminatioVIIIG #'()
  \finalis
  \Spacer 15
}

psalmChantC = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . total))
  \finalis
  \Spacer 25
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" Es -- cu --
  \Tenor "ta, ó meu povo, a minha" -- Lei, __
  \Tenor "ouve atento as palavras" que~eu te
  \MelismaOff di -- go. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "2" A -- bri --
  \Tenor "rei a minha boca em pa" --
  \MelismaOff rá -- bo -- las, \MelismaOn
  \Tenor "os mistérios do passado" lem -- bra -- rei. __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" Tu -- do~a --
  \Tenor "quilo que ouvimos e apren" --
  \MelismaOff de -- _ mos, \MelismaOn
  \Tenor "e transmitiram para nós os" nos -- sos pais. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "4ab" Não ha --
  \Tenor "veremos de ocultar a nossos"
  \MelismaOff fi -- _ lhos, \MelismaOn
  \Tenor "mas à nova geração nós" con -- ta --
  \MelismaOff re -- mos. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "4cd" As gran --
  \Tenor "dezas do Senhor e seu po" -- der, __
  \Tenor "as maravilhas que por nós re" -- a -- li -- zou. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "23" Or -- de --
  \Tenor "nou, então, às nuvens lá dos" céus, __
  \Tenor "e as comportas das alturas" fez a -- brir. __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "24" Fez cho --
  \Tenor "ver-lhes o maná e alimen" --
  \MelismaOff tou -- _ -os, \MelismaOn
  \Tenor "e lhes deu para comer o" pão do céu. __
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "25" O ho --
  \Tenor "mem se nutriu do pão dos"
  \MelismaOff an -- _ jos, \MelismaOn
  \Tenor "e mandou-lhes alimento em" a -- bun --
  \MelismaOff dân -- cia. \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "29" E -- les
  \Tenor "comeram e beberam à von" --
  \MelismaOff ta -- _ de; \MelismaOn
  \Tenor "o Senhor satisfizera os" seus de --
  \MelismaOff se -- jos. \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "71" O -- ve --
  \Tenor "lhas e cordeiros fez dei" -- xar __
  \Tenor "para seu povo de Jacó pastore" -- ar, __
  \Tenor "e a Israel que escolheu por" su -- a~he --
  \MelismaOff ran -- ça. \MelismaOn
}

psalmVerseXI = \lyricmode {
  \set stanza = "11."
  \VSup "72" Com re --
  \Tenor "to coração apascen" --
  \MelismaOff tou- -- os \MelismaOn
  \Tenor "e com mão habilidosa os" con -- du -- ziu. __
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantB
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseX
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

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c a, \gloriaPatriChantVIIIG
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIII
  >>
}
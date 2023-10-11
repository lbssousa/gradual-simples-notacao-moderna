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
  \chantFlexaIV #'()
  \divisioMinima
  \S \chantTenorIV
  \chantMediatioIV #'()
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'((syneresis . total))
  \finalis
}

psalmChantB = {
  \PsalmSignature
  \S \chantInchoatioIV #'((dieresis . partial))
  \chantTenorIV
  \chantMediatioIV #'((syneresis . partial))
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'((syneresis . partial))
  \finalis
}

psalmChantC = {
  \PsalmSignature
  \S \chantInchoatioIV #'()
  \chantTenorIV
  \chantFlexaIV #'((syneresis . total))
  \divisioMinima
  \chantTenorIV
  \chantMediatioIV #'((syneresis . total))
  \divisioMaxima
  \chantTenorIV
  \chantTerminatioIVE #'((syneresis . total))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" A -- cla -- \Tenor "mai o Senhor Deus, ó terra in" -- tei -- ra,
  \VSup "2" \Tenor "cantai salmos a seu nome" glo -- ri -- o -- so,
  \Tenor "dai a Deus a mais subli" -- me lou -- va -- ção! __ _
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "8" Na -- ções, __ \Tenor "glorificai ao" nos -- so Deus, __
  \Tenor "anunciai em alta voz" o seu lou -- vor! __ _
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "9" É e -- \Tenor "le quem dá vida à" nos -- sa
  \MelismaOff vi -- da, \MelismaOn
  \Tenor "e não permite que vaci" -- lem nos -- sos pés. __ _
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "10" Na ver -- \Tenor "dade, ó Senhor, vós"  nos pro --
  \MelismaOff vas -- tes, \MelismaOn
  \Tenor "nos depurastes pelo fo" -- go co -- mo~a pra -- ta.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "13" Em vos -- \Tenor "sa casa entrarei com" sa -- cri --
  \MelismaOff fí -- cios \MelismaOn
  \Tenor "e cumprirei todos os vo" tos que vos fiz. __ _
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "16" To -- dos __ \Tenor "vós e a Deus temeis, vin" -- de~es -- cu -- tar: __
  \Tenor "vou contar-vos todo o bem" que~e -- le me fez! __ _
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "17" Quan -- \MelismaOff do a \MelismaOn
  \Tenor "ele o meu grito" se~e -- le -- vou, __
  \Tenor "já havia gratidão" em mi -- nha bo -- ca!
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "18" Se~eu guar -- \Tenor "dasse planos maus no" co -- ra -- ção, __
  \Tenor "o Senhor não me teria ou"  -- vi -- do a voz. __ _
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "19" En -- tre -- \Tenor "tanto, o Senhor quis" a -- ten --
  \MelismaOff der- -- me, \MelismaOn
  \Tenor "e deu ouvidos ao clamor" da mi -- nha pre -- ce.
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "20" Ben -- di -- \Tenor "to seja o Senhor Deus que me escu" -- tou, __
  \Tenor "não rejeitou minha oração e" meu cla -- mor, __
  \Tenor "nem afastou longe de mim" o seu a -- mor! __ _
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseI
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChantC
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseX
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \gloriaPatriChantIVE
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIVE
  >>
}
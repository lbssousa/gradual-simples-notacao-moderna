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
  \Spacer 7
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "46" A mi --
  \Tenor "nha alma engrandece o Se" -- nhor __
  \Tenor \VSup "47" "e se alegrou o meu espírito em Deus, meu" Sal -- va -- dor. __
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "48" Pois e --
  \Tenor "le viu a pequenez de sua"
  \MelismaOff ser -- va, \MelismaOn
  \Tenor "desde agora as gerações hão de chamar-me" de ben --
  \MelismaOff di -- ta. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "49" O Po --
  \Tenor "deroso fez por mim mara" --
  \MelismaOff vi -- lhas \MelismaOn
  \Tenor "e Santo" é~o seu
  \MelismaOff no -- me! \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "50" Seu a --
  \Tenor "mor, de geração em gera" -- ção, __
  \Tenor "chega a todos" que~o res --
  \MelismaOff pei -- tam. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "51" De -- mons --
  \Tenor "trou o poder de seu"
  \MelismaOff bra -- ço, \MelismaOn
  \Tenor "dispersou os" or -- gu --
  \MelismaOff lho -- sos. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "52" Der -- ru --
  \Tenor "bou os poderosos de seus"
  \MelismaOff tro -- nos \MelismaOn
  \Tenor "e os humildes" e -- xal -- tou. __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "53" De bens
  \Tenor "saciou os fa" --
  \MelismaOff min -- tos, \MelismaOn
  \Tenor "e despediu, sem" na -- da,~os
  \MelismaOff ri -- cos. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "54" A -- co --
  \Tenor "lheu Israel, seu servi" -- dor, __
  \Tenor "fiel ao" seu a -- mor. __
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "55" Co -- mo~ha --
  \Tenor "via prometido aos nossos" pais, __
  \Tenor "em favor de Abraão e de seus filhos," pa -- ra
  \MelismaOff sem -- pre. \MelismaOn
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
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" {
      \transpose c a, \gloriaPatriChantVIIIG
    }

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseVIII
  >>
}
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
  \chantMediatioVIII #'((syneresis . partial))
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
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((epenthesis . total))
  \finalis
}

psalmChantC = {
  \PsalmSignature
  \key c \major
  \S \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'((syneresis . partial))
  \divisioMaxima
  \chantTenorVIII
  \chantTerminatioVIIIG #'((syneresis . partial)
                           (epenthesis . total))
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
  \VSup "1" Ao Se -- \Tenor "nhor pertence a terra e o que ela en" --
  \MelismaOff cer -- ra, \MelismaOn
  \Tenor "o mundo inteiro com os seres" que~o po --
  \MelismaOff vo -- am. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2" Por -- que \Tenor "ele a tornou firme sobre os"
  \MelismaOff ma -- res \MelismaOn
  \Tenor "e sobre as águas a mantém i" -- na -- ba --
  \MelismaOff lá -- vel. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" “Quem su -- \Tenor "birá até o monte do Se" -- nhor, __
  \Tenor "quem ficará em sua santa ha" -- bi -- ta -- ção?” __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "4" “Quem tem \Tenor "mãos puras e inocente cora" -- ção, __
  \Tenor "quem não dirige sua mente para o"
  cri -- me,
  \Tenor "nem jura falso para o dano" do seu
  \MelismaOff pró -- xi -- mo. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "5" So -- bre \Tenor "este desce a bênção do Se" -- nhor __
  \Tenor "e a recompensa de seu Deus e" Sal -- va -- dor”. __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "6" É as -- \Tenor "sim a geração dos que o pro" --
  \MelismaOff cu -- ram, \MelismaOn
  \Tenor "e do Deus de Israel bus" -- cam a
  \MelismaOff fa -- ce. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "7" “Ó por -- \Tenor "tas, levantai vossos fron" -- tões! __
  \Tenor "Elevai-vos bem mais alto, antigas"
  \MelismaOff por -- tas, \MelismaOn
  \Tenor "a fim de que o Rei da glória" pos -- sa~en -- trar!” __
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "8" Di -- zei- -- \Tenor "nos: “Quem é este Rei da"
  \MelismaOff gló -- ria?” \MelismaOn
  \Tenor "“É o Senhor, o valoroso, o onipo" --
  \MelismaOff ten -- te, \MelismaOn
  \Tenor "o Senhor, o poderoso" nas ba --
  \MelismaOff ta -- lhas!” \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "9" “Ó por -- \Tenor "tas, levantai vossos fron" -- tões! __
  \Tenor "Elevai-vos bem mais alto, antigas"
  \MelismaOff por -- tas, \MelismaOn
  \Tenor "a fim de que o Rei da glória" pos -- sa~en -- trar!” __
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "10" Di -- zei- -- \Tenor "nos: “Quem é este Rei da"
  \MelismaOff gló -- ria?” \MelismaOn
  \Tenor "O Rei da glória é o Senhor onipo" --
  \MelismaOff ten -- te, \MelismaOn
  \Tenor "o Rei da glória é o Senhor Deus do" u -- ni --
  \MelismaOff ver -- so!” \MelismaOn
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
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantB
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantA
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \transpose c a, \psalmChantD
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseX
  >>
}
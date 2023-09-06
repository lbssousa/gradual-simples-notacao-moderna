\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantTenorEOne
  \chantMediatioEOne #'((syneresis . partial))
  \divisioMaxima
  \break
  \chantTenorEOne
  \chantTerminatioETwod #'((syneresis . partial)
                           (epenthesis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup"1,15" "Como és bela, minha amada, como és"
  be -- la,
  \Tenor "com teus olhos de"
  \MelismaOff pom -- _ ba! \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "2,11" "O inverno pas" -- sou, __ _
  \Tenor "as chuvas cessaram e já se"
  \MelismaOff fo -- _ ram. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "12ab" "Apareceram as flores no"
  cam -- po,
  \Tenor "chegou o tempo da"
  \MelismaOff po -- _ da. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "12cd" "A rola já faz ouvir seu canto em nossa"
  ter -- ra.
  \Tenor \VSup "13b" "Soltam perfume as vinhas em" flor. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "14def" "A tua voz ressoe aos meus ou" --
  vi -- dos,
  \Tenor "pois a tua voz é suave e o teu rosto é"
  \MelismaOff lin -- _ do!” \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "4,11ab" "Teus lábios, minha esposa, são favo que destila o" mel; __ _
  \Tenor "sob a tua língua há mel e"
  \MelismaOff lei -- _ te. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "4,11cd" "O perfume de tuas"
  ves -- tes
  \Tenor "é como o perfume do"
  \MelismaOff Lí -- ba -- no. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "12" "És um jardim fechado, minha irmã e es" --
  po -- sa,
  \Tenor "jardim fechado e fonte la" --
  \MelismaOff cra -- _ da. \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \Tenor \VSup "5,2cd" "“Abre-me, ó minha irmã e a" --
  ma -- da,
  \Tenor "minha pomba, minha imacu" --
  \MelismaOff la -- _ da”. \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \AltLyrics
  \Tenor \VSup "6,4" "Tu és bela, minha amada, como Tersa, formosa como Jerusa" -- lém, __ _
  \Tenor "terrível como um exército em ordem de ba" --
  \MelismaOff ta -- _ lha. \MelismaOn
}

\GregorianTranscriptionLayout

\header {
  poet = " "
  composer = "Texto: Bíblia Sagrada - Tradução Oficial da CNBB (2019)"
}
\score {
  \header {
    piece = "E 2 d"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \Spacer 1
      \chantAlleluiaETwod
      \finalis
      \Spacer 22
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaETwod
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseX
  >>
}
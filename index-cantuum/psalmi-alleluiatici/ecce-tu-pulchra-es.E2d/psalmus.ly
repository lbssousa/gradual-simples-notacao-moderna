\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantTenorEOne
  \chantMediatioEOne #'((syneresis . partial))
  \divisioMaxima
  \S \chantTenorEOne
  \chantTerminatioETwod #'((syneresis . partial)
                           (epenthesis . partial))
  s \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1,15" \Tenor "Como és bela, minha amada, como és"
  be -- la,
  "" \Tenor "com teus olhos de"
  \MelismaOff pom -- _ ba! \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2,11" \Tenor "O inverno pas" -- sou, __ _
  "" \Tenor "as chuvas cessaram e já se"
  \MelismaOff fo -- _ ram. \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "12ab" \Tenor "Apareceram as flores no"
  cam -- po,
  "" \Tenor "chegou o tempo da"
  \MelismaOff po -- _ da. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "12cd" \Tenor "A rola já faz ouvir seu canto em nossa"
  ter -- ra.
  \VSup "13b" \Tenor "Soltam perfume as vinhas em" flor. __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "14def" \Tenor "A tua voz ressoe aos meus ou" --
  vi -- dos,
  "" \Tenor "pois a tua voz é suave e o teu rosto é"
  \MelismaOff lin -- _ do!” \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "4,11ab" \Tenor "Teus lábios, minha esposa, são favo que destila o" mel; __ _
  "" \Tenor "sob a tua língua há mel e"
  \MelismaOff lei -- _ te. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "4,11cd" \Tenor "O perfume de tuas"
  ves -- tes
  "" \Tenor "é como o perfume do"
  \MelismaOff Lí -- ba -- no. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "12" \Tenor "És um jardim fechado, minha irmã e es" --
  po -- sa,
  "" \Tenor "jardim fechado e fonte la" --
  \MelismaOff cra -- _ da. \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "5,2cd" \Tenor "“Abre-me, ó minha irmã e a" --
  ma -- da,
  "" \Tenor "minha pomba, minha imacu" --
  \MelismaOff la -- _ da”. \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "6,4" \Tenor "Tu és bela, minha amada, como Tersa, formosa como Jerusa" -- lém, __ _
  "" \Tenor "terrível como um exército em ordem de ba" --
  \MelismaOff ta -- _ lha. \MelismaOn
}

\GregorianTranscriptionLayout

\header {
  poet = " "
  composer = "Texto: Bíblia Sagrada - Tradução Oficial da CNBB (6ª Edição, 2022)"
}
\score {
  \header {
    piece = "E 2 d"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantAlleluiaETwod
      \finalis
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaETwod
    }
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseX
  >>
}
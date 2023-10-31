\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/colors.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  \C g g e f e d c d f f e
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  E to -- das as na -- ções hão de ser -- vi -- -lo.
}

psalmOddVersesChant = {
  \PsalmSignature
  \S \chantTenorEOne
  \chantMediatioEOne #'((syneresis . partial))
  \divisioMaxima
  \chantTenorEOne
  \chantTerminatioEOne #'((syneresis . partial))
  s \finalis
}

psalmEvenVersesChant = {
  \PsalmSignature
  \S \chantInchoatioEFive #'((epenthesis . partial))
  \chantTenorEFive
  \chantMediatioEFive #'((syneresis . partial))
  \divisioMaxima
  \chantTenorEStar
  \chantTerminatioEStar #'((syneresis . partial))
  s \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "11" \Tenor "Os reis de toda a" ter -- ra
  \Tenor "hão de a" -- do -- rá -- -lo.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "1" "" Dai __ \Tenor "ao Rei vossos poderes, Senhor" Deus, __ _
  \Tenor "vossa justiça ao descendente da re" -- a --
  \MelismaOff le -- za! \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "2" \Tenor "Com justiça ele governe o vosso" po -- vo,
  \Tenor "com equidade ele julgue os vos" -- sos po -- bres.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "3" "" Das __ \Tenor "montanhas venha a paz a todo o" po -- vo,
  \Tenor "e desça das colinas a" jus --
  \MelismaOff ti -- ça! \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "4" \Tenor "Este Rei defenderá os que são pobres, ’ os filhos dos humildes salva" -- rá, __ _
  \Tenor "e por terra abaterá os o" -- pres -- so -- res!
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "10" Os reis __ \Tenor "de Társis e das ilhas hão de" vir __ _
  \Tenor "e oferecer-lhes seus presentes e" seus dons. __
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "12" \Tenor "Libertará o indigente que su" -- pli -- ca,
  \Tenor "e o pobre ao qual ninguém quer a" -- ju -- dar. __ _
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "13" Te -- rá __ \Tenor "pena do indigente e do infe" -- liz, __ _
  \Tenor "e a vida dos humildes sal" -- va -- rá. __
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "17ab" \Tenor "Seja bendito o seu nome para" sem -- pre!
  \Tenor "E que dure como o sol sua" me -- mó -- ria!
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "17cd" "" To -- \Tenor "dos os povos serão nele abenço" -- a -- dos,
  \Tenor "todas as gentes cantarão o seu" lou -- vor! __
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "E 5"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \section
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Versos ímpares"
        }
      }
      \psalmOddVersesChant
      \chantResponsorium
      \fine
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsResponsorium
    }
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}

\markup \vspace #1

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \section
      \sectionLabel \markup {
        \with-color #gregorio-color {
          \italic "Versos pares"
        }
      }
      \psalmEvenVersesChant
      \chantResponsorium
      \fine
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseII
      \lyricsResponsorium
    }
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseX
  >>
}
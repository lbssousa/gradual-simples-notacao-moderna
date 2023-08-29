\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-D.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  \C b b b c b a g a b b a
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  E an -- sei -- a pe -- los á -- trios do Se -- nhor.
}

psalmChant = {
  \PsalmSignature
  \chantTenorD
  \break
  \chantMediatioD #'((syneresis . partial))
  \divisioMaxima
  \chantTenorD
  \chantTerminatioDOneb #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "2" "Quão amável, ó Senhor, é vossa casa, ’ quanto a amo, Senhor Deus do uni" --
  \MelismaOff ver -- so! \MelismaOn
  \Tenor \VSup "3a" "Minha alma desfalece de sau" --
  \MelismaOff da -- des. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "3cd" "Meu coração e minha carne reju" --
  \MelismaOff bi -- lam \MelismaOn
  \Tenor "e exultam de alegria no Deus"
  \MelismaOff vi -- vo! \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "4abc" "Mesmo o pardal encontra abrigo em vossa casa ’ e a andorinha ali prepara o seu"
  \MelismaOff ni -- nho, \MelismaOn
  \Tenor "para nele seus filhotes colo" -- car. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "4de" "Vossos altares, ó Senhor Deus do uni" --
  \MelismaOff ver -- so! \MelismaOn
  \Tenor "Vossos altares, ó meu Rei e meu Se" -- nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "5" "Felizes os que habitam vossa"
  \MelismaOff ca -- sa; \MelismaOn
  \Tenor "para sempre haverão de vos lou" -- var! __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "9" "Deus do universo, escutai minha ora" -- ção! __
  \Tenor "Inclinai, Deus de Jacó, o vosso ou" --
  \MelismaOff vi -- do! \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "10" "Olhai, ó Deus, que sois a nossa prote" -- ção, __
  \Tenor "vede a face do eleito, vosso Un" --
  \MelismaOff gi -- do! \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "12ab" "O Senhor Deus é como um sol, é um es" --
  \MelismaOff cu -- do, \MelismaOn
  \Tenor "e largamente distribui a graça e a"
  \MelismaOff gló -- ria. \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \Tenor \VSup "12cd" "O Senhor nunca recusa bem al" -- gum __
  \Tenor "àqueles que caminham na jus" --
  \MelismaOff ti -- ça. \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \AltLyrics
  \Tenor \VSup "13" "Ó Senhor, Deus poderoso do uni" --
  \MelismaOff ver -- so, \MelismaOn
  \Tenor "feliz quem põe em vós sua espe" --
  \MelismaOff ran -- ça! \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "D 1 e"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantResponsorium
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsResponsorium
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
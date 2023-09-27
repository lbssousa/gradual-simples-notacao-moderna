\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-D.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  \C b b c b b a g a b b a
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  E an -- sei -- a pe -- los á -- trios do Se -- nhor.
}

psalmChant = {
  \PsalmSignature
  \S \chantTenorD
  \chantMediatioD #'((syneresis . partial))
  \divisioMaxima \break
  \S \chantTenorD
  \chantTerminatioDOneb #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2" \Tenor "Quão amável, ó Senhor, é vossa casa, ’ quanto a amo, Senhor Deus do uni" --
  \MelismaOff ver -- so! \MelismaOn
  \VSup "3a" \Tenor "Minha alma desfalece de sau" --
  \MelismaOff da -- des. \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "3cd" \Tenor "Meu coração e minha carne reju" --
  \MelismaOff bi -- lam \MelismaOn
  "" \Tenor "e exultam de alegria no Deus"
  \MelismaOff vi -- vo! \MelismaOn
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4abc" \Tenor "Mesmo o pardal encontra abrigo em vossa casa ’ e a andorinha ali prepara o seu"
  \MelismaOff ni -- nho, \MelismaOn
  "" \Tenor "para nele seus filhotes colo" -- car. __
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "4de" \Tenor "Vossos altares, ó Senhor Deus do uni" --
  \MelismaOff ver -- so! \MelismaOn
  "" \Tenor "Vossos altares, ó meu Rei e meu Se" -- nhor! __
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "5" \Tenor "Felizes os que habitam vossa"
  \MelismaOff ca -- sa; \MelismaOn
  "" \Tenor "para sempre haverão de vos lou" -- var! __
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "9" \Tenor "Deus do universo, escutai minha ora" -- ção! __
  "" \Tenor "Inclinai, Deus de Jacó, o vosso ou" --
  \MelismaOff vi -- do! \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "10" \Tenor "Olhai, ó Deus, que sois a nossa prote" -- ção, __
  "" \Tenor "vede a face do eleito, vosso Un" --
  \MelismaOff gi -- do! \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "12ab" \Tenor "O Senhor Deus é como um sol, é um es" --
  \MelismaOff cu -- do, \MelismaOn
  "" \Tenor "e largamente distribui a graça e a"
  \MelismaOff gló -- ria. \MelismaOn
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "12cd" \Tenor "O Senhor nunca recusa bem al" -- gum __
  "" \Tenor "àqueles que caminham na jus" --
  \MelismaOff ti -- ça. \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \AltLyrics
  \VSup "13" \Tenor "Ó Senhor, Deus poderoso do uni" --
  \MelismaOff ver -- so, \MelismaOn
  "" \Tenor "feliz quem põe em vós sua espe" --
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
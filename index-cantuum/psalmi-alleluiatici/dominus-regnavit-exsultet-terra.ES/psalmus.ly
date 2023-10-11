\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-E.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantTenorEStar
  \chantMediatioEStar #'((syneresis . partial))
  \divisioMaxima
  \S \chantTenorEStar
  \chantTerminatioEStar #'()
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1" \Tenor "Deus é Rei! Exulte a terra de ale" -- \MelismaOff gri -- a, \MelismaOn
  "" \Tenor "e as ilhas numerosas re" -- ju -- bi -- lem!
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "2" \Tenor "Treva e nuvem o rodeiam no seu"  \MelismaOff tro -- no, \MelismaOn
  "" \Tenor "que se apoiam na justiça e no" di -- rei -- to.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "3" \Tenor "Vai um fogo caminhando à sua"
  \MelismaOff fren -- te \MelismaOn
  "" \Tenor "e devora ao redor seus i" -- ni -- mi -- gos.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "4" \Tenor "Seus relâmpagos clareiam toda a"
  \MelismaOff ter -- ra; \MelismaOn
  "" \Tenor "toda a terra ao contemplá-lo es" -- tre -- me -- ce.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "6" \Tenor "E assim proclama o céu sua jus" --
  \MelismaOff ti -- ça, \MelismaOn
  "" \Tenor "todos os povos podem ver a su" -- a gló -- ria.
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "7" \Tenor "“Aos pés de Deus vêm se prostrar todos os"
  \MelismaOff deu -- ses!” \MelismaOn
  \VSup "8a" \Tenor "Sião escuta transbordante de a" -- le -- gri -- a.
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "8bc" \Tenor "E exultam as cidades de Ju" -- dá, __
  "" \Tenor "porque são justos, ó Senhor, vossos" ju -- í -- zos!
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "9" \Tenor "Porque vós sois o Altíssimo, Senhor, ’ muito acima do universo que cri" --
  \MelismaOff as -- tes, \MelismaOn
  "" \Tenor "e de muito superais todos" os deu -- ses.
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "12" \Tenor "Homens justos, alegrai-vos no Se" -- nhor, __
  "" \Tenor "celebrai e bendizei seu san" -- to no -- me!
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "E *"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantAlleluiaEStar
      \finalis
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaEStar
    }
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
  >>
}
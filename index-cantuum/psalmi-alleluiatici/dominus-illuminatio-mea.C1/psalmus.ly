\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima \break
  \chantTenorC
  \chantTerminatioCOne #'((syneresis . partial))
  \finalis \break
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "1" "O Senhor é minha luz e salva" -- ção; __
  \Tenor "de quem eu te" -- rei
  \MelismaOff me -- do? \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "1cd" "O Senhor é a proteção da minha"
  \MelismaOff vi -- da; \MelismaOn
  \Tenor "perante quem eu tre" -- me -- rei? __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "4ab" "Ao Senhor eu peço apenas uma"
  \MelismaOff coi -- sa, \MelismaOn
  \Tenor "e é só isto que eu" de --
  \MelismaOff se -- jo. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "4cd" "Habitar no santuário do Se" -- nhor __
  \Tenor "por toda a mi" -- nha
  \MelismaOff vi -- da. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "4ef" "Saborear a suavidade do Se" -- nhor __
  \Tenor "e contemplá-lo no" seu
  \MelismaOff tem -- plo. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "5ab" "Pois um abrigo me dará sob o seu"
  \MelismaOff te -- to \MelismaOn
  \Tenor "nos dias da" des --
  \MelismaOff gra -- ça. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "5cd" "No interior de sua tenda há de escon" --
  \MelismaOff der -- -me \MelismaOn
  \Tenor "e proteger-me so" -- bre~a
  \MelismaOff ro -- cha. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "7" "Ó Senhor, ouvi a voz do meu a" --
  \MelismaOff pe -- lo, \MelismaOn
  \Tenor "atendei por com" pai -- xão! __
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \Tenor \VSup "8ab" "Meu coração fala convosco confi" --
  \MelismaOff an -- te, \MelismaOn
  \Tenor "e os meus olhos vos" pro --
  \MelismaOff cu -- ram. \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \AltLyrics
  \Tenor \VSup "8cd" "Senhor, é vossa face que eu pro" --
  \MelismaOff cu -- ro; \MelismaOn
  \Tenor "não me escondais a vos" -- sa
  \MelismaOff fa -- ce! \MelismaOn
}

psalmVerseXI = \lyricmode {
  \set stanza = "11."
  \Tenor \VSup "9ab" "Não afasteis em vossa ira o vosso" \MelismaOff ser -- vo, \MelismaOn
  \Tenor "sois vós o meu" au --
  \MelismaOff xí -- lio! \MelismaOn
}

psalmVerseXII = \lyricmode {
  \set stanza = "12."
  \AltLyrics
  \Tenor \VSup "9cd" "Não me esqueçais nem me deixeis abando" --
  \MelismaOff na -- do, \MelismaOn
  \Tenor "meu Deus e Sal" -- va -- dor! __
}

psalmVerseXIII = \lyricmode {
  \set stanza = "13."
  \Tenor \VSup "13" "Sei que a bondade do Senhor eu hei de" ver __
  \Tenor "na terra dos" vi --
  \MelismaOff ven -- tes. \MelismaOn
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "C 1"
  }
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \chantAlleluiaCOne
      \finalis
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsAlleluiaCOne
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
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseXI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseXII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseXIII
  >>
}
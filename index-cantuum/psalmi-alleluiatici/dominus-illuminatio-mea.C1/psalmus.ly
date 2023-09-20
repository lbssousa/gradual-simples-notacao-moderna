\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

psalmChant = {
  \PsalmSignature
  \S \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima
  \chantTenorC
  \chantTerminatioCOne #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "1ab" \Tenor "O Senhor é minha luz e salva" -- ção; __
  \Tenor "de quem eu te" -- rei
  \MelismaOff me -- do? \MelismaOn
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \VSup "1cd" \Tenor "O Senhor é a proteção da minha"
  \MelismaOff vi -- da; \MelismaOn
  \Tenor "perante quem eu tre" -- me -- rei? __
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "4ab" \Tenor "Ao Senhor eu peço apenas uma"
  \MelismaOff coi -- sa, \MelismaOn
  \Tenor "e é só isto que eu" de --
  \MelismaOff se -- jo. \MelismaOn
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \VSup "4cd" \Tenor "Habitar no santuário do Se" -- nhor __
  \Tenor "por toda a mi" -- nha
  \MelismaOff vi -- da. \MelismaOn
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "4ef" \Tenor "Saborear a suavidade do Se" -- nhor __
  \Tenor "e contemplá-lo no" seu
  \MelismaOff tem -- plo. \MelismaOn
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \VSup "5ab" \Tenor "Pois um abrigo me dará sob o seu"
  \MelismaOff te -- to \MelismaOn
  \Tenor "nos dias da" des --
  \MelismaOff gra -- ça. \MelismaOn
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "5cd" \Tenor "No interior de sua tenda há de escon" --
  \MelismaOff der -- -me \MelismaOn
  \Tenor "e proteger-me so" -- bre~a
  \MelismaOff ro -- cha. \MelismaOn
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \VSup "7" \Tenor "Ó Senhor, ouvi a voz do meu a" --
  \MelismaOff pe -- lo, \MelismaOn
  \Tenor "atendei por com" pai -- xão! __
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "8ab" \Tenor "Meu coração fala convosco confi" --
  \MelismaOff an -- te, \MelismaOn
  \Tenor "e os meus olhos vos" pro --
  \MelismaOff cu -- ram. \MelismaOn
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \AltLyrics
  \VSup "8cd" \Tenor "Senhor, é vossa face que eu pro" --
  \MelismaOff cu -- ro; \MelismaOn
  \Tenor "não me escondais a vos" -- sa
  \MelismaOff fa -- ce! \MelismaOn
}

psalmVerseXI = \lyricmode {
  \set stanza = "11."
  \VSup "9ab" \Tenor "Não afasteis em vossa ira o vosso" \MelismaOff ser -- vo, \MelismaOn
  \Tenor "sois vós o meu" au --
  \MelismaOff xí -- lio! \MelismaOn
}

psalmVerseXII = \lyricmode {
  \set stanza = "12."
  \AltLyrics
  \VSup "9cd" \Tenor "Não me esqueçais nem me deixeis abando" --
  \MelismaOff na -- do, \MelismaOn
  \Tenor "meu Deus e Sal" -- va -- dor! __
}

psalmVerseXIII = \lyricmode {
  \set stanza = "13."
  \VSup "13" \Tenor "Sei que a bondade do Senhor eu hei de" ver __
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
      \Spacer 1
      \chantAlleluiaCOne
      \finalis
      \Spacer 8
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
\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  \C g \CC f g \C a g \CC f d \C f \break g \CC g f
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  Ó Rei, __ es -- ta mi -- nha can -- ção. __
}

psalmChant = {
  \PsalmSignature
  \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima
  \break
  \chantTenorC
  \chantTerminatioCTwoa #'((syneresis . partial))
  \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \Tenor \VSup "2ab" "Transborda um poema do meu cora" -- ção, __
  \Tenor "vou can" -- tar -- -vos.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \AltLyrics
  \Tenor \VSup "3b" "Vossos lábios espalham a graça, o en" --
  \MelismaOff can -- to, \MelismaOn
  \Tenor "porque Deus, para sempre, vos deu sua"
  bên -- ção.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \Tenor \VSup "8" "Vós amais a justiça e odiais a maldade. É por isso que Deus vos ungiu com seu"
  \MelismaOff ó -- leo, \MelismaOn
  \Tenor "deu-vos mais alegria que aos vossos a" -- mi -- gos.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \AltLyrics
  \Tenor \VSup "9" "Vossas vestes exalam preciosos per" --
  \MelismaOff fu -- mes. \MelismaOn
  \Tenor "De ebúrneos palácios os sons vos de" -- lei -- tam.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \Tenor \VSup "10" "As filhas de reis vêm ao vosso encontro, e à vossa direita se encontra a ra" --
  \MelismaOff i -- nha \MelismaOn
  \Tenor "com veste esplendente de ouro de O" -- fir. __ _
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \AltLyrics
  \Tenor \VSup "11" "Escutai, minha filha, olhai, ouvi" \MelismaOff is -- to: \MelismaOn
  \Tenor "Esquecei vosso povo e a casa pa" -- ter -- na!
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \Tenor \VSup "12" "Que o Rei se encante com vossa be" --
  \MelismaOff le -- za! \MelismaOn
  \Tenor "Prestai-lhe homenagem: é vosso Se" -- nhor! __ _
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \AltLyrics
  \Tenor \VSup "13" "O povo de Tiro vos traz seus pre" --
  \MelismaOff sen -- tes, \MelismaOn
  \Tenor "os grandes do povo vos pedem fa" -- vo -- res.
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \Tenor \VSup "14" "Majestosa, a princesa real vem che" -- \MelismaOff gan -- do, \MelismaOn
  \Tenor "vestida de ricos brocados de" ou -- ro.
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \AltLyrics
  \Tenor \VSup "15" "Em vestes vistosas ao Rei se di" --
  \MelismaOff ri -- ge, \MelismaOn
  \Tenor "e as virgens amigas lhe formam cor" -- te -- jo.
}

\GregorianTranscriptionLayout

\header {
  meter = "C 2 a"
}

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "psalm" {
      \psalmChant
      \Spacer 1
      \chantResponsorium
      \Spacer 30
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
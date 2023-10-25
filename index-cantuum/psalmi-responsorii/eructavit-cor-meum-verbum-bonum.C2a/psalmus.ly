\version "2.24.1"

\include "gregorian.ly"
\include "../../toni-psalmorum/mode-C.ily"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"

chantResponsorium = \relative c'' {
  \C g \CC f g \C a g \CC f d \C f g \CC g f
  \finalis
}

lyricsResponsorium = \lyricmode {
  \set stanza = \Responsorium
  Ó Rei, __ es -- ta mi -- nha can -- ção. __
}

psalmChant = {
  \PsalmSignature
  \S \chantTenorC
  \chantMediatioC #'((syneresis . partial))
  \divisioMaxima
  \chantTenorC
  \chantTerminatioCTwoa #'((syneresis . partial))
  s \finalis
}

psalmVerseI = \lyricmode {
  \set stanza = "1."
  \VSup "2ab" \Tenor "Transborda um poema do meu cora" -- ção, __
  \Tenor "vou can" -- tar -- -vos.
}

psalmVerseII = \lyricmode {
  \set stanza = "2."
  \VSup "3b" \Tenor "Vossos lábios espalham a graça, o en" --
  \MelismaOff can -- to, \MelismaOn
  \Tenor "porque Deus, para sempre, vos deu sua"
  bên -- ção.
}

psalmVerseIII = \lyricmode {
  \set stanza = "3."
  \VSup "8" \Tenor "Vós amais a justiça e odiais a maldade. ’ É por isso que Deus vos ungiu com seu"
  \MelismaOff ó -- leo, \MelismaOn
  \Tenor "deu-vos mais alegria que aos vossos a" -- mi -- gos.
}

psalmVerseIV = \lyricmode {
  \set stanza = "4."
  \VSup "9" \Tenor "Vossas vestes exalam preciosos per" --
  \MelismaOff fu -- mes. \MelismaOn
  \Tenor "De ebúrneos palácios os sons vos de" -- lei -- tam.
}

psalmVerseV = \lyricmode {
  \set stanza = "5."
  \VSup "10" \Tenor "As filhas de reis vêm ao vosso encontro, ’ e à vossa direita se encontra a ra" --
  \MelismaOff i -- nha \MelismaOn
  \Tenor "com veste esplendente de ouro de O" -- fir. __ _
}

psalmVerseVI = \lyricmode {
  \set stanza = "6."
  \VSup "11" \Tenor "Escutai, minha filha, olhai, ouvi" \MelismaOff is -- to: \MelismaOn
  \Tenor "Esquecei vosso povo e a casa pa" -- ter -- na!
}

psalmVerseVII = \lyricmode {
  \set stanza = "7."
  \VSup "12" \Tenor "Que o Rei se encante com vossa be" --
  \MelismaOff le -- za! \MelismaOn
  \Tenor "Prestai-lhe homenagem: é vosso Se" -- nhor! __ _
}

psalmVerseVIII = \lyricmode {
  \set stanza = "8."
  \VSup "13" \Tenor "O povo de Tiro vos traz seus pre" --
  \MelismaOff sen -- tes, \MelismaOn
  \Tenor "os grandes do povo vos pedem fa" -- vo -- res.
}

psalmVerseIX = \lyricmode {
  \set stanza = "9."
  \VSup "14" \Tenor "Majestosa, a princesa real vem che" -- \MelismaOff gan -- do, \MelismaOn
  \Tenor "vestida de ricos brocados de" ou -- ro.
}

psalmVerseX = \lyricmode {
  \set stanza = "10."
  \VSup "15" \Tenor "Em vestes vistosas ao Rei se di" --
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
      \chantResponsorium
    }

    \new GregorianTranscriptionLyrics \lyricsto "psalm" {
      \psalmVerseI
      \lyricsResponsorium
    }
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseIV
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseV
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVI
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseVII
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseVIII
    \new GregorianTranscriptionLyrics \lyricsto "psalm" \psalmVerseIX
    \new GregorianTranscriptionAltLyrics \lyricsto "psalm" \psalmVerseX
  >>
}
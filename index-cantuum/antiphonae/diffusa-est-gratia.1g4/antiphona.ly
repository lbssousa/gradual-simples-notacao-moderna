\version "2.24.1"

\include "gregorian.ly"
\include "../../../modules/lilypond/neums.ily"
\include "../../../modules/lilypond/spacing.ily"
\include "../../../modules/lilypond/layout.ily"
\include "../../../modules/lilypond/lyrics.ily"
\include "../../../modules/lilypond/symbols.ily"

antiphonChant = \relative c' {
  \AntiphonSignature
  \C f a g \E a \C e f g e \C_C g e \O f \C d d
  \divisioMaior
  d f e \E f \CC g a \C g \C_C f e c \C_QC d e f \C g \CC f e \C d d
  \finalis
}

antiphonLyrics = \lyricmode {
  Dif -- fú -- sa est grá -- ti -- a in \MelismaOff lá -- bi -- \MelismaOn is tu -- is,
  pro -- pté -- re -- a be -- ne -- \MelismaOff dí -- xit \MelismaOn te De -- us __ in æ -- tér -- num.
}

antiphonLyricsPt = \lyricmode {
  Es -- pa -- lhou- -- se a gra -- ça em vos -- sos lá -- bios, por is -- so a -- ben -- ço -- ou- -- vos Deus __ _ pa -- ra __ sem -- pre.
}

\GregorianTranscriptionLayout

\header {
  meter = "Cantus ID 002216 cf. Sl 45(44),3"
  arranger = "Adapt.: Laércio de Sousa"
}

\score {
  \header {
    piece = "I g 4"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "antiphon" {
      \antiphonChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "antiphon" \antiphonLyrics
    \new GregorianTranscriptionAltLyrics \lyricsto "antiphon" \antiphonLyricsPt
  >>
}
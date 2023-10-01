\version "2.24.1"

\include "gregorian.ly"
\include "../../../../../modules/lilypond/neums.ily"
\include "../../../../../modules/lilypond/spacing.ily"
\include "../../../../../modules/lilypond/layout.ily"
\include "../../../../../modules/lilypond/lyrics.ily"
\include "../../../../../modules/lilypond/symbols.ily"

hymnChant = \relative c' {
  \AntiphonSignature
  % Salvai o vosso povo
  \C c \CC d f \C f d f \CC e d \C c
  \divisioMaior
  c \CC d f \CC f e \CC d f \CC g a \CCC g f e \C c
  \finalis

  % Regei-nos e guardai-nos
  \CC f e \CC d f \CCC e d c
  \divisioMaior
  \C c \CC d f \CCC f e d \C g
  \divisioMinima
  g g g a f \CCC g f e e
  \finalis

  % Senhor, em cada dia
  \C e \CC g a \C a a \CC a g \CQC a b c \CC b a
  \divisioMaior
  \C e \CC g a \CC a g \C a \CC a b \C g e
  \finalis

  % Louvamos vosso nome
  \C e \CC g a \C a g a \CCC b c b \C a
  \divisioMaior
  \C e \CC g a \C a g \C a \CC a b \C g g e
  \finalis

  % Dignai-vos, neste dia
  \C e \CC g a \C a g a \CCC b c b \C a
  \divisioMaior
  \C e \CC g a \CC a g \C a \CC a b \C g e
  \finalis

  % Senhor, tende piedade
  \C e \CC g a \C a g a \CCC b c b \C a
  \divisioMaior
  \C e \CC g a a g \C a \CC a b \C g e
  \finalis

  % Que desça sobre nós
  \C e \CC g a \C a a a a a a a g a \CCC b c b \C a
  \divisioMaior
  \C e \CC g a a a a a a a a \CC a g \C a \CC a b \C g e
  \finalis

  % Fazei que eu, para sempre
  \C c \CC d f \C f f e d f f f f f g a \CCmi g f \CC g f \CCmf e d
  \divisioMaior
  \C c \CC d f \C f \CC f e \CC d c \C f f f f f g a \CCmi g f \CCC g f e \Cmf e
  \finalis
}

hymnLyrics = \lyricmode {
  Sal -- vai __ o vos -- so po -- vo. Se -- nhor, __ a -- ben -- ço -- ai- -- o.

  \BoldLyrics
  Re -- gei- -- nos __ e guar -- dai- -- nos a -- té a vi -- da~e -- ter -- na.

  \NormalLyrics
  Se -- nhor, __ em ca -- da __ di -- a, __ fi -- éis, __ vos __ ben -- di -- ze -- mos,

  \BoldLyrics
  lou -- va -- mos vos -- so no -- me a -- go -- ra e pe -- los __ sé -- cu -- los.

  \NormalLyrics
  Dig -- nai- -- vos, nes -- te di -- a, guar -- dar- -- nos __ do pe -- ca -- do.

  \BoldLyrics
  Se -- nhor, __ ten -- de pie -- da -- de de nós, __ que a vós cla -- ma -- mos.

  \NormalLyrics
  Que des -- ça so -- bre nós, Se -- nhor, a vos -- sa gra -- ça, por -- que __ em vós pu -- se -- mos a nos -- sa __ con -- fi -- an -- ça.

  \BoldLyrics
  Fa -- zei __ que eu, pa -- ra sem -- pre, não se -- ja~en -- ver -- go -- nha -- _ do: __ Em vós, __ Se -- nhor, __ con -- fi -- o, sois vós mi -- nha~es -- pe -- ran -- _ ça!
}

\GregorianTranscriptionLayout

\score {
  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "hymn" {
      \hymnChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "hymn" \hymnLyrics
  >>
}
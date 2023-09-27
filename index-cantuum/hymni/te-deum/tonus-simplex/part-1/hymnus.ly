\version "2.24.1"

\include "gregorian.ly"
\include "../../../../../modules/lilypond/neums.ily"
\include "../../../../../modules/lilypond/spacing.ily"
\include "../../../../../modules/lilypond/layout.ily"
\include "../../../../../modules/lilypond/lyrics.ily"
\include "../../../../../modules/lilypond/symbols.ily"

hymnChant = \relative c' {
  \AntiphonSignature
  % A vós, ó Deus, louvamos
  \C e \CC g a \C a a \CC a g \CQC a b c \CC b a
  \divisioMaior
  \C a a g a b a g
  \finalis

  % A vós, eterno Pai
  c c c c b \CCC a b a
  \divisioMaior
  a a g a b a g
  \finalis

  % A vós cantam os anjos
  c c c c b \CC a b \C a
  \divisioMaior
  a a g a b a g
  \finalis

  % Sois Santo, Santo, Santo
  g \CCQC g a b c \CC b a
  \finalis
  \CCQC g a b c \CC b a
  \finalis
  \CC a e \CC g a \C a
  \divisioMinima
  a a a g a b a g
  \finalis

  % Proclamam céus e terra
  c c c c b \CC a b \C a
  \divisioMaior
  a a g a b a g
  \finalis

  % A vós celebra o coro
  c c c c b \CC a b \C a
  \divisioMaior
  a a g a b a a g
  \finalis

  % Vos louva dos Profetas
  c c c c b \CC a b \C a
  \divisioMaior
  a a g a b \CC a g
  \finalis

  % e o luminoso exército
  c c c c b \CC a b \C a a
  \divisioMaior
  a a g a b a a g
  \finalis

  % A vós, por toda a terra,
  c c c c b \CC a b \C a
  \divisioMaior
  a a g a b a g
  \finalis

  % Ó Pai onipotente
  \CCQC g a b c \CC b a
  \divisioMaior
  a a a a a a a g a b a g
  \finalis

  % E adora juntamente
  c c c c b \CC a b \C a
  \divisioMaior
  a a g a b a a g
  \finalis

  % Deus vivo e verdadeiro
  g a a g a b a
  \divisioMaior
  a a g a b a a g
  \finalis

  % Ó Cristo, rei da glória
  \CC g a \C a g a b g e
  \finalis

  % do Pai eterno filho
  a b a \CC g a \C b g e
  \finalis

  % Nascestes duma Virgem
  \C g \CC g c \C c b a \CC b c \CC b a
  \divisioMaior \break
  a a g a b \CC g e
  \finalis

  % Sofrendo vós a morte
  \C g \CC g c \C c c c c c c c c b a \CC b c \CC b a
  \divisioMaior
  a a a a a b a a g a b g e
  \finalis

  % Sentastes à direira
  \C g \CC g c \C c b a \CC b c \CC b a
  \divisioMaior
  a a g a b g e
  \finalis

  % Nós cremos que de novo
  \C a a a a a b a
  \divisioMaior
  a a g a b \CC g e
  \finalis

  % Portanto, vos pedimos
  \C g \CC g c \C c c c c c c c c b a \CC b c \CC b a
  \divisioMaior
  a a a a a b a a a g a b g e
  \finalis

  % Fazei-nos ser contados
  \C f f f f f f f f f e d f \break \CC e d \C c
  \divisioMaior
  c c c e f g g g g g a f \CCC g f e \C e
  \finalis
}

hymnLyrics = \lyricmode {
  A vós, __ ó Deus, lou -- va -- mos,

  a vós, Se -- nhor, can -- ta -- mos.

  \BoldLyrics
  A vós, E -- ter -- no Pai, __ a -- do -- ra to -- da~a ter -- ra.

  \NormalLyrics
  A vós can -- tam os an -- jos, os céus e seus po -- de -- res:

  \BoldLyrics
  Sois San -- to, __ San -- to, __ San -- _ to, Se -- nhor, Deus do u -- ni -- ver -- so!

  \NormalLyrics
  Pro -- cla -- mam céus e ter -- ra a vos -- sa~i -- men -- sa gló -- ria.

  \BoldLyrics
  A vós ce -- le -- bra~o co -- ro glo -- rio -- so dos A -- pós -- to -- los.

  \NormalLyrics
  Vos lou -- va dos Pro -- fe -- tas a no -- bre mul -- ti -- dão __

  \BoldLyrics
  e~o lu -- mi -- no -- so~e -- xér -- ci -- to dos vos -- sos san -- tos Már -- ti -- res.

  \NormalLyrics
  A vós por to -- da~a ter -- ra pro -- cla -- ma~a San -- ta~I -- gre -- ja,

  \BoldLyrics
  ó __ Pai __ o -- ni -- po -- ten -- te, de~i -- men -- sa ma -- jes -- ta -- de,

  \NormalLyrics
  e~a -- do -- ra jun -- ta -- men -- te o vos -- so Fi -- lho ú -- ni -- co,

  \BoldLyrics
  Deus vi -- vo~e ver -- da -- dei -- ro, e~ao vos -- so San -- to~Es -- pí -- ri -- to.

  \NormalLyrics
  Ó, Cris -- to, Rei da gló -- ria,

  \BoldLyrics
  do Pai e -- ter -- no Fi -- lho,

  \NormalLyrics
  nas -- ces -- tes du -- ma Vir -- gem, a fim de nos sal -- var. __

  \BoldLyrics
  So -- fren -- do vós a mor -- te, da mor -- te tri -- un -- fas -- tes, a -- brin -- do~aos que têm fé dos céus o Rei -- no~e -- ter -- no.

  \NormalLyrics
  Sen -- tas -- tes à di -- rei -- ta de Deus, do Pai na gló -- ria.

  \BoldLyrics
  Nós cre -- mos que de no -- vo vi -- reis co -- mo ju -- iz.

  \NormalLyrics
  Por -- tan -- to, vos pe -- di -- mos: sal -- vai os vos -- sos ser -- vos, que vós, Se -- nhor, re -- mis -- tes com san -- gue pre -- ci -- o -- so.

  \BoldLyrics
  Fa -- zei- -- nos ser con -- ta -- dos, Se -- nhor, vos su -- pli -- ca -- mos, em mei -- o~aos vos -- sos san -- tos, na vos -- sa~e -- ter -- na gló -- ria.
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "III"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "hymn" {
      \hymnChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "hymn" \hymnLyrics
  >>
}
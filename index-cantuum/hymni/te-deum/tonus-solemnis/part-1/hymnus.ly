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
  \C e \CC g a \C a g \CC a b \CCC b a g \C g
  \finalis

  % A vós, eterno Pai
  \CC g b \C b a \C c b \CCC a b a
  \divisioMaior
  \C e \CC g a g a b \CCC b a g \C g
  \finalis

  % A vós cantam os anjos
  \CC g b \C b a c b \CC a b \C a
  \divisioMaior
  e \CC g a a g \CC a b \CCC b a g \C g
  \finalis

  % Sois Santo, Santo, Santo
  g \CCQC g a b c \CC b a
  \finalis
  \CCQC g a b c \CC b a
  \finalis
  \CCCQC e g a b c \CC b a
  \divisioMinima
  a a a a g \CC a b \CCC b a g \C g
  \finalis

  % Proclamam céus e terra
  \CC g b \C b a c b \CC a b \C a
  \divisioMaior
  e \CC g a a g \CC a b \CCC b a g \C g
  \finalis

  % A vós celebra o coro
  \CC g b \C b a c b \CC a b \C a
  \divisioMaior
  e \CC g a \C a a g \CC a b \C b \CC a g \C g
  \finalis

  % Vos louva dos Profetas
  \CC g b \C b a c b \CC a b \C a
  \divisioMaior
  e \CC g a a g \CC a b \CCC b a g
  \finalis

  % e o luminoso exército
  \C g b a c b a \CC a b \C a a
  \divisioMaior
  e \CC g a a g \CC a b \C b \CC a g \C g
  \finalis

  % A vós, por toda a terra,
  \CC g b \C b a c b \CC a b \C a
  \divisioMaior
  e \CC g a \C a a g \CC a b \CCC b a g \C g
  \finalis

  % Ó Pai onipotente
  \CCQC g a b c \CC b a
  \divisioMaior
  e \CC g a \C a a a a a a g \CC a b \CCC b a g \C g
  \finalis

  % E adora juntamente
  g b b a c b \CC a b \C a
  \divisioMaior
  e \CC g a \C a g \CC a b \C b \CC a g \C g
  \finalis

  % Deus vivo e verdadeiro
  \CCQC g a b c \CC b a \C a a a \CC a b \C a
  \divisioMaior
  e \CC g a \C a a g \CC a b \C b \CC a g \C g
  \finalis

  % Ó Cristo, rei da glória
  \CC g a \C a a \CC a g \CC a b g e
  \finalis

  % do Pai eterno filho
  e \CC g a \C a \CC a g \CC a b \C g e
  \finalis

  % Nascestes duma Virgem
  \C e \CC g a a \C a g \CQC a b c \CC b a
  \divisioMaior
  e \CC g a \CC a g \C a \CC a b \CC g e
  \finalis

  % Sofrendo vós a morte
  \C e \CC g a \C a a a a a a a a a g \CQC a b c \CC b a
  \divisioMaior
  \C e \CC g a a a a b a a a \CC a g a \CC a b g e
  \finalis

  % Sentastes à direira
  \C e \CC g a \C a a g \CQC a b c \CC b a
  \divisioMaior
  \C e \CC g a \C a \CC a g \CC a b \C g e
  \finalis

  % Nós cremos que de novo
  \C e \CC g a \C a a a \CC a b \C a
  \divisioMaior
  a a \CC a g a \CC a b \CC g e
  \finalis

  % Portanto, vos pedimos
  \C e \CC g a \C a a a a a a a a a g \CQC a b c \CC b a
  \divisioMaior
  \C e \CC g a \C a a a b a a a \CC a g \C a \CC a b g e
  \finalis

  % Fazei-nos ser contados
  \C f f f f f f f f f e d f \CC e d \C c
  \divisioMaior
  c c c e f g g g g g a f \CCC g f e \C e
  \finalis
}

hymnLyrics = \lyricmode {
  A vós, __ ó Deus, lou -- va -- mos, __

  a vós, __ Se -- nhor, can -- ta -- mos.

  \BoldLyrics
  A __ vós, E -- ter -- no Pai, __ a -- do -- ra to -- da~a ter -- ra.

  \NormalLyrics
  A __ vós can -- tam os an -- jos, os céus __ e seus po -- de -- res:

  \BoldLyrics
  Sois San -- to, __ San -- to, __ San -- to, __ Se -- nhor, Deus do u -- ni -- ver -- so!

  \NormalLyrics
  Pro -- cla -- mam céus e ter -- ra a vos -- sa~i -- men -- sa __ gló -- ria.

  \BoldLyrics
  A __ vós ce -- le -- bra~o co -- ro glo -- ri -- o -- so dos A -- pós -- to -- los.

  \NormalLyrics
  Vos __ lou -- va dos Pro -- fe -- tas a no -- bre mul -- ti -- dão __

  \BoldLyrics
  e o lu -- mi -- no -- so~e -- xér -- ci -- to dos vos -- sos san -- tos __ Már -- ti -- res.

  \NormalLyrics
  A __ vós por to -- da~a ter -- ra pro -- cla -- ma~a San -- ta I -- gre -- ja,

  \BoldLyrics
  ó __ Pai __ o -- ni -- po -- ten -- te, de~i -- men -- sa ma -- jes -- ta -- de,

  \NormalLyrics
  e a -- do -- ra jun -- ta -- men -- te o vos -- so Fi -- lho __ ú -- ni -- co,

  \BoldLyrics
  Deus __ vi -- vo~e ver -- da -- dei -- ro, e~ao vos -- so San -- to Es -- pí -- ri -- to.

  \NormalLyrics
  Ó, __ Cris -- to, Rei __ da __ gló -- ria,

  \BoldLyrics
  do Pai __ e -- ter -- no __ Fi -- lho,

  \NormalLyrics
  nas -- ces -- tes du -- ma Vir -- gem, __ a fim __ de __ nos sal -- var. __

  \BoldLyrics
  So -- fren -- do vós a mor -- te, da mor -- te tri -- un -- fas -- tes, __ a -- brin -- do~aos que têm fé dos céus o Rei -- no e -- ter -- no.

  \NormalLyrics
  Sen -- tas -- tes à di -- rei -- ta __ de Deus, __ do Pai __ na gló -- ria.

  \BoldLyrics
  Nós cre -- mos que de no -- vo vi -- reis co -- mo ju -- iz. __

  \NormalLyrics
  Por -- tan -- to, vos pe -- di -- mos: sal -- vai os vos -- sos ser -- vos, __ que vós, Se -- nhor, re -- mis -- tes com san -- gue __ pre -- ci -- o -- so.

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
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
  e \CC g a \CC a b \C g c \CC b a \C g
  \finalis

  % A vós, eterno Pai
  c c c b a \CCCC b c b a
  \divisioMaior
  e \CC g a \CC a b \C g c \CC b a \C g
  \finalis

  % A vós cantam os anjos
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \CC a b \C g c \CC b a \C g
  \finalis

  % Sois Santo, Santo, Santo
  g \cadenzaOn g( a b \Quilisma c a g a \noBreak \cadenzaOff b) \C a
  \finalis
  \cadenzaOn g( a b \Quilisma c a g a \cadenzaOff b) \C a
  \finalis
  \C c b
  \divisioMinima
  a a a \CC a b \C g c \CC b a \C g
  \finalis

  % Proclamam céus e terra
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \C a \CC a b \C g c \CC b a \C g
  \finalis

  % A vós celebra o coro
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \C a \CC a b \C g c \CC b a \C a g
  \finalis

  % Vos louva dos Profetas
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \CC a b \C g c \CCC b a g
  \finalis

  % e o luminoso exército
  c c c b a \CC b c \C b a
  \divisioMaior
  e \CC g a \CC a b \C g c \CC b a \C a g
  \finalis

  % A vós, por toda a terra,
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \C a \CC a b \C g c \CC b a \C g
  \finalis

  % Ó Pai onipotente
  \CCQC g a b c \CC a b
  \divisioMaior
  b b b b b b c b \C g c \CC b a \C g
  \finalis

  % E adora juntamente
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \CC a b \C g c \CC b a \C a g
  \finalis

  % Deus vivo e verdadeiro
  \CCQC g a b c \CC a b \C b b b c b
  \divisioMaior
  a a a \CC a g \C a \CC a b \C g g e
  \finalis

  % Ó Cristo, rei da glória
  a a a \CC a g \CC a b \CC g g e
  \finalis

  % do Pai eterno filho
  e \CC g a \CC a b \C g c \CC b a \C g
  \finalis

  % Nascestes duma Virgem
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \CC a b \C g c \CCC b a g
  \finalis

  % Sofrendo vós a morte
  \C c c c c c c c c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \C a a a a a a a \CC a b \C g c \CC b a \C g
  \finalis

  % Sentastes à direira
  c c c b a \CCC b c b \C a
  \divisioMaior
  e \CC g a \CC a b \C g c \CC b a \C g
  \finalis

  % Nós cremos que de novo
  \C g \CCQC g a b c \CC a b \C b c b a
  \divisioMaior
  a a \CC a g a \CC a b \CC g e
  \finalis

  % Portanto, vos pedimos
  \C e \CC g a \C a a a a a a a a g a \CCC b c b \C a
  \divisioMaior
  \C e \CC g a \C a a a g a a a \CC a g \C a \CC a b \C g e
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
  A vós, E -- ter -- no Pai, __ a -- do -- ra to -- da~a ter -- ra.

  \NormalLyrics
  A vós can -- tam os an -- jos, os céus __ e __ seus po -- de -- res:

  \BoldLyrics
  Sois San -- to, San -- to, San -- to, Se -- nhor, Deus do __ u -- ni -- ver -- so!

  \NormalLyrics
  Pro -- cla -- mam céus e ter -- ra a vos -- sa i -- men -- sa gló -- ria.

  \BoldLyrics
  A vós ce -- le -- bra~o co -- ro glo -- ri -- o -- so __ dos A -- pós -- to -- los.

  \NormalLyrics
  Vos lou -- va dos Pro -- fe -- tas a no -- bre __ mul -- ti -- dão __

  \BoldLyrics
  e~o lu -- mi -- no -- so~e -- xér -- ci -- to dos vos -- sos __ san -- tos Már -- ti -- res.

  \NormalLyrics
  A vós por to -- da~a ter -- ra pro -- cla -- ma~a San -- ta I -- gre -- ja,

  \BoldLyrics
  ó __ Pai __ o -- ni -- po -- ten -- te, de~i -- men -- sa ma -- jes -- ta -- de,

  \NormalLyrics
  e~a -- do -- ra jun -- ta -- men -- te o vos -- so __ Fi -- lho ú -- ni -- co,

  \BoldLyrics
  Deus __ vi -- vo~e ver -- da -- dei -- ro, e~ao vos -- so San -- to Es -- pí -- ri -- to.

  \NormalLyrics
  Ó, Cris -- to, Rei __ da __ gló -- ria,

  \BoldLyrics
  do Pai __ e -- ter -- no Fi -- lho,

  \NormalLyrics
  nas -- ces -- tes du -- ma Vir -- gem, a fim de __ nos sal -- var. __

  \BoldLyrics
  So -- fren -- do vós a mor -- te, da mor -- te tri -- un -- fas -- tes, a -- brin -- do~aos que têm fé dos céus o Rei -- no e -- ter -- no.

  \NormalLyrics
  Sen -- tas -- tes à di -- rei -- ta de Deus, __
  do __ Pai na gló -- ria.

  \BoldLyrics
  Nós cre -- mos __ que de no -- vo vi -- reis co -- mo ju -- iz. __

  \NormalLyrics
  Por -- tan -- to, vos pe -- di -- mos: sal -- vai os vos -- sos ser -- vos, que vós, __ Se -- nhor, re -- mis -- tes com san -- gue __ pre -- ci -- o -- so.

  \BoldLyrics
  Fa -- zei- -- nos ser con -- ta -- dos, Se -- nhor, vos su -- pli -- ca -- mos, em mei -- o~aos vos -- sos san -- tos, na vos -- sa~e -- ter -- na gló -- ria.
}

\GregorianTranscriptionLayout

\score {
  \header {
    piece = "IV"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "hymn" {
      \hymnChant
    }

    \new GregorianTranscriptionLyrics \lyricsto "hymn" \hymnLyrics
  >>
}
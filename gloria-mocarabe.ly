\version "2.24.1"

\include "gregorian.ly"
\include "modules/lilypond/neums.ily"
\include "modules/lilypond/spacing.ily"
\include "modules/lilypond/layout.ily"
\include "modules/lilypond/lyrics.ily"

gloriaChant = \relative c' {
  \AntiphonSignature

  % Glória a Deus nas alturas
  \CC e g \C a a b a \CC g a \C a \finalis

  % e paz na terra aos homens por ele amados
  a a a a a a a \divisioMinima a b a \CC g a a \finalis

  % Senhor Deus, rei dos céus
  a a a b a \CCC g a g \divisioMinima

  % Deus Pai todo-poderoso
  \C a b c a b g \CC g a \C a \finalis

  % Nós vos louvamos
  a a a \CC g a \C a \finalis

  % Nós vos bendizemos
  a a b g a g \finalis

  % Nós vos adoramos
  g a b g \CC g a \C a \finalis

  % Nós vos glorificamos
  e g a b g \CC g a \C a \finalis

  % Nós vos damos graças
  g g a a a a \divisioMinima

  % por vossa imensa glória
  a a a a b \CC g a \C a \finalis

  % Senhor Jesus Cristo
  e \CC g a a b \CC g a \C a \divisioMinima

  % Filho Unigênito
  a a a a a \CC a b \C g \finalis

  % Senhor Deus, Cordeiro de Deus,
  e \CC g a \C a a g a a \CCC a b a \divisioMinima

  % Filho de Deus Pai
  g a b g \CC g a \finalis

  % Vós que tirais o pecado do mundo,
  \C a a a a a a b a a \CC g a \C g \divisioMinima

  % tende piedade de nós
  \C g g g a b a \CC g a \C a \finalis

  % Vós que tirais o pecado do mundo,
  \C e g a a a a b a a \CC g a \C g \divisioMinima

  % acolhei a nossa súplica
  \C e g a a b a \CC g a \C a a \finalis

  % Vós que estais à direita do Pai, tende piedade de nós
  e g a a a b a a \CCC g a g \divisioMinima \C g g g a b c a a \finalis

  % Só vós sois o Santo
  \C e \CC g a \C b a \CC g a \C a \finalis

  % Só vós, o Senhor
  \C e \CC g a \C a b g \finalis

  % Só vós, o Altíssimo,
  \C e \CC g a \C a a b a g \divisioMinima

  % Jesus Cristo
  g a \cadenzaOn a( c \cadenzaOff b) \CCmi a g \CCCmf a b a \finalis

  % Com o Espírito Santo, na glória de Deus Pai.
  \C a a a a g g a g \divisioMinima a \CC a b \C g \CCmi g a \CC b a
  \CCCmf b c b \CC e, g \CCC a c b \CC g a \finalis

  % Amém.
  \CC b a \C a \finalis

}

gloriaLyrics = \lyricmode {
  Gló -- ria~a Deus nas al -- tu -- ras
  e paz na ter -- ra~aos ho -- mens por E -- le~a -- ma -- dos.
  Se -- nhor Deus, Rei dos céus, __ Deus Pai to -- do -- -po -- de -- ro -- so:
  nós Vos lou -- va -- mos,
  nós Vos ben -- di -- ze -- mos,
  nós Vos a -- do -- ra -- mos,
  nós Vos glo -- ri -- fi -- ca -- mos,
  nós Vos da -- mos gra -- ças,
  por vos -- sa~i -- men -- sa gló -- ria.
  Se -- nhor __ Je -- sus Cris -- to,
  Fi -- lho U -- ni -- gê -- ni -- to,
  Se -- nhor __ Deus, Cor -- dei -- ro de Deus, __
  Fi -- lho de Deus Pai: __
  Vós que ti -- rais o pe -- ca -- do do mun -- do,
  ten -- de pi -- e -- da -- de de __ nós;
  Vós que ti -- rais o pe -- ca -- do do mun -- do,
  a -- co -- lhei a nos -- sa sú -- pli -- ca;
  Vós que~es -- tais à di -- rei -- ta do Pai, __
  ten -- de pi -- e -- da -- de de nós.
  Só Vós __ sois o San -- to; só Vós, __ o Se -- nhor;
  só Vós, __ o Al -- tís -- si -- mo, Je -- sus Cris -- to; __ _
  com o Es -- pí -- ri -- to San -- to,
  na gló -- ri -- a __ _ _ de __ Deus __ Pai. __
  A -- mém.
}

#(set-global-staff-size 20)

\GregorianTranscriptionLayout

\paper {
  #(define fonts
     (set-global-fonts
      #:roman "EB Garamond"
      #:factor (/ staff-height pt 20)))
}

\header {
  dedication = ""
  title = "Glória a Deus nas alturas"
  subtitle = "melodia moçárabe"
  composer = "L.: Missal Romano, 3ª Edição (CNBB)"
  arranger = "M.: Kyriale Simplex (n. 40)"
  meter = ""
  tagline = ##f
}

\score {
  \header {
    opus = "Adapt.: Laércio de Sousa"
  }

  \new GregorianTranscriptionStaff <<
    \new GregorianTranscriptionVoice = "gloria" \gloriaChant

    \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaLyrics
  >>
}
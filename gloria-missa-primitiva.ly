\version "2.24.1"

\include "gregorian.ly"
\include "modules/lilypond/neums.ily"
\include "modules/lilypond/spacing.ily"
\include "modules/lilypond/layout.ily"
\include "modules/lilypond/lyrics.ily"

gloriaChant = \relative c' {
  \AntiphonSignature

  % Glória a Deus nas alturas
  \CC e g g \C a a g a g e \finalis

  % e paz na terra aos homens por ele amados
  e g a g a b a \divisioMinima a g a g e \finalis

  % Senhor Deus, rei dos céus
  e \CC g a \C a g a \CC g e \divisioMinima

  % Deus Pai todo-poderoso
  \CC e g \C a a a g a g e \finalis

  % Nós vos louvamos
  g g a g e \finalis

  % Nós vos bendizemos
  g g a a g e \finalis

  % Nós vos adoramos
  g g a a g e \finalis

  % Nós vos glorificamos
  g g a g a g e \finalis

  % Nós vos damos graças
  e g \CC a g \C a b a \divisioMinima

  % por vossa imensa glória
  a a a g a g e \finalis

  % Senhor Jesus Cristo
  e \CC g a g a b a \divisioMinima

  % Filho Unigênito
  a a g a g e e \finalis

  % Senhor Deus, Cordeiro de Deus,
  e \CC g a \CC g e \divisioMinima \C e g a a \CC b a \divisioMinima

  % Filho de Deus Pai
  a a g a \CC g e \finalis

  % Vós que tirais o pecado do mundo,
  \C e g a a a a a g a b a \divisioMinima

  % tende piedade de nós
  \C a a a a a g a \CC g e \finalis

  % Vós que tirais o pecado do mundo,
  \C e g a a a a a g a b a \divisioMinima

  % acolhei a nossa súplica
  b a a a g a g e e \finalis

  % Vós que estais à direita do Pai, tende piedade de nós
  e g a a a a g a \CC b a \divisioMinima \C a a a a a g a \CC g e \finalis

  % Só vós sois o Santo
  \C e \CC g a \C g a g e \finalis

  % Só vós, o Senhor
  \C e \CC g a \C g a \CC g e \finalis

  % Só vós, o Altíssimo,
  \C e g a a g e e \divisioMinima

  % Jesus Cristo
  e g \CCC a b a \C a \finalis

  % Com o Espírito Santo, na glória de Deus Pai.
  \C e g a a a a b a \divisioMinima a a a g \CCCmi a b g \CCmf g e \C e \finalis

  % Amém.
  \CQCCC e f g f e \CC d e \finalis

}

gloriaLyrics = \lyricmode {
  Gló -- ria a Deus nas al -- tu -- ras,
  e paz na ter -- ra~aos ho -- mens por e -- le~a -- ma -- dos.
  Se -- nhor __ Deus, rei dos céus, __ Deus __ Pai to -- do- -- po -- de -- ro -- so.
  Nós vos lou -- va -- mos,
  nós vos ben -- di -- ze -- mos,
  nós vos a -- do -- ra -- mos,
  nós vos glo -- ri -- fi -- ca -- mos,
  nós vos da -- mos gra -- ças
  por vos -- sa~i -- men -- sa gló -- ria.
  Se -- nhor __ Je -- sus Cris -- to,
  Fi -- lho U -- ni -- gê -- ni -- to,
  Se -- nhor __ Deus, __ Cor -- dei -- ro de Deus, __
  Fi -- lho de Deus Pai. __
  Vós que ti -- rais o pe -- ca -- do do mun -- do,
  ten -- de pi -- e -- da -- de de nós. __
  Vós que ti -- rais o pe -- ca -- do do mun -- do,
  a -- co -- lhei a nos -- sa sú -- pli -- ca.
  Vós que~es -- tais à di -- rei -- ta do Pai, __
  ten -- de pi -- e -- da -- de de nós. __
  Só vós __ sois o San -- to,
  só vós, __ o Se -- nhor, __
  só vós, o Al -- tís -- si -- mo,
  Je -- sus Cris -- to,
  com o Es -- pí -- ri -- to San -- to,
  na gló -- ria de Deus __ _ Pai.
  A -- mém. __
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
  subtitle = "“missa primitiva”"
  composer = "L.: Missal Romano, 3ª Edição (CNBB)"
  arranger = "M.: Kyriale Simplex (Ordinário I)"
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
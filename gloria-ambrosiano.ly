\version "2.24.1"

\include "gregorian.ly"
\include "modules/lilypond/neums.ily"
\include "modules/lilypond/spacing.ily"
\include "modules/lilypond/layout.ily"
\include "modules/lilypond/lyrics.ily"

GloriaMelisma = \relative c'' {
  \CCCCCC c c d c b c \CCCCmf a b a g
}

gloriaChant = \relative c'' {
  \AntiphonSignature
  % Glória a Deus nas alturas
  \C a a a a a a g \finalis

  % e paz na terra aos homens por ele amados
  g a a a a b a a a a a g \finalis

  % Senhor Deus, rei dos céus
  a a \CC a g \C a a \CC a g \divisioMinima

  % Deus Pai todo-poderoso
  \C a a a a a a a g \finalis

  % Nós vos louvamos
  a a a a g \finalis

  % Nós vos bendizemos
  a a a a a g \finalis

  % Nós vos adoramos
  a a a a a g \finalis

  % Nós vos glorificamos
  a a a a a a g \finalis

  % Nós vos damos graças
  g g g g g \CCCmi b a g \GloriaMelisma \divisioMinima

  % por vossa imensa glória
  a a a b a a g \finalis

  % Senhor Jesus Cristo
  a \CC a g \C b b c \CCCCmi a b a g \GloriaMelisma \divisioMinima

  % Filho Unigênito
  a a a a a a g \finalis

  % Senhor Deus, Cordeiro de Deus, Filho de Deus Pai
  a a \CC a g \C a a a a \CC a g \C a a a a \CC a g \finalis

  % Vós que tirais o pecado do mundo,
  \C a a a a a a b a a g \CCCmi b a g \GloriaMelisma \divisioMinima

  % tende piedade de nós
  \C a a a a a a a \CC a g \finalis

  % Vós que tirais o pecado do mundo,
  \C a a a a a a b a a g \CCCmi b a g \GloriaMelisma \divisioMinima

  % acolhei a nossa súplica
  \C a a a a a a a a g \finalis

  % Vós que estais à direita do Pai, tende piedade de nós
  g a a a a a a a \CC a g \C a a a a a a a \CC a g \finalis

  % Só vós sois o Santo
  \C a a a a a g \finalis

  % Só vós, o Senhor
  a a a a \CC a g \finalis

  % Só vós, o Altíssimo, Jesus Cristo
  \C a a a a a a g b b c \CCCCmi a b a g \GloriaMelisma \finalis

  % Com o Espírito Santo, na glória de Deus Pai.
  \C a a a a a a a a a \CC b a \C g a \CC b a \C a \finalis

  % Amém.
  g a \finalis

  a \CCCmi g a g \CCCC a b a g \CCCC a g f e \CC f g \CC g g \CCCCmf g f e e \finalis

}

gloriaLyrics = \lyricmode {
  Gló -- ria~a Deus nas al -- tu -- ras,
  e paz na ter -- ra~aos ho -- mens por e -- le~a -- ma -- dos.
  Se -- nhor Deus, __ rei dos céus, __ Deus Pai to -- do- -- po -- de -- ro -- so.
  Nós vos lou -- va -- mos,
  nós vos ben -- di -- ze -- mos,
  nós vos a -- do -- ra -- mos,
  nós vos glo -- ri -- fi -- ca -- mos,
  nós vos da -- mos gra -- ças __ _ _
  por vos -- sa~i -- men -- sa gló -- ria.
  Se -- nhor __ Je -- sus Cris -- to, __ _ _
  Fi -- lho U -- ni -- gê -- ni -- to,
  Se -- nhor Deus, __ Cor -- dei -- ro de Deus, __
  Fi -- lho de Deus Pai. __
  Vós que ti -- rais o pe -- ca -- do do mun -- do, __ _ _
  ten -- de pi -- e -- da -- de de nós. __
  Vós que ti -- rais o pe -- ca -- do do mun -- do, __ _ _
  a -- co -- lhei a nos -- sa sú -- pli -- ca.
  Vós que~es -- tais à di -- rei -- ta do Pai, __
  ten -- de pi -- e -- da -- de de nós. __
  Só vós sois o San -- to,
  só vós, o Se -- nhor, __
  só vós, o Al -- tís -- si -- mo,
  Je -- sus Cris -- to, __ _ _
  com o Es -- pí -- ri -- to San -- to,
  na gló -- ria de Deus __ Pai.
  A -- mém.
  \set stanza = "ou"
  A -- mém. __ _ _ _ _ _
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
  subtitle = "melodia ambrosiana"
  composer = "L.: Missal Romano, 3ª Edição (CNBB)"
  arranger = "M.: Kyriale Simplex (Ordinário III)"
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
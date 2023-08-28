\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioVIII = \relative c'' { \C g a }
chantGloriaInchoatioVIII = \relative c'' { \C a }

chantTenorVIII = \relative c'' { \T c }

chantFlexaVIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne c a a #options
    }
  #})

chantMediatioVIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantTerminatioVIIIc =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C a c
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantTerminatioVIIIG =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C b c
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantSegmentGloriaPatriVIII = {
  \time 1/4
  \key c \major
  \chantInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantGloriaInchoatioVIII
  \chantTenorVIII
  \chantMediatioVIII #'()
  \divisioMaxima
  \chantTenorVIII
}

gloriaPatriChantVIIIc = {
  \chantSegmentGloriaPatriVIII
  \chantTerminatioVIIIc #'((syneresis . total))
  \finalis
}

gloriaPatriChantVIIIG = {
  \chantSegmentGloriaPatriVIII
  \chantTerminatioVIIIG #'((syneresis . total))
  \finalis
}

gloriaPatriVerseVIII = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" San -- to,
  Co -- \Tenor "mo era no princípio, agora e" sem -- pre,
  \Tenor "pelos séculos dos sécu" -- los, a -- mém! __
}
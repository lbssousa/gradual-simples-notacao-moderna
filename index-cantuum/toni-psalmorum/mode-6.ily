\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioVI =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeInchoatioOnePostTwo f g a #options
    }
  #})

chantTenorVI = \relative c'' { \T a }

chantFlexaVI =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantMediatioVI =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g
      \MakeAccentusOnePostOne a f f #options
    }
  #})

chantTerminatioVIF =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \C f \CC g a
      \MakeAccentusOnePostOne g f f #options
    }
  #})

gloriaPatriChantVIF = {
  \time 1/4
  \chantInchoatioVI #'((dieresis . total))
  \chantTenorVI
  \chantMediatioVI #'()
  \divisioMaxima
  \chantInchoatioVI #'()
  \chantTenorVI
  \chantMediatioVI #'()
  \divisioMaxima
  \chantTenorVI
  \chantTerminatioVIF #'((syneresis . total))
  \finalis
}

gloriaPatriVerseVIF = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria ao
  \Tenor "Pai e ao Filho e ao Espíri" -- to San -- to,
  Co -- mo __ \Tenor "era no princípio, ago" -- ra~e sem -- pre,
  \Tenor "pelos séculos dos sécu" -- los, a -- mém! __
}
\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"

chantInchoatioIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwo g a c #options
    }
  #})

chantTenorIII = \relative c'' { \T c }

chantFlexaIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne c a a #options
    }
  #})

chantMediatioPrimusIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne d c c #options
    }
  #})

chantMediatioSecundusIII =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusTwoPreEpenthesisPostOne c b a c #options
    }
  #})

chantTerminatioIIIa =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C a
      \MakeAccentusOnePostTwo c c b a #options
    }
  #})

chantTerminatioIIIg =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \CC c b \CC a b
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantSegmentGloriaPatriIII = {
  \time 1/4
  \key c \major
  \chantInchoatioIII #'((dieresis . total))
  \chantTenorIII
  \chantMediatioPrimusIII #'()
  \chantMediatioSecundusIII #'()
  \divisioMaxima
  \chantInchoatioIII #'()
  \chantMediatioPrimusIII #'()
  \chantMediatioSecundusIII #'()
  \divisioMaxima
  \chantTenorIII
}

gloriaPatriChantIIIa = {
  \chantSegmentGloriaPatriIII
  \chantTerminatioIIIa #'((syneresis . total))
  \finalis
}

gloriaPatriChantIIIg = {
  \chantSegmentGloriaPatriIII
  \chantTerminatioIIIg #'((syneresis . total))
  \finalis
}

verseSegmentGloriaPatriIII = \lyricmode {
  \set stanza = "Opcional:"
  Gló -- ria~ao
  \Tenor "Pai e ao Filho e ao Espírito" San -- to,
  Co -- \Tenor "mo era no princípio, agora e" sem -- pre,
}

gloriaPatriVerseIIIa = \lyricmode {
  \verseSegmentGloriaPatriIII
  \Tenor "pelos séculos dos séculos," a -- mém! __
}

gloriaPatriVerseIIIg = \lyricmode {
  \verseSegmentGloriaPatriIII
  \Tenor "pelos séculos dos sécu" -- los, a -- mém! __
}
\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"
\include "../../modules/lilypond/layout.ily"

MySpacer = \Spacer 13

chantInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwo a g a #options
    }
  #})

chantTenorIVA = \relative c'' { \T a }

chantFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

chantMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g \C a
      \MakeAccentusOnePostOne b a a #options
    }
  #})

chantTerminatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g a b
      \MakeAccentusOnePostOne a e e #options
    }
  #})

chantTerminatioIVc =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOne a g g #options
    }
  #})

rightInchoatioIVA = \relative c' {
  c2*3/2~
}

rightTenorIVA = \relative c' {
  c2*1/2~
}

rightFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeOrganFlexa b #options
    }
  #})

rightMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c' {
      \MakeOrganMediatioIV c #options ~
    }
  #})

rightTenorTerminatioIVA = \relative c' {
  d2*1/2
}

rightTerminatioIVc = \relative c' {
  b2*1/2
}

leftInchoatioIVA = \relative c {
  e2*3/2~
}

leftTenorIVA = \relative c {
  e2*1/2~
}

leftFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c {
      \MakeOrganFlexa d #options
    }
  #})

leftMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c {
      \MakeOrganMediatioIV e #options ~
    }
  #})

leftTenorTerminatioIVA = \relative c {
  f2*1/2
}

leftTerminatioIVc = \relative c {
  e2*1/2
}

pedalInchoatioIVA = \relative c {
  a2*3/2~
}

pedalTenorIVA = \relative c {
  a2*1/2~
}

pedalFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c {
      \MakeOrganFlexa a #options
    }
  #})

pedalMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c {
      \MakeOrganMediatioIV a #options ~
    }
  #})

pedalTenorTerminatioIVc = \relative c {
  d2*1/2
}

pedalTerminatioIVc = \relative c {
  \tweak X-offset #1.2 e2*1/2
}

chordsInchoatioIVA = \chordmode {
  a4*3:m
}

chordsTenorIVA = \chordmode {
  a4:m
}

chordsMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'epenthesis options)
    ((total) #{ \chordmode { a4*7:m } #})
    ((partial) #{ \chordmode { a4*7:m } #})
    (else #{ \chordmode { a4*4:m } #})))

chordsFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'epenthesis options)
    ((total) #{ \chordmode { b4:m/d } #})
    ((partial) #{ \chordmode { b4:m/d } #})
    (else #{ \chordmode { b4*2:m/d } #}))
)

chordsTenorTerminatioIVA = \chordmode {
  d4:m
}

chordsTerminatioIVc = \chordmode {
  e4:m
}

chantSegmentGloriaPatriIVA = {
  \time 1/4
  \chantInchoatioIVA #'((dieresis . total))
  \chantTenorIVA
  \chantMediatioIVA #'()
  \divisioMaxima
  \chantInchoatioIVA #'()
  \chantTenorIVA
  \chantMediatioIVA #'()
  \divisioMaxima
  \chantTenorIVA
}

gloriaPatriOrganRightIVc = {
  \PsalmSignature
  \rightInchoatioIVA
  \rightTenorIVA
  \rightMediatioIVA #'()
  \divisioMaxima
  \rightInchoatioIVA
  \rightTenorIVA
  \rightMediatioIVA #'()
  \divisioMaxima
  \rightTenorTerminatioIVA
  \rightTerminatioIVc s4
  \finalis
  \MySpacer
}

gloriaPatriOrganLeftIVc = {
  \clef bass
  \leftInchoatioIVA
  \leftTenorIVA
  \leftMediatioIVA #'()
  \divisioMaxima
  \leftInchoatioIVA
  \leftTenorIVA
  \leftMediatioIVA #'()
  \divisioMaxima
  \leftTenorTerminatioIVA (
  \leftTerminatioIVc ) s4
  \finalis
  \MySpacer
}

gloriaPatriOrganPedalIVc = {
  \pedalInchoatioIVA
  \pedalTenorIVA
  \pedalMediatioIVA #'()
  \pedalInchoatioIVA
  \pedalTenorIVA
  \pedalMediatioIVA #'()
  \pedalTenorTerminatioIVc (
  \pedalTerminatioIVc )
}

gloriaPatriChantIVA = {
  \chantSegmentGloriaPatriIVA
  \chantTerminatioIVA #'((syneresis . total))
  \finalis
}

gloriaPatriChantIVc = {
  \chantSegmentGloriaPatriIVA
  \chantTerminatioIVc #'((syneresis . total))
  \finalis
  \MySpacer
}

verseSegmentGloriaPatriIVA = \lyricmode {
  \set stanza = "Opcional:"
  \BeginInchoatio Gló -- ria ao \EndInchoatio
  \Tenor "Pai e ao Filho e ao Espí" -- \I ri -- \I to \B San -- to,
  \I co -- \I mo __ \Tenor "era no princípio, a" --
  \BeginItalic
  go -- ra~e
  \EndItalic
  \B sem -- pre,
}

gloriaPatriVerseIVA = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos sé" -- \I cu -- \I los, \I a -- \B mém! __
}

gloriaPatriVerseIVc = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos séculos, a" -- \B mém! __
}

gloriaPatriChantPartIVc = \new GregorianTranscriptionStaff <<
  \new GregorianTranscriptionVoice = "gloria" {
    \gloriaPatriChantIVc
  }

  \new GregorianTranscriptionLyrics \lyricsto "gloria" \gloriaPatriVerseIVc
>>

gloriaPatriOrganPartIVc = \new PianoStaff <<
  \new GregorianTranscriptionStaff = "right" <<
    %\new GregorianTranscriptionVoice { \voiceOne \gloriaPatriChantIVc }
    \new GregorianTranscriptionVoice { \voiceTwo \gloriaPatriOrganRightIVc }
  >>

  \new GregorianTranscriptionStaff = "left+pedal" <<
      \new GregorianTranscriptionVoice { \voiceOne \gloriaPatriOrganLeftIVc }
      \new GregorianTranscriptionVoice { \voiceTwo \gloriaPatriOrganPedalIVc }
    >>
>>

gloriaPatriChordsPartIVc = \new ChordNames {
  \chordsInchoatioIVA
  \chordsTenorIVA
  \chordsMediatioIVA #'()
  \chordsInchoatioIVA
  \chordsTenorIVA
  \chordsMediatioIVA #'()
  \chordsTenorTerminatioIVA
  \chordsTerminatioIVc
}
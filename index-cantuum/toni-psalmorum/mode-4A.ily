\version "2.24.1"

\include "gregorian.ly"
\include "../../modules/lilypond/neums.ily"
\include "../../modules/lilypond/spacing.ily"
\include "../../modules/lilypond/psalmody.ily"
\include "../../modules/lilypond/lyrics.ily"
\include "../../modules/lilypond/layout.ily"

chantInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwo a g a #options
    }
  #})

chantInchoatioIVASlot =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeInchoatioOnePostTwoSlot a g a #options
    }
  #})

chantTenorIVA = \relative c'' {
  \MakeTenor a ##f
}

chantTenorIVASlot = \relative c'' {
  \MakeTenor a ##t
}

chantFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \MakeAccentusOnePostOneSlot a g g #options
    }
  #})

chantMediatioIVA =
#(define-music-function
  (options)
  (alist?)
  #{
    \relative c'' {
      \C g \C a
      \MakeAccentusOnePostOneSlot b a a #options
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

rightInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \relative c' { c2*3/2~ } #})
    ((partial) #{ \relative c' { c2*3/2~ } #})
    (else #{ \relative c' { c2~ } #})))

rightInchoatioIVASlot =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \relative c' { s8 c2*3/4~ } #})
    ((partial) #{ \relative c' { s8 c2*3/4~ } #})
    (else #{ \relative c' { s8 c2*3/4~ } #})))

rightTenorFlexaIVA = \relative c' {
  c\breve*1/8~
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

rightTenorMediatioIVA = \relative c' {
  c\breve*5/8
}

rightTenorTerminatioIVA = \relative c' {
  \MakeTenorTerminatio d ##f
}

rightTenorTerminatioIVASlot = \relative c' {
  \MakeTenorTerminatio d ##t
}

rightTerminatioIVc =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'syneresis options)
    ((total) #{ \relative c' { b2*1/2 } #})
    ((partial) #{ \relative c' { b2 } #})
    (else #{ \relative c' { b2 } #})))

leftInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \relative c { e2*3/2~ } #})
    ((partial) #{ \relative c { e2*3/2~ } #})
    (else #{ \relative c { e2~ } #})))

leftInchoatioIVASlot =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \relative c { s8 e2*3/4~ } #})
    ((partial) #{ \relative c { s8 e2*3/4~ } #})
    (else #{ \relative c { s8 e2*3/4~ } #})))

leftTenorFlexaIVA = \relative c {
  e\breve*1/8~
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

leftTenorMediatioIVA = \relative c {
  e\breve*5/8
}

leftTenorTerminatioIVA = \relative c {
  \MakeTenorTerminatio f ##f
}

leftTenorTerminatioIVASlot = \relative c {
  \MakeTenorTerminatio f ##t
}

leftTerminatioIVc =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'syneresis options)
    ((total) #{ \relative c { e2*1/2 } #})
    ((partial) #{ \relative c { e2 } #})
    (else #{ \relative c { e2 } #})))

pedalInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \relative c { a2*3/2~ } #})
    ((partial) #{ \relative c { a2*3/2~ } #})
    (else #{ \relative c { a2~ } #})))

pedalInchoatioIVASlot =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \relative c { s8 a2*3/4~ } #})
    ((partial) #{ \relative c { a8 e2*3/4~ } #})
    (else #{ \relative c { s8 a2*3/4~ } #})))

pedalTenorFlexaIVA = \relative c {
  a\breve*1/8~
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

pedalTenorMediatioIVA = \relative c {
  a\breve*5/8
}

pedalTenorTerminatioIVc = \relative c {
  \MakeTenorTerminatio d ##f
}

pedalTenorTerminatioIVcSlot = \relative c {
  \MakeTenorTerminatio d ##t
}

pedalTerminatioIVc =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'syneresis options)
    ((total) #{ \relative c { \Roff e2*1/2 } #})
    ((partial) #{ \relative c { \Roff e2 } #})
    (else #{ \relative c { \Roff e2 } #})))

chordsInchoatioIVA =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \chordmode { a2*3/2:m } #})
    ((partial) #{ \chordmode { a2*3/2:m } #})
    (else #{ \chordmode { a2:m } #})))

chordsInchoatioIVASlot =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \chordmode { s8 a2*3/4:m } #})
    ((partial) #{ \chordmode { s8 a2*3/4:m } #})
    (else #{ \chordmode { s8 a2*3/4:m } #})))

chordsTenorFlexaIVA = \chordmode {
  a\breve*1/8:m
}

chordsFlexaIVA =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'epenthesis options)
    ((total) #{ \chordmode { g8:9/a g/a } #})
    ((partial) #{ \chordmode { g4:9/a g/a } #})
    (else #{ \chordmode { g4:9/a g/a } #}))
)

chordsTenorMediatioIVA = \chordmode {
  a\breve*5/8:m
}

chordsTenorTerminatioIVA = \chordmode {
  d\breve*1/8:m
}

chordsTenorTerminatioIVASlot = \chordmode {
  s8 d\breve*1/16:m
}

chordsTerminatioIVc =
#(define-music-function
  (options)
  (alist?)
  (case (assoc-get 'syneresis options)
    ((total) #{ \chordmode { e8:sus4 e:m } #})
    ((partial) #{ \chordmode { e4:sus4 e:m } #})
    (else #{ \chordmode { e4:sus4 e:m } #})))

chantSegmentGloriaPatriIVA = {
  \PsalmSignature
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
  \rightInchoatioIVA #'((dieresis . total))
  \rightTenorMediatioIVA ~
  \divisioMaxima
  \rightInchoatioIVA #'()
  \rightTenorMediatioIVA
  \divisioMaxima
  \rightTenorTerminatioIVA
  \rightTerminatioIVc #'((syneresis . total))
  \finalis
}

gloriaPatriOrganLeftIVc = {
  \clef bass
  \leftInchoatioIVA #'((dieresis . total))
  \leftTenorMediatioIVA ~
  \divisioMaxima
  \leftInchoatioIVA #'()
  \leftTenorMediatioIVA
  \divisioMaxima
  \leftTenorTerminatioIVA
  \leftTerminatioIVc #'((syneresis . total))
  \finalis
}

gloriaPatriOrganPedalIVc = {
  \pedalInchoatioIVA #'((dieresis . total))
  \pedalTenorMediatioIVA ~
  \pedalInchoatioIVA #'()
  \pedalTenorMediatioIVA
  \pedalTenorTerminatioIVc
  \pedalTerminatioIVc #'((syneresis . total))
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
}

verseSegmentGloriaPatriIVA = \lyricmode {
  \set stanza = "Opcional:"
  \BeginInchoatio Gló -- ria ao \EndInchoatio
  \Tenor "Pai e ao Filho e ao Espí" -- \I ri -- \I to \B San -- to, \MediatioMark
  \I co -- \I mo __ \Tenor "era no princípio, a" --
  \BeginItalic
  go -- ra~e
  \EndItalic
  \B sem -- pre, \MediatioMark
}

gloriaPatriVerseIVA = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos sé" -- \I cu -- \I los, \I a -- \B mém! __
}

gloriaPatriVerseIVc = \lyricmode {
  \verseSegmentGloriaPatriIVA
  \Tenor "pelos séculos dos séculos, a" -- \B mém!
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
  \set chordChanges = ##t
  \chordsInchoatioIVA #'((dieresis . total))
  \chordsTenorMediatioIVA
  \chordsInchoatioIVA #'()
  \chordsTenorMediatioIVA
  \chordsTenorTerminatioIVA
  \chordsTerminatioIVc #'((syneresis . total))
}
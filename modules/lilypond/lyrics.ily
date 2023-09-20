\include "./symbols.ily"

markupOneSyllable =
#(define-music-function
  (markup1 syllable1)
  (symbol? ly:music?)
  (ly:music-set-property! syllable1 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup1)
                             ,(ly:music-property syllable1 'text))))
  #{ #syllable1 #})

markupTwoSyllables =
#(define-music-function
  (markup1 syllable1 markup2 syllable2)
  (symbol? ly:music? symbol? ly:music?)
  (ly:music-set-property! syllable1 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup1)
                             ,(ly:music-property syllable1 'text))))
  (ly:music-set-property! syllable2 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup2)
                             ,(ly:music-property syllable2 'text))))
  #{ #syllable1 #syllable2 #})

markupThreeSyllables =
#(define-music-function
  (markup1 syllable1 markup2 syllable2 markup3 syllable3)
  (symbol? ly:music? symbol? ly:music? symbol? ly:music?)
  (ly:music-set-property! syllable1 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup1)
                             ,(ly:music-property syllable1 'text))))
  (ly:music-set-property! syllable2 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup2)
                             ,(ly:music-property syllable2 'text))))
  (ly:music-set-property! syllable3 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup3)
                             ,(ly:music-property syllable3 'text))))
  #{ #syllable1 #syllable2 #syllable3 #})

markupFourSyllables =
#(define-music-function
  (markup1 syllable1 markup2 syllable2 markup3 syllable3 markup4 syllable4)
  (symbol? ly:music? symbol? ly:music? symbol? ly:music? symbol? ly:music?)
  (ly:music-set-property! syllable1 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup1)
                             ,(ly:music-property syllable1 'text))))
  (ly:music-set-property! syllable2 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup2)
                             ,(ly:music-property syllable2 'text))))
  (ly:music-set-property! syllable3 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup3)
                             ,(ly:music-property syllable3 'text))))
  (ly:music-set-property! syllable4 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup4)
                             ,(ly:music-property syllable4 'text))))
  #{ #syllable1 #syllable2 #syllable3 #syllable4 #})

markupFiveSyllables =
#(define-music-function
  (markup1 syllable1 markup2 syllable2 markup3 syllable3 markup4 syllable4 markup5 syllable5)
  (symbol? ly:music? symbol? ly:music? symbol? ly:music? symbol? ly:music? symbol? ly:music?)
  (ly:music-set-property! syllable1 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup1)
                             ,(ly:music-property syllable1 'text))))
  (ly:music-set-property! syllable2 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup2)
                             ,(ly:music-property syllable2 'text))))
  (ly:music-set-property! syllable3 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup3)
                             ,(ly:music-property syllable3 'text))))
  (ly:music-set-property! syllable4 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup4)
                             ,(ly:music-property syllable4 'text))))
  (ly:music-set-property! syllable5 'text
                          (primitive-eval
                           `(markup
                             ,(symbol->keyword markup5)
                             ,(ly:music-property syllable5 'text))))
  #{ #syllable1 #syllable2 #syllable3 #syllable4 #syllable5 #})

MelismaOff = \set ignoreMelismata = ##t
MelismaOn = \unset ignoreMelismata

I =
#(define-music-function
  (syllable)
  (ly:music?)
  #{ \markupOneSyllable italic #syllable #})

B =
#(define-music-function
  (syllable)
  (ly:music?)
  #{ \markupOneSyllable bold #syllable #})

Inchoatio =
#(define-music-function
  (syllable1 syllable2)
  (ly:music? ly:music?)
  #{ \markupTwoSyllables italic #syllable1 italic #syllable2 #})

Tenor =
#(define-music-function
  (tenor)
  (ly:music?)
  #{
    \once \override LyricText.self-alignment-X = #LEFT
    #tenor
  #})

Flexa =
#(define-music-function
  (syllable1 syllable2)
  (ly:music? ly:music?)
  #{ \lyricmode { \markupOneSyllable bold #syllable1 #syllable2 } #})

MediatioIV =
#(define-music-function
  (syllable1 syllable2 syllable3)
  (ly:music? ly:music? ly:music?)
  #{ \markupThreeSyllables italic #syllable1 italic #syllable2 bold #syllable3 #})

TerminatioSimplexIVE =
#(define-music-function
  (syllable1 syllable2 syllable3 syllable4)
  (ly:music? ly:music? ly:music? ly:music?)
  #{ \markupFourSyllables italic #syllable1 italic #syllable2 italic #syllable3 bold #syllable4 #})

TerminatioIVE =
#(define-music-function
  (syllable1 syllable2 syllable3 syllable4 syllable5)
  (ly:music? ly:music? ly:music? ly:music? ly:music?)
  #{ \markupFiveSyllables italic #syllable1 italic #syllable2 italic #syllable3 bold #syllable4 bold #syllable5 #})

TerminatioIVc =
#(define-music-function
  (syllable1)
  (ly:music?)
  #{ \markupOneSyllable bold #syllable1 #})

VSup =
#(define-music-function
  (sup)
  (markup?)
  #{
    \lyricmode {
      \markup \super { \normal-text #sup }
    }
  #})

Mediatio =
#(define-music-function
  (text)
  (markup?)
  #{
    \lyricmode {
      \markup \concat {
        #text " " \MediatioMark
      }
    }
  #})

Flexa =
#(define-music-function
  (text)
  (markup?)
  #{
    \lyricmode {
      \markup \concat {
        #text " " \FlexaMark
      }
    }
  #})

Terminatio =
#(define-music-function
  (text)
  (markup?)
  #{
    \lyricmode {
      \markup \concat {
        #text " " \Antiphona
      }
    }
  #})

AfterStanzaSpacing =
#(define-music-function
  ()
  ()
  #{
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.basic-distance = 4
  #})

AltLyrics = \override Lyrics.LyricText.font-shape = #'italic
BoldLyrics = \override Lyrics.LyricText.font-series = #'bold
NormalLyrics = \override Lyrics.LyricText.font-series = #'medium
\version "2.24.1"

\include "./alignment-functions/center-on-digit.ily"
\include "./alignment-functions/left-on-word.ily"
\include "./colors.ily"
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

ItalicLyrics = \override Lyrics.LyricText.font-shape = #'italic
BoldLyrics = \override Lyrics.LyricText.font-series = #'bold
NormalLyrics = \override Lyrics.LyricText.font-series = #'medium

BeginBold = \override LyricText.font-series = #'bold
EndBold = \revert LyricText.font-series

BeginItalic = \override LyricText.font-shape = #'italic
EndItalic = \revert LyricText.font-shape

BeginInchoatio = \BeginItalic
EndInchoatio = \EndItalic

B =
#(define-music-function
  (syllable)
  (ly:music?)
  #{ \BeginBold #syllable \EndBold #})

I =
#(define-music-function
  (syllable)
  (ly:music?)
  #{ \BeginItalic #syllable \EndItalic #})

Inchoatio =
#(define-music-function
  (syllable1 syllable2)
  (ly:music? ly:music?)
  #{ \BeginInchoatio #syllable1 #syllable2 \EndInchoatio #})

Tenor =
#(define-music-function
  (tenor)
  (ly:music?)
  #{
    \once \override LyricText.X-offset = #left-on-word
    #tenor
  #})

Flexa =
#(define-music-function
  (syllable1 syllable2)
  (ly:music? ly:music?)
  #{ \lyricmode { \BeginBold #syllable1 \EndBold #syllable2 } #})

MediatioIV =
#(define-music-function
  (preAccentus1 preAccentus2 accentus)
  (ly:music? ly:music? ly:music?)
  #{
    \lyricmode {
      \BeginItalic #preAccentus1 #preAccentus2 \EndItalic \BeginBold #accentus \EndBold
    }
  #})

TerminatioI =
#(define-music-function
  (preAccentus1 preAccentus2 accentus)
  (ly:music? ly:music? ly:music?)
  #{ \BeginItalic #preAccentus1 #preAccentus2 \EndItalic \BeginBold #accentus \EndBold #})

TerminatioSimplexIVE =
#(define-music-function
  (syllable1 syllable2 syllable3 syllable4)
  (ly:music? ly:music? ly:music? ly:music?)
  #{ \BeginItalic #syllable1 #syllable2 #syllable3 \EndItalic \BeginBold #syllable4 \EndBold #})

TerminatioIVE =
#(define-music-function
  (syllable1 syllable2 syllable3 syllable4 syllable5)
  (ly:music? ly:music? ly:music? ly:music? ly:music?)
  #{ \BeginItalic #syllable1 #syllable2 #syllable3 \EndItalic \BeginBold #syllable4 #syllable5 \EndBold #})

TerminatioIVc =
#(define-music-function
  (syllable1)
  (ly:music?)
  #{ \BeginBold #syllable1 \EndBold #})

TerminatioVIII =
#(define-music-function
  (preAccentus1 preAccentus2 accentus)
  (ly:music? ly:music? ly:music?)
  #{ \BeginItalic #preAccentus1 #preAccentus2 \EndItalic \BeginBold #accentus \EndBold #})

VSup =
#(define-music-function
  (sup)
  (markup?)
  #{
    \lyricmode {
      \once \override LyricText.X-offset = #center-on-digit
      \markup \super {
        \with-color #gregorio-color {
          \normal-text #sup
        }
      }
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
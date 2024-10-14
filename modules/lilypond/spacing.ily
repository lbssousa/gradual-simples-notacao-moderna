\version "2.24.1"

Spacer =
#(define-music-function
  (size)
  (integer?)
  #{ \repeat unfold #size { s4 } #})

Loff = \once \override NoteHead.X-offset = #-3

Roff = \once \override NoteHead.X-offset = #1.2
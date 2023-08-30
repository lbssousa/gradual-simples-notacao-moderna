\version "2.24.1"

Spacer =
#(define-music-function
  (size)
  (integer?)
  #{ \repeat unfold #size { s4 } #})
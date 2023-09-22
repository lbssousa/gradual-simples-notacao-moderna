\version "2.24.1"

% Based on https://lsr.di.unimi.it/LSR/Item?id=888
#(define (width grob text)
  (let* ((X-extent
           (ly:stencil-extent (grob-interpret-markup grob text) X)))
   (if (interval-empty? X-extent)
       0
       (cdr X-extent))))
\version "2.24.1"

\include "./common.ily"

% Based on https://lsr.di.unimi.it/LSR/Item?id=888
#(define digit-set
  (list->char-set
    (string->list "1234567890")))

#(define (center-on-digit grob)
  (let* ((text (ly:grob-property-data grob 'text))
         (syllable (markup->string text))
         (word-end
           (if (string-index-right syllable digit-set)
               (1+ (string-index-right syllable digit-set))
               (string-length syllable)))
         (word (substring syllable 0 word-end))
         (word-width (width grob (if (string-null? syllable) text word)))
         (note-column (ly:grob-parent grob X))
         (note-column-extent (ly:grob-extent note-column note-column X))
         (note-column-width (interval-length note-column-extent)))

    (*
      (/ (- note-column-width word-width) 2)
      (1+ (ly:grob-property-data grob 'self-alignment-X)))))
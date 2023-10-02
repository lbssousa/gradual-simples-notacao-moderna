\version "2.24.1"

\include "./common.ily"

% Based on https://lsr.di.unimi.it/LSR/Item?id=888
#(define space-set
  (list->char-set
    (string->list "—.?-;,:“”‘’–— */()[]{}|<>!`~&…")))

#(define (left-on-word grob)
  (let* ((text (ly:grob-property-data grob 'text))
         (syllable (markup->string text))
         (word-position
           (if (string-skip syllable space-set)
               (string-skip syllable space-set)
               0))
         (word-end (1+ word-position))
         (preword (substring syllable 0 word-position))
         (word (substring syllable word-position word-end))
         (preword-width (width grob preword))
         (word-width (width grob (if (string-null? syllable) text word)))
         (note-column (ly:grob-parent grob X))
         (note-column-extent (ly:grob-extent note-column note-column X))
         (note-column-width (interval-length note-column-extent)))

  (- 0 preword-width)))
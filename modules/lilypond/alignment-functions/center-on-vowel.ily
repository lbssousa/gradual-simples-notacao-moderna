\version "2.24.1"

\include "./common.ily"

% Based on https://lsr.di.unimi.it/LSR/Item?id=888
#(define vowel-set
  (list->char-set
    (string->list "AÁÀÃÂÆǼEÉÈÊIÍÌÎOÓÒÕÔŒUÚÙÛaáàãâæǽeéèêiíìîoóòõôœuúùû")))

#(define (center-on-vowel grob)
  (let* ((text (ly:grob-property-data grob 'text))
         (syllable (markup->string text))
         (word-position
           (if (string-index syllable vowel-set)
               (string-index syllable vowel-set)
               0))
         (word-end
           (if (string-index-right syllable vowel-set)
               (1+ (string-index-right syllable vowel-set))
               (string-length syllable)))
         (preword (substring syllable 0 word-position))
         (word (substring syllable word-position word-end))
         (preword-width (width grob preword))
         (word-width (width grob (if (string-null? syllable) text word)))
         (note-column (ly:grob-parent grob X))
         (note-column-extent (ly:grob-extent note-column note-column X))
         (note-column-width (interval-length note-column-extent)))

  (-
    (*
      (/ (- note-column-width word-width) 2)
      (1+ (ly:grob-property-data grob 'self-alignment-X)))
    preword-width)))
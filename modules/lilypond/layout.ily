\version "2.24.1"

% Based on https://lsr.di.unimi.it/LSR/Item?id=888
#(define vowel-set
  (list->char-set
    (string->list "AÁÀÃÂÆǼEÉÈÊIÍÌÎOÓÒÕÔŒUÚÙÛaáàãâæǽeéèêiíìîoóòõôœuúùû")))

#(define (width grob text)
  (let* ((X-extent
           (ly:stencil-extent (grob-interpret-markup grob text) X)))
   (if (interval-empty? X-extent)
       0
       (cdr X-extent))))

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

AntiphonSignature = {
  \time 1/4
}

PsalmSignature = {
  \time 1/4
}

GregorianTranscriptionLayout = \layout {
  ragged-last = ##f
  \context {
    \GregorianTranscriptionStaff
    measureBarType = ""
    \override BarLine.X-extent = #'(-1 . 1)
    \hide Beam
    \hide TupletNumber
    \hide TupletBracket
  }

  %\context {
  %  \GregorianTranscriptionVoice
  %  \consists Stem_engraver
  %}

  \context {
    \GregorianTranscriptionLyrics {
      \override LyricText.X-offset = #center-on-vowel
    }
  }
}
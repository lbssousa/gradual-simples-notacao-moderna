\version "2.24.1"

\include "./neums.ily"

% Nota para corda de recitação
T =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 2*1/2 #})

% Nota de apoio/acento em uma cadência salmódica
A =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 4^\AccentusMark #})

% Nota de apoio/acento parcial em uma cadência salmódica
Aq =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 4*1/2^\AccentusMark #})

% Nota de apoio/acento em uma cadência salmódica, com parênteses
Ap =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ \parenthesize $p 4 #})

% Neuma de duas notas de apoio/acento em uma cadência salmódica
AA =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \Aq $pa ( \noBreak
    \Aq $pb )
  #})

MakeEpenthesis =
#(define-music-function
  (p options)
  (ly:pitch? alist?)
  (case (assoc-get 'epenthesis options)
    ((total) #{ $p 4 #})
    ((partial) #{ \parenthesize $p 4 #})
    (else #{ #}))
)

MakeOrganFlexa =
#(define-music-function
  (p options)
  (ly:pitch? alist?)
  (case (assoc-get 'epenthesis options)
    ((total) #{ $p 2*1/2 #})
    ((partial) #{ $p 2*1/2 #})
    (else #{ $p 2 #}))
)

MakeOrganMediatioIV =
#(define-music-function
  (p options)
  (ly:pitch? alist?)
  (case (assoc-get 'epenthesis options)
    ((total) #{ $p 2*3 #})
    ((partial) #{ $p 2*3 #})
    (else #{ $p 2*2 #}))
)

% Neuma de duas notas de apoio/acento precedido de epêntese em uma cadência salmódica
eAA =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \Ap $pa \noBreak
    \AA $pa $pb
  #}
)

% Entonação inicial composta por
% um neuma de uma nota seguido de outro neuma de duas notas
MakeInchoatioOnePostTwo =
#(define-music-function
  (pa pb pc options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ $pa 4 $pb $pc #})
    ((partial)
      #{
        $pa 4
        \once \slurDashed
        $pb ( $pc )
      #})
    (else #{ $pa 4 $pb 8 ( \Loff $pc ) #})))

MakeInchoatioOnePostTwoSlot =
#(define-music-function
  (pa pb pc options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'dieresis options)
    ((total) #{ \once \hideNotes $pa 8 $pa $pb 4 $pc #})
    ((partial)
      #{
        \once \hideNotes $pa 8 $pa
        \once \slurDashed
        $pb ( $pc )
      #})
    (else #{ \once \hideNotes $pa 8 $pa $pb ( \Loff $pc ) #})))

% Entonação inicial composta por
% um neuma de duas notas seguido de outro neuma de duas notas
MakeInchoatioTwoPostTwo =
#(define-music-function
  (pa pb pc pd options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  #{
    \CC $pa $pb
    #(case (assoc-get 'dieresis options)
      ((total) #{ $pc $pd #})
      ((partial)
      #{
        \once \slurDashed
        \CC $pc $pd
      #})
      (else #{ \CC $pc $pd #}))
  #})

% Entonação inicial composta por
% um neuma de duas notas, precedido de epêntese
MakeInchoatioTwoPreEpenthesis =
#(define-music-function
  (pe pa pb options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'dieresis options)
    ((total)
      #{
        \MakeEpenthesis $pe #options
        \AA $pa $pb
      #})
    ((partial)
      #{
        \MakeEpenthesis $pe #options
        \once \slurDashed
        \AA $pa $pb
      #})
    (else
      #{
        \MakeEpenthesis $pe #options
        \AA $pa $pb
      #})))

% Corda de recitação, com ou sem slot para alinhar sílaba extra
MakeTenor =
#(define-music-function
  (p s)
  (ly:pitch? boolean?)
  (if s
      #{ \once \hideNotes $p 8 \noBreak $p \breve*1/16 #}
      #{ $p \breve*1/8 #}))

MakeTenorTerminatio =
#(define-music-function
  (p s)
  (ly:pitch? boolean?)
  (if s
      #{ s8 $p \breve*1/16 #}
      #{ $p \breve*1/8 #}))

% Acento cadencial de uma nota com pós-acento de uma nota
MakeAccentusOnePostOne =
#(define-music-function
  (pa pe pb options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 8^\AccentusMark (
        \Loff $pb )
      #})
    ((partial)
      #{
        \once \slurDashed
        $pa 4^\AccentusMark (
        \MakeEpenthesis $pe #options
        $pb )
      #})
    (else
      #{
        $pa 4^\AccentusMark
        \MakeEpenthesis $pe #options
        $pb
      #})))

MakeAccentusOnePostOneSlot =
#(define-music-function
  (pa pe pb options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 4^\AccentusMark (
        \MakeEpenthesis $pe #options
        $pb 8 ) \once \hideNotes $pb
      #})
    ((partial)
      #{
        \once \slurDashed
        $pa 4^\AccentusMark (
        \MakeEpenthesis $pe #options
        $pb 8 ) \once \hideNotes $pb
      #})
    (else
      #{
        $pa 4^\AccentusMark
        \MakeEpenthesis $pe #options
        $pb 8 \once \hideNotes $pb
      #})))

% Acento cadencial de uma nota com pós-acento de duas notas
MakeAccentusOnePostTwo =
#(define-music-function
  (pa pe pb pc options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 4^\AccentusMark ( \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \CC $pb $pc )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 4^\AccentusMark \( \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \CC $pb $pc \)
      #})
    (else
      #{
        $pa 4^\AccentusMark \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CC $pb $pc
      #})))

% Acento cadencial de uma nota com pós-acento de três notas
MakeAccentusOnePostThree =
#(define-music-function
  (pa pe pb pc pd options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 4^\AccentusMark ( \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CCC $pb $pc $pd )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 4^\AccentusMark \( \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \CCC $pb $pc $pd \)
      #})
    (else
      #{
        $pa 4^\AccentusMark \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \CCC $pb $pc $pd
      #})))

% Acento cadencial de duas nota com pós-acento de uma nota
MakeAccentusTwoPostOne =
#(define-music-function
  (pa pb pe pc options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 4*1/2^\AccentusMark ( $pb \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \C $pc )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 4*1/2^\AccentusMark \(( \noBreak
        $pb ) \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \C $pc \)
      #})
    (else
      #{
        \AA $pa $pb  \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \C $pc
      #})))

MakeAccentusTwoPostOneAlt =
#(define-music-function
  (pa pb pc options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 4*1/2^\AccentusMark ( \noBreak
        $pb \noBreak
        \C $pc )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 4*1/2^\AccentusMark \((  \noBreak
        $pb ) \noBreak
        \C $pc \)
      #})
    (else
      #{
        \AA $pa $pb \C $pc
      #})))

% Acento cadencial de duas notas com pós-acento de duas notas
MakeAccentusTwoPostTwo =
#(define-music-function
  (pa pb pe pc pd options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 4*1/2^\AccentusMark ( \noBreak
        $pb \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \CC $pc $pd )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 4*1/2^\AccentusMark \(( \noBreak
        $pb ) \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \CC $pc $pd \)
      #})
    (else
      #{
        \AA $pa $pb \noBreak
        \MakeEpenthesis $pe #options \noBreak
        \CC $pc $pd
      #})))

% Acento cadencial de duas notas precedido de epêntese,
% com pós-acento de uma nota
MakeAccentusTwoPreEpenthesisPostOne =
#(define-music-function
  (pe pa pb pc options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        \once \override HorizontalBracketText.text = \AccentusMark
        \MakeEpenthesis $pe #options \startGroup \noBreak
        $pa 4*1/2 ( $pb \stopGroup \noBreak
        \C $pc )
      #})
    ((partial)
      #{
        \once \override HorizontalBracketText.text = \AccentusMark
        \MakeEpenthesis $pe #options \startGroup \noBreak
        \once \phrasingSlurDashed
        $pa 4*1/2 \(( \noBreak
        $pb ) \stopGroup \noBreak
        \C $pc \)
      #})
    (else
      #{
        \once \override HorizontalBracketText.text = \AccentusMark
        \MakeEpenthesis $pe #options \startGroup \noBreak
        \AA $pa $pb \stopGroup \noBreak
        \C $pc
      #})))

% Acento cadencial de duas notas precedido de epêntese,
% com pós-acento de duas notas
MakeAccentusTwoPreEpenthesisPostTwo =
#(define-music-function
  (pe pa pb pc pd options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        \MakeEpenthesis $pe #options \noBreak
        $pa 4*1/2^\AccentusMark ( \noBreak
        $pb \noBreak
        \CC $pc $pd )
      #})
    ((partial)
      #{
        \MakeEpenthesis $pe #options \noBreak
        \once \phrasingSlurDashed
        $pa 4*1/2^\AccentusMark \(( \noBreak
        $pb ) \noBreak
        \CC $pc $pd \)
      #})
    (else
      #{
        \MakeEpenthesis $pe #options \noBreak
        \AA $pa $pb \noBreak
        \CC $pc $pd
      #})))
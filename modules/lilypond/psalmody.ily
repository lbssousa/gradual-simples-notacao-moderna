\version "2.24.1"

\include "./neums.ily"

% Nota para corda de recitação
T =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \breve*1/8 #})

% Nota de apoio/acento em uma cadência salmódica
A =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 2*1/2 #})

% Nota de apoio/acento parcial em uma cadência salmódica
Aq =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 2*1/4 #})

% Nota de apoio/acento em uma cadência salmódica, com parênteses
Ap =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ \parenthesize $p 2*1/2 #})

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
  (p d options)
  (ly:pitch? ly:duration? alist?)
  (case (assoc-get 'epenthesis options)
    ((total) #{ $p $d #})
    ((partial) #{ \parenthesize $p $d #})
    (else #{ #}))
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
    ((total) #{ \C $pa $pb $pc #})
    ((partial)
      #{
        \C $pa
        \once \slurDashed
        \CC $pb $pc
      #})
    (else #{ \C $pa \CC $pb $pc #})))

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
        \MakeEpenthesis $pe \dC #options
        \AA $pa $pb
      #})
    ((partial)
      #{
        \MakeEpenthesis $pe \dC #options
        \once \slurDashed
        \AA $pa $pb
      #})
    (else
      #{
        \MakeEpenthesis $pe \dC #options
        \AA $pa $pb
      #})))

% Acento cadencial de uma nota com pós-acento de uma nota
MakeAccentusOnePostOne =
#(define-music-function
  (pa pe pb options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        \A $pa ( \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        $pb )
      #})
    ((partial)
      #{
        \once \slurDashed
        \A $pa ( \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        $pb )
      #})
    (else
      #{
        \A $pa \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \C $pb
      #})))

% Acento cadencial de uma nota com pós-acento de duas notas
MakeAccentusOnePostTwo =
#(define-music-function
  (pa pe pb pc options)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        \A $pa ( \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CC $pb $pc )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        \A $pa \( \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CC $pb $pc \)
      #})
    (else
      #{
        \A $pa \noBreak
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
        \A $pa ( \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CCC $pb $pc $pd )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        \A $pa \( \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CCC $pb $pc $pd \)
      #})
    (else
      #{
        \A $pa \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
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
        $pa 2*1/4 ( $pb \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \C $pc )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 2*1/4 \(( \noBreak
        $pb ) \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \C $pc \)
      #})
    (else
      #{
        \AA $pa $pb  \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \C $pc
      #})))

MakeAccentusTwoPostOneAlt =
#(define-music-function
  (pa pb pc options)
  (ly:pitch? ly:pitch? ly:pitch? alist?)
  (case (assoc-get 'syneresis options)
    ((total)
      #{
        $pa 2*1/4 ( \noBreak
        $pb \noBreak
        \C $pc )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 2*1/4 \((  \noBreak
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
        $pa 2*1/4 ( \noBreak
        $pb \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CC $pc $pd )
      #})
    ((partial)
      #{
        \once \phrasingSlurDashed
        $pa 2*1/4 \(( \noBreak
        $pb ) \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
        \CC $pc $pd \)
      #})
    (else
      #{
        \AA $pa $pb \noBreak
        \MakeEpenthesis $pe \dC #options \noBreak
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
        \MakeEpenthesis $pe 2*1/2 #options \noBreak
        $pa 2*1/4 ( $pb \noBreak
        \C $pc )
      #})
    ((partial)
      #{
        \MakeEpenthesis $pe 2*1/2 #options \noBreak
        \once \phrasingSlurDashed
        $pa 2*1/4 \(( \noBreak
        $pb ) \noBreak
        \C $pc \)
      #})
    (else
      #{
        \MakeEpenthesis $pe 2*1/2 #options \noBreak
        \AA $pa $pb \noBreak
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
        \MakeEpenthesis $pe 2*1/2 #options \noBreak
        $pa 2*1/4 ( \noBreak
        $pb \noBreak
        \CC $pc $pd )
      #})
    ((partial)
      #{
        \MakeEpenthesis $pe 2*1/2 #options \noBreak
        \once \phrasingSlurDashed
        $pa 2*1/4 \(( \noBreak
        $pb ) \noBreak
        \CC $pc $pd \)
      #})
    (else
      #{
        \MakeEpenthesis $pe 2*1/2 #options \noBreak
        \AA $pa $pb \noBreak
        \CC $pc $pd
      #})))
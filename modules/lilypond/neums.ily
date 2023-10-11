\version "2.24.1"

dC = #(ly:make-duration 2 0)

Episema = \tenuto
Oriscus = \haydnturn
Quilisma = \prall

% Neuma de uma nota, cursivo
C =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \dC #}
)

% Neuma de uma nota, cursivo,
% fechando um melisma
Cmf =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \dC\) #}
)

% Slot para alinhamento de letra.
S =
#(define-music-function () ()
  #{
    \cadenzaOn
    \once \omit NoteHead c \dC \noBreak
    \cadenzaOff
  #}
)

% Neuma de uma nota, cursivo, com parênteses
Cp =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ \parenthesize $p \dC #}
)

% Neuma de uma nota, com episema
E =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \dC^\Episema #}
)

% Neuma de uma nota, com episema e parênteses
Ep =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ \parenthesize $p \dC^\Episema #}
)

% Neuma de uma nota, com liquescência diminutiva
Ldim =
#(define-music-function
  (p)
  (ly:pitch?)
  #{
    %\tweak font-size -4 $pa
    $p \dC^">"
  #}
)

% Neuma de uma nota, com liquescência aumentativa
Laum =
#(define-music-function
  (p)
  (ly:pitch?)
  #{
    %\tweak font-size -4 $pa
    $p \dC^"<"
  #}
)

% Neuma de uma nota, com oriscus
O =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \dC\Oriscus #}
)

% Neuma de uma nota, com oriscus,
% fechando um melisma.
Omf =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \dC\Oriscus\) #}
)

% Neuma de duas notas, totalmente cursivo
CC =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    \cadenzaOff
    $pb )
  #}
)

% Neuma de duas notas, totalmente cursivo,
% abrindo um melisma
CCmi =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC\(( \noBreak
    \cadenzaOff
    $pb )
  #}
)

% Neuma de duas notas, totalmente cursivo,
% fechando um melisma
CCmf =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    \cadenzaOff
    $pb )\)
  #}
)

% Dois neumas de uma nota, cursivos, com ligadura parcial
C_C =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \once \slurDashed
    $pa \dC( \noBreak
    $pb )
  #}
)

% Neuma de duas notas, com episema na última nota
CE =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    \cadenzaOff
    $pb ^\Episema)
  #}
)

% Neuma de duas notas, com episema nas duas notas
EE =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC^\Episema( \noBreak
    \cadenzaOff
    $pb ^\Episema)
  #}
)

% Neuma de duas notas, cursivo na primeira nota e com liquescência na última nota
CL =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    \cadenzaOff
    \tweak font-size -4
    $pb )
     %$pb ^">" )
  #}
)

% Dois neumas de uma nota, um cursivo e outro com liquescência, com ligadura parcial
C_L =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \once \slurDashed
    $pa \dC( \noBreak
    $pb ^">")
  #}
)

% Neuma de duas notas, com episema na primeira nota e com liquescência na última nota
EL =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC^\Episema( \noBreak
    \cadenzaOff
    \tweak font-size -4
    $pb )
    %$pb ^">" )
  #}
)

% Neuma de duas notas, com quilisma na primeira nota
QC =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC\Quilisma( \noBreak
    \cadenzaOff
    $pb ) #}
)

% Neuma de duas notas do tipo "virga strata"
Vs =
#(define-music-function
  (p)
  (ly:pitch?)
  #{
    \once \slurDown
    \cadenzaOn
    $p \dC( \noBreak
    \cadenzaOff
    $p \Oriscus)
  #}
)

% Neuma de duas notas do tipo "pes quassus"
Pq =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \once \slurDown
    \cadenzaOn
    $pa \dC\Oriscus( \noBreak
    \cadenzaOff
    $pb )
  #}
)

% Neuma de três notas, totalmente cursivo
CCC =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    \cadenzaOff
    $pc )
  #}
)

% Neuma de três notas, totalmente cursivo,
% abrindo um melisma
CCCmi =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC\(( \noBreak
    $pb \noBreak
    \cadenzaOff
    $pc )
  #}
)

% Neuma de três notas, totalmente cursivo,
% fechando um melisma
CCCmf =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    \cadenzaOff
    $pc )\)
  #}
)

% Neuma de uma nota seguido de neuma de duas notas, totalmente cursivos, com ligadura parcial
C_CC =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{
    \once \phrasingSlurDashed
    $pa \dC\( \noBreak
    \cadenzaOn
    $pb \dC( \noBreak
    \cadenzaOff
    $pc )\)
  #}
)

% Neuma de três notas, com episema na segunda e terceira nota
CEE =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb ^\Episema \noBreak
    \cadenzaOff
    $pc ^\Episema)
  #}
)

% Neuma de três notas, com quilisma na segunda nota
CQC =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \Quilisma \noBreak
    \cadenzaOff
    $pc )
  #}
)

% Neuma de três notas, com episema nas duas notas
% primeiras e oriscus na terceira.
EEO =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC^\Episema( \noBreak
    $pb ^\Episema \noBreak
    \cadenzaOff
    $pc ^\Oriscus)
  #}
)

% Neuma de quatro notas, totalmente cursivo
CCCC =
#(define-music-function
  (pa pb pc pd)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    $pc \noBreak
    \cadenzaOff
    $pd )
  #}
)

% Neuma de quatro notas, totalmente cursivo,
% fechando um melisma
CCCCmf =
#(define-music-function
  (pa pb pc pd)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    $pc \noBreak
    \cadenzaOff
    $pd )\)
  #}
)

% Neuma de quatro notas, com quilisma na terceira nota
CCQC =
#(define-music-function
  (pa pb pc pd)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    $pc \Quilisma \noBreak
    \cadenzaOff
    $pd )
  #}
)

% Neuma de cinco notas, totalmente cursivo
CCCCC =
#(define-music-function
  (pa pb pc pd pe)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    $pc \noBreak
    $pd \noBreak
    \cadenzaOff
    $pe )
  #}
)

% Neuma de cinco notas, com quilisma na quarta nota
CCCQC =
#(define-music-function
  (pa pb pc pd pe)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    $pc \noBreak
    $pd \Quilisma  \noBreak
    \cadenzaOff
    $pe )
  #}
)

% Neuma de seis notas, totalmente cursivo
CCCCCC =
#(define-music-function
  (pa pb pc pd pe pf)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC( \noBreak
    $pb \noBreak
    $pc \noBreak
    $pd \noBreak
    $pe \noBreak
    \cadenzaOff
    $pf )
  #}
)

% Neuma de seis notas, totalmente cursivo,
% abrindo um melisma.
CCCCCCmi =
#(define-music-function
  (pa pb pc pd pe pf)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{
    \cadenzaOn
    $pa \dC\(( \noBreak
    $pb \noBreak
    $pc \noBreak
    $pd \noBreak
    $pe \noBreak
    \cadenzaOff
    $pf )
  #}
)

% Neuma de uma nota precedido de epêntese em uma cadência salmódica
eC =
#(define-music-function
  (p)
  (ly:pitch?)
  #{
    \Cp $p \noBreak
    \C $p
  #}
)

% Neuma de duas notas precedido de epêntese em uma cadência salmódica
eCC =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{
    \Cp $pa \noBreak
    \CC $pa $pb
  #}
)
\version "2.24.1"

% Neuma de uma nota, cursivo
C =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 4 #})

% Neuma de uma nota, cursivo, com parênteses
Cp =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ \parenthesize $p 4 #})

% Neuma de uma nota, com episema
E =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 4.*2/3 #})

% Neuma de uma nota, com liquescência diminutiva
Ldim =
#(define-music-function
  (p)
  (ly:pitch?)
  #{
    %\tweak font-size -4 $pa
    $p ^">"
  #})

% Neuma de uma nota, com liquescência aumentativa
Laum =
#(define-music-function
  (p)
  (ly:pitch?)
  #{
    %\tweak font-size -4 $pa
    $p ^"<"
  #})

% Neuma de uma nota, com oriscus
O =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \reverseturn #})

% Neuma de duas notas, totalmente cursivo
CC =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ $pa 8( $pb ) #})

% Neuma de duas notas, com episema na última nota
CE =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ $pa 8( $pb 8.*2/3) #})

% Neuma de duas notas, com episema nas duas notas
EE =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ $pa 8.*2/3( $pb ) #})

% Neuma de duas notas, cursivo na primeira nota e com liquescência na última nota
CL =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ $pa 8(
     \tweak font-size -4
     $pb )
     %$pb ^">" )
  #})

% Neuma de duas notas, com episema na primeira nota e com liquescência na última nota
EL =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ $pa 8.*2/3(
     \tweak font-size -4
     $pb 8)
     %$pb ^">" )
  #})

% Neuma de duas notas, com quilisma na primeira nota
QC =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ $pa 8( \prallup $pb ) #})

% Neuma de três notas, totalmente cursivo
CCC =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{ \tuplet 3/2 { $pa 8( $pb $pc ) } #})

% Neuma de três notas, com episema na segunda e terceira nota
CEE =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{ \tuplet 3/2 { $pa 8( $pb 8.*2/3 $pc ) } #})

% Neuma de três notas, com quilisma na segunda nota
CQC =
#(define-music-function
  (pa pb pc)
  (ly:pitch? ly:pitch? ly:pitch?)
  #{ \tuplet 3/2 { $pa 8( $pb \prallup $pc ) } #})

% Neuma de quatro notas, totalmente cursivo
CCCC =
#(define-music-function
  (pa pb pc pd)
  (ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{ $pa 16( $pb $pc $pd )) #})

% Nota para corda de recitação
T =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p \breve*1/8 #})



% Neuma de uma nota precedido de epêntese em uma cadência salmódica
eC =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ \Cp $p \C $p #})

% Neuma de duas notas precedido de epêntese em uma cadência salmódica
eCC =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ \Cp $pa \CC $pa $pb #})

% Nota de apoio/acento em uma cadência salmódica
A =
#(define-music-function
  (p)
  (ly:pitch?)
  #{ $p 2*1/2 #})

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
  #{ $pa 2*1/4( $pb ) #})

% Neuma de duas notas de apoio/acento precedido de epêntese em uma cadência salmódica
eAA =
#(define-music-function
  (pa pb)
  (ly:pitch? ly:pitch?)
  #{ \Ap $pa \AA $pa $pb #})
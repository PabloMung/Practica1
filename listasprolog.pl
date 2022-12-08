pertenece(X,[X|_]).
pertenece(X,[L|RL]):-X=\=L,pertenece(X,RL).

sizeL([],0).
sizeL([_],1).
sizeL([_|RL],V):-sizeL(RL,Ac),V is Ac+1.

concatenacion([],L2,L2).
concatenacion([X|L1],L2,[X|LR]):-concatenacion(L1,L2,LR).

eliminar(_,[],[]).
eliminar(E,[H],[H]):-E=\=H.
eliminar(E,[H|T],[H|R]):-E=\=H,eliminar(E,T,R).
eliminar(E,[H|T],R):-E=:=H,eliminar(E,T,R).

agregar(X,L,[X|L]).

parimpar([],[],[]).
parimpar([X],[X],_):-R is X mod 2, R=:=0.
parimpar([X],_,[X]):-R is X mod 2, R=\=0.
parimpar([X|Tail],[X|L1],L2):-R is X mod 2, R=:=0,parimpar(Tail,L1,L2).
parimpar([X|Tail],L1,[X|L2]):-R is X mod 2, R=\=0,parimpar(Tail,L1,L2).

ascendente([_]).
ascendente([X1,X2|Tail]):-X1<X2,ascendente([X2|Tail]).

descendente([_]).
descendente([X1,X2|Tail]):-X1>X2,descendente([X2|Tail]).

aplanar([],[]).
aplanar([X|R],[X|P]):-atomic(X), aplanar(R,P).
aplanar([X|R],P):- not(atomic(X)), aplanar(X, P_X), aplanar(R, P_R), append(P_X, P_R, P).

menorqHead([],[]).
menorqHead([_],[]).
menorqHead([H,X|Tail],[X|R]):-X<H,menorqHead([H|Tail],R).
menorqHead([H,X|Tail],R):-X>H,menorqHead([H|Tail],R).

mayorqHead([],[]).
mayorqHead([_],[]).
mayorqHead([H,X|Tail],[X|R]):-X>H,mayorqHead([H|Tail],R).
mayorqHead([H,X|Tail],R):-X<H,mayorqHead([H|Tail],R).

invertir([],[]).
invertir([H|T],R):-invertir(T,L),concatenacion(L,[H],R).
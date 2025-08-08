descendente(X, Y) :- (mae(Y, X); pai(Y, X)); ((pai(Y, Z); mae(Y, Z)), descendente(X, Z)).
avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (mae(X, Z); pai(X, Z)).

tem_direito(X, alemanha) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, alemanha).
tem_direito(X, portugal) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, portugal).
tem_direito(X, reino_unido) :- (pai(Z,X); mae(Z, X)), cidadania(Z, reino_unido).
tem_direito(X, italia) :- descendente(X, Y), cidadania(Y, italiana).

#?- tem_direito(joao, italia).
#?- tem_direito(joao, Y).
#?- tem_direito(X, Y).
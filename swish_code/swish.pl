pai(martin, clara).
pai(martin, camila).
pai(tomas, santiago).
pai(tomas, manuel).
pai(tomas, leonor).
pai(vitor, matteo).
pai(vitor, diana).
pai(vitor, chiara).
pai(cloves, wesley).
pai(cloves, jaqueline).
pai(oliver, harry).
pai(oliver, lila).
pai(oliver, ava).
pai(matteo, giulia).
pai(manuel, catarina).
pai(harry, lorenzo).
pai(santiago, martin).
pai(friedrich, lola).
pai(friedrich, conrad).
pai(friedrich, mia).
pai(otto, emma).
pai(conrad, mario).
pai(martin, max).
pai(mario, iara).
pai(mario, kaua).
pai(lorenzo, george).
pai(max, arthur).


mae(madalena, santiago).
mae(madalena, manuel).
mae(madalena, leonor).
mae(ana, matteo).
mae(ana, diana).
mae(ana, chiara).
mae(petra, otto).
mae(petra, friedrich).
mae(leonor, giulia).
mae(diana, conrad).
mae(diana, mia).
mae(diana, lola).
mae(chiara, lorenzo).
mae(ava, emma).
mae(catarina, mario).
mae(mia, clara).
mae(mia, camila).
mae(mia, max).
mae(jaqueline, iara).
mae(jaqueline, kaua).
mae(camila, george).
mae(lola, arthur).




cidadania(madalena, portugal).
cidadania(tomas, portugal).
cidadania(santiago, portugal).
cidadania(manuel, portugal).
cidadania(leonor, portugal).
cidadania(martin, portugal).
cidadania(catarina, portugal).
cidadania(ana, italia).
cidadania(vitor, italia).
cidadania(chiara, italia).
cidadania(diana, italia).
cidadania(matteo, italia).
cidadania(oliver, reino_unido).
cidadania(harry, reino_unido).
cidadania(lila, reino_unido).
cidadania(ava, reino_unido).
cidadania(petra, alemanha).
cidadania(otto, alemanha).
cidadania(friedrich, alemanha).


descendente(X, Y) :- (pai(Y, X); mae(Y, X)); (pai(Z, X); mae(Z, X)), descendente(Z, Y).

avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (mae(X, Z); pai(X, Z)).

tem_direito(X, alemanha) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, alemanha), \+cidadania(X, alemanha).


tem_direito(X, portugal) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, portugal), \+cidadania(X, portugal).


tem_direito(X, reino_unido) :- (pai(Z,X); mae(Z, X)), cidadania(Z, reino_unido), \+cidadania(X, reino_unido).


tem_direito(X, italia) :- descendente(X, Y), cidadania(Y, italia), \+cidadania(X, italia).
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




cidadania(madalena, portuguesa).
cidadania(tomas, portuguesa).
cidadania(santiago, portuguesa).
cidadania(manuel, portuguesa).
cidadania(leonor, portuguesa).
cidadania(martin, portuguesa).
cidadania(catarina, portuguesa).
cidadania(ana, italiana).
cidadania(vitor, italiana).
cidadania(chiara, italiana).
cidadania(diana, italiana).
cidadania(matteo, italiana).
cidadania(oliver, britanica).
cidadania(harry, britanica).
cidadania(lila, britanica).
cidadania(ava, britanica).
cidadania(petra, alema).
cidadania(otto, alema).
cidadania(friedrich, alema).


descendente(X, Y) :- (pai(Y, X); mae(Y, X)); (pai(Z, X); mae(Z, X)), descendente(Z, Y).

avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (mae(X, Z); pai(X, Z)).

tem_direito(X, alema) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, alema), \+cidadania(X, alema).


tem_direito(X, portuguesa) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, portuguesa), \+cidadania(X, portuguesa).


tem_direito(X, britanica) :- (pai(Z,X); mae(Z, X)), cidadania(Z, britanica), \+cidadania(X, britanica).


tem_direito(X, italiana) :- descendente(X, Y), cidadania(Y, italiana), \+cidadania(X, italiana).
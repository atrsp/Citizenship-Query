% Fatos de exemplo
pai(joao, maria).
mae(ana, joao).
pai(carlos, ana).
cidadania(ana, portuguesa).
cidadania(carlos, italiana).
cidadania(pedro, britanica).
mae(maria, julia).
pai(pedro, julia).
cidadania(josefina, alema).
mae(josefina, carlos).

% Consulta
?- tem_direito(X, Y).
X = julia, Y = britanica ;
X = julia, Y = italiana ;
X = maria, Y = italiana ;
X = maria, Y = portuguesa ;
X = joao, Y = italiana ;
X = joao, Y = portuguesa ;
X = ana, Y = italiana ;
X = ana, Y = alema ;
X = carlos, Y = alema ;
false.
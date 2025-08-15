% Fatos de exemplo
pai(giovanni, marco).               
pai(marco, lucas).
pai(lucas, fernando).
pai(fernando, paula).
cidadania(giovanni, italiana).
cidadania(giovanni, alema).
mae(maria, sofia).       
mae(sofia, carlos).
pai(carlos, paula).
cidadania(maria, portuguesa).
pai(john, helena).                  
mae(helena, ricardo).
cidadania(john, britanica).

% Consulta
?- tem_direito(X, Y).
X = marco,     Y = italiana ;
X = marco,     Y = alema ;
X = lucas,     Y = italiana ;
X = lucas,     Y = alema ;
X = fernando,  Y = italiana ;
X = paula,     Y = italiana ;
X = sofia,     Y = portuguesa ;
X = carlos,    Y = portuguesa ;
X = helena,    Y = britanica ;
false.
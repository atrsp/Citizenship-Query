% Avalia se uma pessoa eh descendente de outra.
descendente(X, Y) :- (pai(Y, X); mae(Y, X)); (pai(Z, X); mae(Z, X)), descendente(Z, Y).

% Avalia se uma pessoa eh avo de outra.
avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (mae(X, Z); pai(X, Z)).

% Avaliacao de cidadanias: 
    % REGRA GERAL: uma pessoa que jah possui uma cidadania nao tem direito a ela mesma, mas pode ter direito a outras.

% Avalia se uma pessoa tem direito a cidadania alema.
    % REGRA: Transmissao de cidadania ateh netos de alemaes.
tem_direito(X, alema) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, alema), \+cidadania(X, alema).

% Avalia se uma pessoa tem direito a cidadania portuguesa.
    % REGRA: Transmissao de cidadania ateh netos de portugueses.
tem_direito(X, portuguesa) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, portuguesa), \+cidadania(X, portuguesa).

% Avalia se uma pessoa tem direito a cidadania britanica.
    % REGRA: A cidadania deve ser transmitida por um pai ou mae que eh cidadao britanico.
tem_direito(X, britanica) :- (pai(Z,X); mae(Z, X)), cidadania(Z, britanica), \+cidadania(X, britanica).

% Avalia se uma pessoa tem direito a cidadania italiana.
    % REGRA: O direito a cidadania eh transmitido sem limite de gerações.
tem_direito(X, italiana) :- descendente(X, Y), cidadania(Y, italiana), \+cidadania(X, italiana).
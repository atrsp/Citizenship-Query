# Avalia se uma pessoa é descendente de outra.
descendente(X, Y) :- (pai(Y, X); mae(Y, X)); (pai(Z, X); mae(Z, X)), descendente(Z, Y).

# Avalia se uma pessoa é avô ou avó de outra.
avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (mae(X, Z); pai(X, Z)).

# Avaliação de cidadanias: 
    # REGRA GERAL: uma pessoa que já possui uma cidadania não tem direito a ela mesma, mas pode ter direito a outras.

# Avalia se uma pessoa tem direito à cidadania alemã.
    # REGRA: Transmissão de cidadania até netos de alemães.
tem_direito(X, alema) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, alema), \+cidadania(X, alema).

# Avalia se uma pessoa tem direito à cidadania portuguesa.
    # REGRA: Transmissão de cidadania até netos de portugueses.
tem_direito(X, portuguesa) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, portuguesa), \+cidadania(X, portuguesa).

# Avalia se uma pessoa tem direito à cidadania britânica.
    # REGRA: A cidadania deve ser transmitida por um pai ou mãe que é cidadão britânico.
tem_direito(X, britanica) :- (pai(Z,X); mae(Z, X)), cidadania(Z, britanica), \+cidadania(X, britanica).

# Avalia se uma pessoa tem direito à cidadania italiana.
    # REGRA: O direito à cidadania é transmitido sem limite de gerações.
tem_direito(X, italiana) :- descendente(X, Y), cidadania(Y, italiana), \+cidadania(X, italiana).
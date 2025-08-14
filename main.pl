# Avalia se uma pessoa é descendente de outra.
descendente(X, Y) :- (pai(Y, X); mae(Y, X)); (pai(Z, X); mae(Z, X)), descendente(Z, Y).

# Avalia se uma pessoa é avô ou avó de outra.
avo(X, Y) :- (pai(Z, Y); mae(Z, Y)), (mae(X, Z); pai(X, Z)).

# Avaliação de cidadanias: 
    # REGRA GERAL: uma pessoa que já possui uma cidadania não tem direito a ela mesma, mas pode ter direito a outras.

# Avalia se uma pessoa tem direito à cidadania alemã.
    # REGRA: Transmissão de cidadania até netos de alemães.
tem_direito(X, alemanha) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, alemanha), \+cidadania(X, alemanha).

# Avalia se uma pessoa tem direito à cidadania portuguesa.
    # REGRA: Transmissão de cidadania até netos de portugueses.
tem_direito(X, portugal) :- (avo(Z, X); pai(Z, X); mae(Z, X)), cidadania(Z, portugal), \+cidadania(X, portugal).

# Avalia se uma pessoa tem direito à cidadania britânica.
    # REGRA: A cidadania deve ser transmitida por um pai ou mãe que é cidadão britânico.
tem_direito(X, reino_unido) :- (pai(Z,X); mae(Z, X)), cidadania(Z, reino_unido), \+cidadania(X, reino_unido).

# Avalia se uma pessoa tem direito à cidadania italiana.
    # REGRA: O direito à cidadania é transmitido sem limite de gerações.
tem_direito(X, italia) :- descendente(X, Y), cidadania(Y, italia), \+cidadania(X, italia).
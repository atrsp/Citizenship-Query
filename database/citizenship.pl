# GENEALOGIA ###############################################################

#PRIMEIRA GERAÇÃO ----------------------------------------------------------
# tomas e madalena sao pais de santiago (Masc), manuel (Masc) e leonor (Fem)
pai(tomas, santiago).
pai(tomas, manuel).
pai(tomas, leonor).
mae(madalena, santiago).
mae(madalena, manuel).
mae(madalena, leonor).

# vitor e ana sao pais de matteo (Masc), diana (Fem) e chiara (Fem)
pai(vitor, matteo).
pai(vitor, diana).
pai(vitor, chiara).
mae(ana, matteo).
mae(ana, diana).
mae(ana, chiara).

# cloves é pai de wesley e jaqueline
pai(cloves, wesley).
pai(cloves, jaqueline).

# oliver é pai de harry, lila e ava
pai(oliver, harry).
pai(oliver, lila).
pai(oliver, ava).

# petra é mãe de otto e friedrich
mae(petra, otto).
mae(petra, friedrich).


#SEGUNDA GERAÇÃO ----------------------------------------------------------
# leonor e matteo são pais de giulia
mae(leonor, giulia).
pai(matteo, giulia).

# manuel é pai de catarina
pai(manuel, catarina).

# santiago é pai de martin
pai(santiago, martin).

# diana e friedrich são pais de conrad, mia e lola
pai(friedrich, conrad).
pai(friedrich, mia).
pai(friedrich, lola).
mae(diana, conrad).
mae(diana, mia).
mae(diana, lola).

# chiara e harry sao pais de lorenzo
mae(chiara, lorenzo).
pai(harry, lorenzo).

# ava e otto sao pais da emma
mae(ava, emma).
pai(otto, emma).


#TERCEIRA GERAÇÃO ----------------------------------------------------------
# catarina e conrad sao pais do mario
pai(conrad, mario).
mae(catarina, mario).

# mia e martin sao pais de clara, camila e max
pai(martin, clara).
pai(martin, camila).
pai(martin, max).
mae(mia, clara).
mae(mia, camila).
mae(mia, max).


#QUARTA GERAÇÃO ----------------------------------------------------------
# jaqueline e mario são pais de kaua e iara
mae(jaqueline, iara).
mae(jaqueline, kaua).
pai(mario, iara).
pai(mario, kaua).

#camila e lorenzo sao pais de george
pai(lorenzo, george).
mae(camila, george).

#max e lola sao pais de arthur
pai(max, arthur).
mae(lola, arthur).



# CIDADANIAS #############################################################

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

cidadania(oliver, reino unido).
cidadania(harry, reino unido).
cidadania(lila, reino unido).
cidadania(ava, reino unido).

cidadania(petra, alemanha).
cidadania(otto, alemanha).
cidadania(friedrich, alemanha).
(deffacts BH
(naranjas 2 stok_naranjas 8 stockcaja 0 )
(cajasInicio 0)
)

(defrule recoger_narajas
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    
    (test(and(< ?nar ?stknAr) (< ?caja 3)))
    =>
    assert(naranjas ?nar stok_naranjas (?stknAr-?nar) stockcaja ?nar )
)
(defrule vaciar-caja
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)

    (test(=< ?caja 3))
    =>
    (naranjas ?nar stok_naranjas ?stknAr stockcaja 0 )
    (cajasInicio ?nar)
    ascas
    sadasda
)
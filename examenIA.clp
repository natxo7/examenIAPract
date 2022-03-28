(deffacts BH
(naranjas 2 stok_naranjas 8 stockcaja 0 )
(manzanas 2 stok_naranjas 8 stockcaja 0 )
(uvas 2 stok_naranjas 8 stockcaja 0 )
(cajasInicioNaranja 0 cajasInicioUva 0 cajasInicioManzana 0 )
)

(defrule recoger_narajas
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    
    (test(and(< ?nar ?stknAr) (< ?caja 3)))
    =>
    assert(naranjas ?nar stok_naranjas (?stknAr-?nar) stockcaja ?nar )
)
(defrule recoger_manzanas
    (manzanas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    
    (test(and(< ?nar ?stknAr) (< ?caja 3)))
    =>
    assert(naranjas ?nar stok_naranjas (?stknAr-?nar) stockcaja ?nar )
)



(defrule vaciar-caja
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)

    (test(=< ?caja 3))
    =>
    (naranjas ?nar stok_naranjas ?stknAr stockcaja 0 )
    (cajasInicio (?a+?nar))
)
(defrule final-caja
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    (manzanas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    (uva ?nar stok_naranjas ?stknAr stockcaja ?caja)
    test()

)
(deffacts BH
(naranjas 2 stok_naranjas 8 stockcaja 0 )
(manzanas 2 stok_manzanas 8 stockcaja 0 )
(uvas 1 stok_uvas 8 stockcaja 0 )
(cajasInicioNaranja 0 cajasInicioUva 0 cajasInicioManzana 0 )
)

(defrule recoger_narajas
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    
    (test(and(< ?nar ?stknAr) (< ?caja 3)))
    =>
    (assert(naranjas 0 stok_naranjas (?stknAr-?nar) stockcaja ?nar ))
)
(defrule recoger_manzanas
    (manzanas ?nar stok_manzanas ?stknAr stockcaja ?caja)
    
    (test(and(< ?nar ?stknAr) (< ?caja 3)))
    =>
    (assert(manzanas 0 stok_manzanas (?stknAr-?nar) stockcaja ?nar ))
)

(defrule recoger_uva
    (uvas ?nar stok_uvas ?stknAr stockcaja ?caja)
    
    (test(and(< ?nar ?stknAr) (< ?caja 3)))
    =>
    (assert(uvas 0 stok_uvas (?stknAr-?nar) stockcaja ?nar ))
)




(defrule vaciar-caja
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    (uvas ?nar stok_uvas ?stknAr stockcaja ?caja)
    (manzanas ?nar stok_manzanas ?stknAr stockcaja ?caja)
    (test(=< ?caja 3))
    =>
    (naranjas ?nar stok_naranjas ?stknAr stockcaja 0 )
    (cajasInicioNaranja ?caja cajasInicioUva 0 cajasInicioManzana 0 )
)
(defrule final-caja
    (naranjas ?nar stok_naranjas ?stknAr stockcaja ?caja)
    (manzanas ?man stok_manzanas ?stknAr stockcaja ?caja)
    (uvas ?uv stok_uvas ?stknAr stockcaja ?caja)

    (cajasInicioNaranja ?x cajasInicioUva ?y cajasInicioManzana ?z )
    test(= ?x ?nar)
    test(= ?y ?uv)
    test(= ?z ?man)
    =>
    halt
)
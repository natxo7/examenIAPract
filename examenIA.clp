(deffacts BH
(naranjas 2)
(stok_naranjas 8)
(manzanas 3)
(stock_manzanas 10)
(uva 1)
(stok_uvas 3)
(posicion_actual X 0 Y 0)
)

(defrule recoger_narajas
    (naranjas ?nar stok_naranjas ?stknAr)
    (test(< ?nar ?stknAr))
    =>
    assert(naranjas ?nar stok_naranjas (?stknAr-?nar) )

)
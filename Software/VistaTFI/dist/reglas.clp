(deftemplate caso
        (field delito)
        (field procedimiento)
        (field motivo)
        (field circunstanciasExternasDeAtenuacion)
        (field cantidadVictimas)
        (field cantidadVictimarios)
)

(deftemplate victima
        (field nombreApellido)
        (field dni)
        (field edad)
        (field estado)
)

(deftemplate victimario
        (field nombreApellido)
        (field dni)
        (field edad)
        (field relacionConVictima)
        (field rol)
)

(deftemplate condena
        (field dni)
        (field tipoCondena)
        ;(field tiempo)
        (field aniosMin)
        (field mesesMin)
        (field diasMin)
        (field aniosMax)
        (field mesesMax)
        (field diasMax)
        (field articulo)
)

(deftemplate lesion
        (field tipoLesion)
)

(deftemplate duelo
        (field situacion)
)



;******************************************************************************************************************************************
;               TITULO I: DELITOS CONTRA LAS PERSONAS
;******************************************************************************************************************************************
;                       Capitulo I: Delitos contra la vida
;******************************************************************************************************************************************
;                               Homicidio
;******************************************************************************************************************************************

(defrule articulo80_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
        )
        (or
            (exists (caso (motivo "Precio")))
            (exists (caso (motivo "Promesa remuneratoria")))
            (exists (caso (motivo "Placer")))
            (exists (caso (motivo "Codicia")))
            (exists (caso (motivo "Odio racial")))
            (exists (caso (motivo "Odio religioso")))
            (exists (caso (motivo "Odio de genero")))
            (exists (caso (motivo "Odio a la orientacion sexual")))
            (exists (caso (motivo "Odio a la identidad de genero o su expresion")))
            (exists (caso (motivo "Medio idoneo para crear un peligro comun")))
            (exists (caso (motivo "Funcion/cargo/condicion de seguridad publica/policial/penitenciaria (de la victima)")))
            (exists (caso (motivo "Abuso de funcion/cargo de seguridad publica/policial/penitenciaria (del victimario)")))
            (exists (caso (motivo "Causar sufrimiento")))
            (exists (caso (motivo "Preparar otro delito")))
            (exists (caso (motivo "Facilitar otro delito")))
            (exists (caso (motivo "Consumar otro delito")))
            (exists (caso (motivo "Ocultar otro delito")))
            (exists (caso (motivo "Asegurar resultados de otro delito")))
            (exists (caso (motivo "Procurar impunidad para si u otro delito")))
            (exists (caso (motivo "No haber logrado el fin de otro delito")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (not (exists (victimario (relacionConVictima "Otra"))))
        (exists (victima (estado "Fallecido")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 8) (aniosMax 25) (articulo "80")))
        (printout t "regla activada: articulo80_A" crlf)
)


(defrule articulo80_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
        )
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (test  (> ?cantidadVictimarios 1))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "8 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 8) (aniosMax 25) (articulo "80")))
        (printout t "regla activada: articulo80_B" crlf)
)


(defrule articulo80_C ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
        )
        (or
            (exists (caso (motivo "Precio")))
            (exists (caso (motivo "Promesa remuneratoria")))
            (exists (caso (motivo "Placer")))
            (exists (caso (motivo "Codicia")))
            (exists (caso (motivo "Odio racial")))
            (exists (caso (motivo "Odio religioso")))
            (exists (caso (motivo "Odio de genero")))
            (exists (caso (motivo "Odio a la orientacion sexual")))
            (exists (caso (motivo "Odio a la identidad de genero o su expresion")))
            (exists (caso (motivo "Medio idoneo para crear un peligro comun")))
            (exists (caso (motivo "Funcion/cargo/condicion de seguridad publica/policial/penitenciaria (de la victima)")))
            (exists (caso (motivo "Abuso de funcion/cargo de seguridad publica/policial/penitenciaria (del victimario)")))
            (exists (caso (motivo "Violencia de genero (De hombre a mujer)")))
            (exists (caso (motivo "Causar sufrimiento")))
            (exists (caso (motivo "Preparar otro delito")))
            (exists (caso (motivo "Facilitar otro delito")))
            (exists (caso (motivo "Consumar otro delito")))
            (exists (caso (motivo "Ocultar otro delito")))
            (exists (caso (motivo "Asegurar resultados de otro delito")))
            (exists (caso (motivo "Procurar impunidad para si u otro delito")))
            (exists (caso (motivo "No haber logrado el fin de otro delito")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 25) (articulo "80")))
        (printout t "regla activada: articulo80_C" crlf)
)


(defrule articulo80_D ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
        )
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (test  (> ?cantidadVictimarios 1))
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 25) (articulo "80")))
        (printout t "regla activada: articulo80_D" crlf)
)


(defrule articulo81_A ""
        ?victimario <- (victimario (dni ?dni))

        (exists (caso (delito "Homicidio")))
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (exists (victimario (relacionConVictima "Otra"))) ;Para evitar redundancia
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 3) (articulo "81")))
        (printout t "regla activada: articulo81_A" crlf)
)


(defrule articulo81_B ""
        ?victimario <- (victimario (dni ?dni))

        (exists (caso (delito "Homicidio")))
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (exists (victimario (relacionConVictima "Otra"))) ;Para evitar redundancia
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 3) (articulo "81")))
        (printout t "regla activada: articulo81_B" crlf)
)


(defrule articulo82_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Homicidio")))
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (not (exists (victimario (relacionConVictima "Otra"))))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 25) (articulo "82")))
        (printout t "regla activada: articulo82_A" crlf)
)


(defrule articulo82_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Homicidio")))
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (not (exists (victimario (relacionConVictima "Otra"))))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 25) (articulo "82")))
        (printout t "regla activada: articulo82_B" crlf)
)


(defrule articulo84_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Homicidio")))
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (exists (caso (cantidadVictimas 1)))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 5 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 5) (articulo "84")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 5) (aniosMax 10) (articulo "84")))
        (printout t "regla activada: articulo84_A" crlf)
)


(defrule articulo84_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimas ?cantidadVictimas))
        (exists (caso (delito "Homicidio")))
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (test  (> ?cantidadVictimas 1))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "2 a 5 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 2) (aniosMax 5) (articulo "84")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 5) (aniosMax 10) (articulo "84")))
        (printout t "regla activada: articulo84_B" crlf)
)


(defrule articulo84bis_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Homicidio")))
        (exists (caso (procedimiento "Conduccion imprudente, negligente o antirreglamentaria de un vehiculo con motor")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;Cuando no se dio ninguno de los agravantes
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "2 a 5 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 2) (aniosMax 5) (articulo "84bis")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 5) (aniosMax 10) (articulo "84bis")))
        (printout t "regla activada: articulo84bis_A" crlf)
)


(defrule articulo84bis_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Homicidio")))
        (exists (caso (procedimiento "Conduccion imprudente, negligente o antirreglamentaria de un vehiculo con motor")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Cuando se dio alguno de los agravantes
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 6) (articulo "84bis")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 5) (aniosMax 10) (articulo "84bis")))
        (printout t "regla activada: articulo84bis_B" crlf)
)


;Se dispara si no se disparo ninguna de las reglas relacionadas con homicidio
(defrule articulo79 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Homicidio")))
        (exists (victima (estado "Fallecido")))
        (not (exists (condena (tipoCondena "Prision"))))
        (not (exists (condena (tipoCondena "Inhabilitacion especial"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 25) (articulo "79")))
        (printout t "regla activada: articulo79" crlf)
)

;******************************************************************************************************************************************
;                Suicidio
;******************************************************************************************************************************************

(defrule articulo83 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Instigar o ayudar a otro a cometer suicidio"))) 
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "83")))
        (printout t "regla activada: articulo83" crlf)
)

(defrule instigarOAyudarAOtroACometerSuicidioSinCondena ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Instigar o ayudar a otro a cometer suicidio"))) 
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "No se establece condena para esta situacion") ))
        (assert (condena (dni ?dni) (tipoCondena "No es punible") (articulo "83")))
        (printout t "regla activada: suicidioSinCondena" crlf)
)

;******************************************************************************************************************************************
;                Aborto
;******************************************************************************************************************************************

(defrule articulo85_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Sin consentimiento de la victima")))
        (not (exists (caso (motivo "Abuso de la profesion (del victimario)"))))
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "85")))
        (printout t "regla activada: articulo85_A" crlf)
)


(defrule articulo85_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Sin consentimiento de la victima")))
        (not (exists (caso (motivo "Abuso de la profesion (del victimario)"))))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "85")))
        (printout t "regla activada: articulo85_B" crlf)
)


(defrule articulo85_C_88 ""
        ?victimario <- (victimario (dni ?dniVictimario))
        ?victima <- (victima (dni ?dniVictima))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Con consentimiento de la victima")))
        (not (exists (caso (motivo "Abuso de la profesion (del victimario)"))))
        (not (exists (caso (motivo "Evitar un peligro para la vida o salud de la mujer embarazada, que no pueda ser evitado por otros medios"))))
        (not (exists (caso (motivo "Embarazo proveniente de una violacion o de un atentado al pudor sobre una mujer demente"))))
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dniVictimario) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dniVictimario) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "8588")))
        ;(assert (condena (dni ?dniVictima) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dniVictima) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "8588")))
        (printout t "regla activada: articulo85_C_88" crlf)
)


(defrule articulo85_D_88 ""
        ?victimario <- (victimario (dni ?dniVictimario))
        ?victima <- (victima (dni ?dniVictima))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Con consentimiento de la victima")))
        (not (exists (caso (motivo "Abuso de la profesion (del victimario)"))))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dniVictimario) (tipoCondena "Prision") (tiempo "1 a 6 anios")))
        (assert (condena (dni ?dniVictimario) (tipoCondena "Prision") (aniosMin 1) (aniosMax 6) (articulo "8588")))
        ;(assert (condena (dni ?dniVictima) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dniVictima) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "8588")))
        (printout t "regla activada: articulo85_D_88" crlf)
)


(defrule articulo86_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Sin consentimiento de la victima")))
        (exists (caso (motivo "Abuso de la profesion (del victimario)")))
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "86")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial por el doble de tiempo que vaya a prision") (articulo "86")))
        (printout t "regla activada: articulo86_A" crlf)
)


(defrule articulo86_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Sin consentimiento de la victima")))
        (exists (caso (motivo "Abuso de la profesion (del victimario)")))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "86")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial por el doble de tiempo que vaya a prision") (articulo "86")))
        (printout t "regla activada: articulo86_B" crlf)
)


(defrule articulo86_C_88 ""
        ?victimario <- (victimario (dni ?dniMedico))
        ?victima <- (victima (dni ?dniMadre))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Con consentimiento de la victima")))
        (exists (caso (motivo "Abuso de la profesion (del victimario)")))
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dniMedico) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dniMedico) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "8688")))
        (assert (condena (dni ?dniMedico) (tipoCondena "Inhabilitacion especial por el doble de tiempo que vaya a prision") (articulo "8688")))
        ;(assert (condena (dni ?dniMadre) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dniMadre) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "8688")))
        (printout t "regla activada: articulo86_C_88" crlf)
)


(defrule articulo86_D ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Con consentimiento de la victima")))
        (exists (caso (motivo "Abuso de la profesion (del victimario)")))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 6) (articulo "86")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial por el doble de tiempo que vaya a prision") (articulo "86")))
        (printout t "regla activada: articulo86_D" crlf)
)


(defrule articulo86_E ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Con consentimiento de la victima")))
        (or
            (exists (caso (motivo "Evitar un peligro para la vida o salud de la mujer embarazada, que no pueda ser evitado por otros medios")))
            (exists (caso (motivo "Embarazo proveniente de una violacion o de un atentado al pudor sobre una mujer demente")))
        )
        (not (exists (victima (estado "Fallecido")))) ;PARA QUE NO ENTRE EN LA REGLA 85_D_88
        =>
        (assert (condena (dni ?dni) (tipoCondena "No es punible") (articulo "86")))
        (printout t "regla activada: articulo86_E" crlf)
)


(defrule articulo86_F ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Con consentimiento de un representante legal de la victima (si la victima es demente)")))
        (exists (caso (motivo "Embarazo proveniente de una violacion o de un atentado al pudor sobre una mujer demente")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "No es punible") (articulo "86")))
        (printout t "regla activada: articulo86_F" crlf)
)


(defrule articulo87 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Accidentalmente por violencia")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 2 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 2) (articulo "87")))
        (printout t "regla activada: articulo87" crlf)
)


(defrule articulo88 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Aborto")))
        (exists (caso (procedimiento "Mujer consciente que causa su propio aborto")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "88")))
        (printout t "regla activada: articulo88" crlf)
)

;******************************************************************************************************************************************
;                       Capitulo II: Lesiones
;******************************************************************************************************************************************

(defrule articulo90 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (exists (caso (procedimiento "Ningun procedimiento insidioso")))
        (exists (caso (motivo "Ninguno de los anteriores"))) ;Para evitar redundancia respecto del articulo 92
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 6) (articulo "90")))
        (printout t "regla activada: articulo90" crlf)
)


(defrule articulo91 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (exists (caso (procedimiento "Ningun procedimiento insidioso")))
        (exists (caso (motivo "Ninguno de los anteriores"))) ;Para evitar redundancia respecto del articulo 92
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "91")))
        (printout t "regla activada: articulo91" crlf)
)


(defrule articulo92_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
            ;(not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        )
        (exists (victima (estado "Con vida, con lesiones")))      
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 2 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 2) (articulo "92")))
        (printout t "regla activada: articulo92_A" crlf)
)


(defrule articulo92_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (not (exists (caso (procedimiento "Ensaniamiento"))))
        (not (exists (caso (procedimiento "Alevosia"))))
        (not (exists (caso (procedimiento "Veneno"))))
        (not (exists (caso (procedimiento "Otro procedimiento insidioso"))))
        (not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        (exists (victima (estado "Con vida, con lesiones")))  
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 2 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 2) (articulo "92")))
        (printout t "regla activada: articulo92_B" crlf)
)


(defrule articulo92_C ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
            ;(not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        )
        (exists (victima (estado "Con vida, con lesiones")))        
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "92")))
        (printout t "regla activada: articulo92_C" crlf)
)



(defrule articulo92_D ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (not (exists (caso (procedimiento "Ensaniamiento"))))
        (not (exists (caso (procedimiento "Alevosia"))))
        (not (exists (caso (procedimiento "Veneno"))))
        (not (exists (caso (procedimiento "Otro procedimiento insidioso"))))
        (not (exists (caso (procedimiento "Conduccion imprudente, negligente o antirreglamentaria de un vehiculo con motor")))) ; Para evitar redundancia con 94_bis
        (not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        (exists (victima (estado "Con vida, con lesiones")))        
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "92")))
        (printout t "regla activada: articulo92_D" crlf)
)


(defrule articulo92_E ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
            ;(not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        )
        (exists (victima (estado "Con vida, con lesiones")))       
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "92")))
        (printout t "regla activada: articulo92_E" crlf)
)


(defrule articulo92_F ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (not (exists (caso (procedimiento "Ensaniamiento"))))
        (not (exists (caso (procedimiento "Alevosia"))))
        (not (exists (caso (procedimiento "Veneno"))))
        (not (exists (caso (procedimiento "Otro procedimiento insidioso"))))
        (not (exists (caso (procedimiento "Conduccion imprudente, negligente o anterriglamentaria de un vehiculo con motor")))) ; Para evitar redundancia con 94_bis
        (not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        (exists (victima (estado "Con vida, con lesiones")))       
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "92")))
        (printout t "regla activada: articulo92_F" crlf)
)


(defrule articulo93_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (motivo "Ninguno de los anteriores"))) ; Para evitar redundancia con 92_B   
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;Convendria fijar circExt "Si" y no mostrarlo como opcion en el menu, considerando q fue por emocion violenta
        (exists (victima (estado "Con vida, con lesiones")))                
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "15 dias a 6 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (diasMin 15) (mesesMax 6) (articulo "93")))
        (printout t "regla activada: articulo93_A" crlf)
)


(defrule articulo93_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (motivo "Ninguno de los anteriores"))) ; Para evitar redundancia con 92_D
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;Convendria fijar circExt "Si" y no mostrarlo como opcion en el menu, considerando q fue por emocion violenta
        (exists (victima (estado "Con vida, con lesiones")))                
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 3) (articulo "93")))
        (printout t "regla activada: articulo93_B" crlf)
)


(defrule articulo93_C ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (motivo "Ninguno de los anteriores"))) ; Para evitar redundancia con 92_F
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;Convendria fijar circExt "Si" y no mostrarlo como opcion en el menu, considerando q fue por emocion violenta                
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "93")))
        (printout t "regla activada: articulo93_C" crlf)
)


(defrule articulo94_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimas ?cantidadVictimas))
        (exists (caso (delito "Lesion")))
        (exists (lesion (tipoLesion "Danio en el cuerpo o en la salud")))
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (test  (= ?cantidadVictimas 1))
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision (o multa de $1000 a $15000)") (tiempo "1 mes a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision (o multa de $1000 a $15000)") (mesesMin 1) (aniosMax 3) (articulo "94")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 1) (aniosMax 4) (articulo "94")))
        (printout t "regla activada: articulo94_A" crlf)
)


(defrule articulo94_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimas ?cantidadVictimas))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (exists (caso (motivo "Ninguno de los anteriores"))) ; Para evitar redundancia
        (test  (> ?cantidadVictimas 1))
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision (o multa de $3000)") (tiempo "6 meses a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision (o multa de $3000)") (mesesMin 6) (aniosMax 3) (articulo "94")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "18 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (mesesMin 6) (aniosMin 1) (articulo "94")))
        (printout t "regla activada: articulo94_B" crlf)
)


(defrule articulo94bis ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimas ?cantidadVictimas))
        (exists (caso (delito "Lesion")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (exists (caso (procedimiento "Conduccion imprudente, negligente o antirreglamentaria de un vehiculo con motor")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si hay agravantes
        (test  (> ?cantidadVictimas 1))
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision (o multa de $3000)") (tiempo "6 meses a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision (o multa de $3000)") (mesesMin 6) (aniosMax 3) (articulo "94bis")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "18 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (mesesMin 6) (aniosMin 1) (articulo "94bis")))
        (printout t "regla activada: articulo94bis" crlf)
)


(defrule articulo89 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Lesion")))
        (not (exists (condena (tipoCondena "Prision"))))
        (not (exists (condena (tipoCondena "Inhabilitacion especial"))))
        (not (exists (condena (tipoCondena "Prision (o multa de $1000 a $15000)"))))
        (not (exists (condena (tipoCondena "Prision (o multa de $3000)"))))
        (exists (victima (estado "Con vida, con lesiones")))
        ;********************CASO DE PRUEBA********************
        ;(exists (caso (consecuencia "Otro danio no mencionado")))
        ;(exists (caso (procedimiento "Ningun procedimiento indisioso")))
        ;(exists (caso (motivo "Ninguno de los anteriores")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 mes a 1 anio")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 1) (aniosMax 1) (articulo "89")))
        (printout t "regla activada: articulo89" crlf)
)

;******************************************************************************************************************************************
;                       Capitulo III: Homicidio o lesiones en riña
;******************************************************************************************************************************************

(defrule articulo95_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en rinia")))
        (test  (> ?cantidadVictimarios 1))
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "2 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 2) (aniosMax 6) (articulo "95")))
        (printout t "regla activada: articulo95_A" crlf)
)


(defrule articulo95_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en rinia")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (test  (> ?cantidadVictimarios 1))
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "95")))
        (printout t "regla activada: articulo95_B" crlf)
)


(defrule articulo96 ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en rinia")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (test  (> ?cantidadVictimarios 1))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "4 a 120 dias")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (diasMin 4) (diasMax 120) (articulo "96")))
        (printout t "regla activada: articulo96" crlf)
)

;******************************************************************************************************************************************
;                       Capitulo IV: Duelo
;******************************************************************************************************************************************

(defrule articulo97_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (> ?cantidadVictimarios 2)) ; cantidadPadrinos + 1 (victimario)
        (exists (victima (estado "Con vida, sin lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 6 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 1) (mesesMax 6) (articulo "97")))
        (printout t "regla activada: articulo97_A" crlf)
)


(defrule articulo97_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (> ?cantidadVictimarios 2)) ; cantidadPadrinos + 1 (victimario)
        (exists (victima (estado "Con vida, con lesiones")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 6 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 1) (mesesMax 6) (articulo "97")))
        (printout t "regla activada: articulo97_B" crlf)
)


(defrule articulo97_C ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (> ?cantidadVictimarios 2)) ; cantidadPadrinos + 1 (victimario)
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "97")))
        (printout t "regla activada: articulo97_C" crlf)
)


(defrule articulo97_D ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (> ?cantidadVictimarios 2)) ; cantidadPadrinos + 1 (victimario)
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "97")))
        (printout t "regla activada: articulo97_D" crlf)
)


(defrule articulo98_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Fallecido")))
        (not (exists (caso (procedimiento "Medio empleado no deberia causar la muerte"))))
        (not (exists (caso (motivo "Causar danio en el cuerpo"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 25) (articulo "98")))
        (printout t "regla activada: articulo98_A" crlf)
)


(defrule articulo98_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victimario (relacionConVictima "Otra"))) ; No tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        (exists (victima (estado "Fallecido")))
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        (exists (caso (motivo "Causar danio en el cuerpo")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 3) (articulo "98")))
        (printout t "regla activada: articulo98_B" crlf)
)


(defrule articulo98_C ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (not (exists (victimario (relacionConVictima "Otra")))) ; No tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        (exists (victima (estado "Fallecido")))
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        (exists (caso (motivo "Causar danio en el cuerpo")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 25) (articulo "98")))
        (printout t "regla activada: articulo98_C" crlf)
)


(defrule articulo98_D ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Con vida, con lesiones")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        ;(or
            ;(exists (caso (procedimiento "Ensaniamiento")))
            ;(exists (caso (procedimiento "Alevosia")))
            ;(exists (caso (procedimiento "Otro procedimiento indisioso")))
        ;)
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 2 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 2) (articulo "98")))
        (printout t "regla activada: articulo98_D" crlf)
)


(defrule articulo98_E ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (not (exists (caso (procedimiento "Medio empleado no deberia causar la muerte"))))
        ;(or
            ;(exists (caso (procedimiento "Ensaniamiento")))
            ;(exists (caso (procedimiento "Alevosia")))
            ;(exists (caso (procedimiento "Otro procedimiento indisioso")))
        ;)
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "98")))
        (printout t "regla activada: articulo98_E" crlf)
)


(defrule articulo98_F ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        ;(not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "98")))
        (printout t "regla activada: articulo98_F" crlf)
)


(defrule articulo98_G ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (not (exists (caso (procedimiento "Medio empleado no deberia causar la muerte"))))
        ;(or
        ;    (exists (caso (procedimiento "Ensaniamiento")))
        ;    (exists (caso (procedimiento "Alevosia")))
        ;    (exists (caso (procedimiento "Otro procedimiento indisioso")))
        ;)
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "98")))
        (printout t "regla activada: articulo98_G" crlf)
)


(defrule articulo98_H ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        ;(not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "98")))
        (printout t "regla activada: articulo98_H" crlf)
)


(defrule articulo98_I ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Con vida, sin lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 mes a 1 anio")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 1) (aniosMax 1) (articulo "98")))
        (printout t "regla activada: articulo98_I" crlf)
)


(defrule articulo99_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Duelo")))
        (or
            (exists (duelo (situacion "Instigar a otro a provocar o a aceptar un duelo")))
            (exists (duelo (situacion "Desacreditar publicamente a otro por no desafiar o por rehusar un desafio")))
        )
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No se concreto el duelo
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $1000 a $15000") (articulo "99")))
        (printout t "regla activada: articulo99_A" crlf)
)


(defrule articulo99_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (or
            (exists (caso (delito "Duelo")))
            (exists (caso (delito "Lesion en duelo")))
        )
        (or
            (exists (duelo (situacion "Instigar a otro a provocar o a aceptar un duelo")))
            (exists (duelo (situacion "Desacreditar publicamente a otro por no desafiar o por rehusar un desafio")))
        )
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Con vida, sin lesiones")))
        
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $1000 a $15000") (articulo "99")))
        (printout t "regla activada: articulo99_B" crlf)
)


(defrule articulo99_C ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (or
            (exists (caso (delito "Duelo")))
            (exists (caso (delito "Lesion en duelo")))
        )
        (or
            (exists (duelo (situacion "Instigar a otro a provocar o a aceptar un duelo")))
            (exists (duelo (situacion "Desacreditar publicamente a otro por no desafiar o por rehusar un desafio")))
        )
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Con vida, con lesiones")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $1000 a $15000") (articulo "99")))
        (printout t "regla activada: articulo99_C" crlf)
)


(defrule articulo99_D ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (or
            (exists (duelo (situacion "Instigar a otro a provocar o a aceptar un duelo")))
            (exists (duelo (situacion "Desacreditar publicamente a otro por no desafiar o por rehusar un desafio")))
        )
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "99")))
        (printout t "regla activada: articulo99_D" crlf)
)


(defrule articulo99_E ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (or
            (exists (duelo (situacion "Instigar a otro a provocar o a aceptar un duelo")))
            (exists (duelo (situacion "Desacreditar publicamente a otro por no desafiar o por rehusar un desafio")))
        )
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "99")))
        (printout t "regla activada: articulo99_E" crlf)
)


(defrule articulo100_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Duelo")))
        (exists (duelo (situacion "Provocar o dar causa a un desafio, proponiendose un interes pecunario u otro objeto inmoral")))
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No se concreto el duelo
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "100")))
        (printout t "regla activada: articulo100_A" crlf)
)


(defrule articulo100_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Duelo")))
        (exists (duelo (situacion "Provocar o dar causa a un desafio, proponiendose un interes pecunario u otro objeto inmoral")))
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Con vida, sin lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "100")))
        (printout t "regla activada: articulo100_B" crlf)
)


(defrule articulo100_C ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Provocar o dar causa a un desafio, proponiendose un interes pecunario u otro objeto inmoral")))
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "100")))
        (printout t "regla activada: articulo100_C" crlf)
)


(defrule articulo100_D ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Provocar o dar causa a un desafio, proponiendose un interes pecunario u otro objeto inmoral")))
        (exists (victimario (rol "Instigador")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 25) (articulo "100")))
        (printout t "regla activada: articulo100_D" crlf)
)


(defrule articulo101_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por padrinos)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "101")))
        (printout t "regla activada: articulo101_A" crlf)
)


(defrule articulo101_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por padrinos)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "20 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 20) (aniosMax 25) (articulo "101")))
        (printout t "regla activada: articulo101_B" crlf)
)


(defrule articulo102_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Padrinos de un duelo utilizan cualquier genero de alevosia en la ejecucion del mismo")))
        (exists (victimario (rol "Padrino")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Con vida, con lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "102")))
        (printout t "regla activada: articulo102_A" crlf)
)


(defrule articulo102_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Padrinos de un duelo utilizan cualquier genero de alevosia en la ejecucion del mismo")))
        (exists (victimario (rol "Padrino")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "20 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 20) (aniosMax 25) (articulo "102")))
        (printout t "regla activada: articulo102_B" crlf)
)


(defrule articulo103_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Homicidio en duelo")))
        (exists (duelo (situacion "Padrinos conciertan un duelo a muerte o en condiciones tales que de ellas debiere resultar la muerte")))
        (exists (victimario (rol "Padrino")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "20 a 25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 20) (aniosMax 25) (articulo "103")))
        (printout t "regla activada: articulo103_A" crlf)
)


(defrule articulo103_B ""
        ?victimario <- (victimario (dni ?dni))
        (or
            (exists (caso (delito "Duelo")))
            (exists (caso (delito "Lesion en duelo")))
        )
        (exists (duelo (situacion "Padrinos conciertan un duelo a muerte o en condiciones tales que de ellas debiere resultar la muerte")))
        (exists (victimario (rol "Padrino")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Se concreto el duelo
        (not (exists (victima (estado "Fallecido"))))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $1000 a $15000") (articulo "103")))
        (printout t "regla activada: articulo103_B" crlf)
)


(defrule dueloSinCondena ""
        ?victimario <- (victimario (dni ?dni))
        (or
            (exists (caso (delito "Duelo")))
            (exists (caso (delito "Lesion en duelo")))
            (exists (caso (delito "Homicidio en duelo")))
        )
        (not (exists (condena (tipoCondena "Prision"))))
        ;(not (exists (condena (tipoCondena "Inhabilitacion especial"))))
        (not (exists (condena (dni ?dni) (tipoCondena "Multa de $1000 a $15000"))))
        ;PARTICIPAR DE UN DUELO COMO PADRINO / CON VIDA, SIN LESIONES
        =>
        (assert (condena (dni ?dni) (tipoCondena "No es punible") (articulo "97hasta103")))
        (printout t "regla activada: dueloSinCondena" crlf)
)

;******************************************************************************************************************************************
;                       Capitulo V: Abuso de armas
;******************************************************************************************************************************************

(defrule articulo104_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Disparar arma de fuego")))
        (exists (victima (estado "Con vida, sin lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 3) (articulo "104")))
        (printout t "regla activada: articulo104_A" crlf)
)


(defrule articulo104_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Agresion con arma")))
        (exists (victima (estado "Con vida, sin lesiones")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "15 dias a 6 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (diasMin 15) (mesesMax 6) (articulo "104")))
        (printout t "regla activada: articulo104_B" crlf)
)


(defrule articulo104_C ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (exists (caso (procedimiento "Ningun procedimiento insidioso")))
        (exists (caso (motivo "Ninguno de los anteriores"))) ;Para evitar redundancia respecto del articulo 92
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (articulo "104")))
        (printout t "regla activada: articulo104_C" crlf)
)


(defrule articulo104_D ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (exists (caso (procedimiento "Ningun procedimiento insidioso")))
        (exists (caso (motivo "Ninguno de los anteriores"))) 
        
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "104")))
        (printout t "regla activada: articulo104_D" crlf)
)


(defrule articulo104_E ""
        ?victimario <- (victimario (dni ?dni))
        (or  
             (exists (caso (delito "Disparar arma de fuego")))
             (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
        )
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (articulo "104")))
        (printout t "regla activada: articulo104_E" crlf)
)


(defrule articulo104_F ""
        ?victimario <- (victimario (dni ?dni))
        (or  
             (exists (caso (delito "Disparar arma de fuego")))
             (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones"))) 
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (not (exists (caso (procedimiento "Ensaniamiento"))))
        (not (exists (caso (procedimiento "Alevosia"))))
        (not (exists (caso (procedimiento "Veneno"))))
        (not (exists (caso (procedimiento "Otro procedimiento insidioso"))))
        (not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (articulo "104")))
        (printout t "regla activada: articulo104_F" crlf)
)


(defrule articul104_G ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))    
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
        )
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "104")))
        (printout t "regla activada: articulo104_G" crlf)
)



(defrule articulo104_H ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))    
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (not (exists (caso (procedimiento "Ensaniamiento"))))
        (not (exists (caso (procedimiento "Alevosia"))))
        (not (exists (caso (procedimiento "Veneno"))))
        (not (exists (caso (procedimiento "Otro procedimiento insidioso"))))
        (not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
            
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "104")))
        (printout t "regla activada: articulo104_H" crlf)
)


(defrule articulo104_I ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))   
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento insidioso")))
            ;(not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        )
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "104")))
        (printout t "regla activada: articulo104_I" crlf)
)


(defrule articulo104_J ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (not (exists (caso (procedimiento "Ensaniamiento"))))
        (not (exists (caso (procedimiento "Alevosia"))))
        (not (exists (caso (procedimiento "Veneno"))))
        (not (exists (caso (procedimiento "Otro procedimiento insidioso"))))
        (not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 15) (articulo "104")))
        (printout t "regla activada: articulo104_J" crlf)
)


(defrule articulo104_K ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))  
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (exists (caso (procedimiento "Emocion violenta")))
        ;(exists (caso (circunstanciasExternasDeAtenuacion "Si"))) 
        (exists (caso (motivo "Ninguno de los anteriores"))) 
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (articulo "104")))
        (printout t "regla activada: articulo104_K" crlf)
)


(defrule articulo104_L ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones"))) 
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
        )
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (motivo "Ninguno de los anteriores"))) 
        ;(exists (caso (circunstanciasExternasDeAtenuacion "Si"))) 
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (articulo "104")))
        (printout t "regla activada: articulo104_L" crlf)
)


(defrule articulo104_M ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (motivo "Ninguno de los anteriores"))) 
        ;(exists (caso (circunstanciasExternasDeAtenuacion "Si")))               
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 4 anios"))) ;Aumente el minimo de 1 a 4 años a 3 (ya que la pena es 3 años siempre q no sea otra mayor)
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 4) (articulo "104")))
        (printout t "regla activada: articulo104_M" crlf)
)


(defrule articulo104_N ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimas ?cantidadVictimas))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        (exists (lesion (tipoLesion "Danio en el cuerpo o en la salud")))
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (test  (= ?cantidadVictimas 1))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3)))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 1) (aniosMax 4) (articulo "104")))
        (printout t "regla activada: articulo104_N" crlf)
)


(defrule articulo104_O ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimas ?cantidadVictimas))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        (or
            (exists (lesion (tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra")))
            (exists (lesion (tipoLesion "Puesta en riesgo de la vida")))
            (exists (lesion (tipoLesion "Inutilizacion laboral por mas de un mes")))
            (exists (lesion (tipoLesion "Deformacion permanente en el rostro")))
            (exists (lesion (tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable")))
            (exists (lesion (tipoLesion "Inutilidad laboral permanente")))
            (exists (lesion (tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir")))
        )
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (exists (caso (motivo "Ninguno de los anteriores"))) 
        (test  (> ?cantidadVictimas 1))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (articulo "104")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "18 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 1) (mesesMin 6) (articulo "104")))
        (printout t "regla activada: articulo104_O" crlf)
)


(defrule articulo104_P ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Con vida, con lesiones")))
        ;DEBERIA SER CON NOT EXIST PERO LA CAMBIO PARA EVITAR REDUNDANCIA CON LAS DOS ANTERIORES
        ;(not (exists (condena (tipoCondena "Prision"))))
        ;(not (exists (condena (tipoCondena "Inhabilitacion especial"))))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
        (exists (caso (procedimiento "Ningun procedimiento insidioso")))
        (exists (caso (motivo "Ninguno de los anteriores")))
        ;********************CASO DE PRUEBA********************
        ;(exists (caso (consecuencia "Otro danio no mencionado")))
        ;(exists (caso (procedimiento "Ningun procedimiento insidioso")))
        ;(exists (caso (motivo "Ninguno de los anteriores")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (articulo "104")))
        (printout t "regla activada: articulo104_P" crlf)
)


(defrule articulo105_A ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento indisioso")))
        )
        (or
            (exists (caso (motivo "Precio")))
            (exists (caso (motivo "Promesa remuneratoria")))
            (exists (caso (motivo "Placer")))
            (exists (caso (motivo "Codicia")))
            (exists (caso (motivo "Odio racial")))
            (exists (caso (motivo "Odio religioso")))
            (exists (caso (motivo "Odio de genero")))
            (exists (caso (motivo "Odio a la orientacion sexual")))
            (exists (caso (motivo "Odio a la identidad de genero o su expresion")))
            (exists (caso (motivo "Medio idoneo para crear un peligro comun")))
            (exists (caso (motivo "Funcion/cargo/condicion de seguridad publica/policial/penitenciaria (de la victima)")))
            (exists (caso (motivo "Abuso de funcion/cargo de seguridad publica/policial/penitenciaria (del victimario)")))
            (exists (caso (motivo "Causar sufrimiento")))
            (exists (caso (motivo "Preparar otro delito")))
            (exists (caso (motivo "Facilitar otro delito")))
            (exists (caso (motivo "Consumar otro delito")))
            (exists (caso (motivo "Ocultar otro delito")))
            (exists (caso (motivo "Asegurar resultados de otro delito")))
            (exists (caso (motivo "Procurar impunidad para si u otro delito")))
            (exists (caso (motivo "No haber logrado el fin de otro delito")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 anios y 7 meses a 33 anios y 4 meses"))) ;8 a 25 años + 1/3
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (mesesMin 7) (aniosMax 33) (mesesMax 4) (articulo "105")))
        (printout t "regla activada: articulo105_A" crlf)
)


(defrule articulo105_B ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento indisioso")))
        )
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (test  (> ?cantidadVictimarios 1))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
         =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 anios y 7 meses a 33 anios y 4 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (mesesMin 7) (aniosMax 33) (mesesMax 4) (articulo "105")))
        (printout t "regla activada: articulo105_B" crlf)
)


(defrule articulo105_C ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento indisioso")))
        )
        (or
            (exists (caso (motivo "Precio")))
            (exists (caso (motivo "Promesa remuneratoria")))
            (exists (caso (motivo "Placer")))
            (exists (caso (motivo "Codicia")))
            (exists (caso (motivo "Odio racial")))
            (exists (caso (motivo "Odio religioso")))
            (exists (caso (motivo "Odio de genero")))
            (exists (caso (motivo "Odio a la orientacion sexual")))
            (exists (caso (motivo "Odio a la identidad de genero o su expresion")))
            (exists (caso (motivo "Medio idoneo para crear un peligro comun")))
            (exists (caso (motivo "Funcion/cargo/condicion de seguridad publica/policial/penitenciaria (de la victima)")))
            (exists (caso (motivo "Abuso de funcion/cargo de seguridad publica/policial/penitenciaria (del victimario)")))
            (exists (caso (motivo "Violencia de genero (De hombre a mujer)")))
            (exists (caso (motivo "Causar sufrimiento")))
            (exists (caso (motivo "Preparar otro delito")))
            (exists (caso (motivo "Facilitar otro delito")))
            (exists (caso (motivo "Consumar otro delito")))
            (exists (caso (motivo "Ocultar otro delito")))
            (exists (caso (motivo "Asegurar resultados de otro delito")))
            (exists (caso (motivo "Procurar impunidad para si u otro delito")))
            (exists (caso (motivo "No haber logrado el fin de otro delito")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "33 anios y 4 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 33) (mesesMin 4) (articulo "105")))
        (printout t "regla activada: articulo105_C" crlf)
)


(defrule articulo105_D ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (or
            (exists (caso (procedimiento "Ensaniamiento")))
            (exists (caso (procedimiento "Alevosia")))
            (exists (caso (procedimiento "Veneno")))
            (exists (caso (procedimiento "Otro procedimiento indisioso")))
        )
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (test  (> ?cantidadVictimarios 1))
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene que ser Asc/Desc, Cony/Ex cony o Pareja/Ex pareja
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "33 anios y 4 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 33) (mesesMin 4) (articulo "105")))
        (printout t "regla activada: articulo105_D" crlf)
)



(defrule articulo105_E ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (exists (victimario (relacionConVictima "Otra"))) ;Para evitar redundancia
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "8 meses a 2 anios"))) ; 1 a 3 años menos 1/3
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 8) (aniosMax 2) (articulo "105")))
        (printout t "regla activada: articulo105_E" crlf)
)



(defrule articulo105_F ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (exists (victimario (relacionConVictima "Otra"))) ;Para evitar redundancia
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 3) (articulo "105")))
        (printout t "regla activada: articulo105_F" crlf)
)



(defrule articulo105_G ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (exists (caso (procedimiento "Emocion violenta")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        (not (exists (victimario (relacionConVictima "Otra"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 anios y 4 meses a 33 anios y 4 meses"))) ; 10 a 25 años mas 1/3
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (mesesMin 4) (aniosMax 33) (mesesMax 4) (articulo "105")))
        (printout t "regla activada: articulo105_G" crlf)
)


(defrule articulo105_H ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        (exists (caso (motivo "Causar danio en el cuerpo")))
        (not (exists (victimario (relacionConVictima "Otra"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 anios y 4 meses a 33 anios y 4 meses "))) ; 10 a 25 años mas 1/3
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (mesesMin 4) (aniosMax 33) (mesesMax 4) (articulo "105")))
        (printout t "regla activada: articulo105_H" crlf)
)


(defrule articulo105_I ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (exists (caso (cantidadVictimas 1)))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 5 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 5)))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 5) (aniosMax 10) (articulo "105")))
        (printout t "regla activada: articulo105_I" crlf)
)


(defrule articulo105_J ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimas ?cantidadVictimas))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (or
            (exists (caso (procedimiento "Imprudencia, negligencia o impericia en arte o profesion")))
            (exists (caso (procedimiento "Inobservancia de reglamentos o deberes a cargo")))
        )
        (test  (> ?cantidadVictimas 1))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "2 a 5 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 2) (aniosMax 5)))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion especial") (aniosMin 5) (aniosMax 10) (articulo "105")))
        (printout t "regla activada: articulo105_J" crlf)
)


(defrule articulo105_K ""
        ?victimario <- (victimario (dni ?dni))
        (or  
            (exists (caso (delito "Disparar arma de fuego")))
            (exists (caso (delito "Agresion con arma")))
        )
        (exists (victima (estado "Fallecido")))
        (not (exists (condena (tipoCondena "Prision"))))
        (not (exists (condena (tipoCondena "Inhabilitacion especial"))))
                ;********************CASO DE PRUEBA********************
        ;relacionConVictima otra
        ;procedimiento otro
        ;motivo causar danio en el cuerpo
        ;circExt no
        ;cantVictimas y cantVictimario 1
        ;estado fallecido
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 25) (articulo "105")))
        (printout t "regla activada: articulo105_K" crlf)
)

;******************************************************************************************************************************************
;                       Capitulo VI: Abandono de personas
;******************************************************************************************************************************************

(defrule articulo106_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Abandono de persona")))
        (or
            (exists (caso (procedimiento "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No hay grave daño como consecuencia
        (not (exists (victima (estado "Fallecido"))))
        (exists (victimario (relacionConVictima "Otra")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "2 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 2) (aniosMax 6) (articulo "106")))
        (printout t "regla activada: articulo106_A" crlf)
)


(defrule articulo106_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Abandono de persona")))
        (or
            (exists (caso (procedimiento "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Hay grave daño como consecuencia
        (not (exists (victima (estado "Fallecido"))))
        (exists (victimario (relacionConVictima "Otra")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "106")))
        (printout t "regla activada: articulo106_B" crlf)
)


(defrule articulo106_C ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Abandono de persona")))
        (or
            (exists (caso (procedimiento "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado")))
        )
        (exists (victima (estado "Fallecido")))
        (exists (victimario (relacionConVictima "Otra")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 15) (articulo "106")))
        (printout t "regla activada: articulo106_C" crlf)
)


(defrule articulo107_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Abandono de persona")))
        (or
            (exists (caso (procedimiento "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No hay grave daño como consecuencia
        (not (exists (victima (estado "Fallecido"))))
        (not (exists (victimario (relacionConVictima "Otra"))))

        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "2 anios y 8 meses a 8 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 2) (mesesMin 8) (aniosMax 8) (articulo "107")))
        (printout t "regla activada: articulo107_A" crlf)
)


(defrule articulo107_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Abandono de persona")))
        (or
            (exists (caso (procedimiento "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado")))
        )
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Hay grave daño como consecuencia
        (not (exists (victima (estado "Fallecido"))))
        (not (exists (victimario (relacionConVictima "Otra"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "4 anios a 13 anios y 4 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 4) (aniosMax 13) (mesesMax 4) (articulo "107")))
        (printout t "regla activada: articulo107_B" crlf)
)


(defrule articulo107_C ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Abandono de persona")))
        (or
            (exists (caso (procedimiento "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte")))
            (exists (caso (procedimiento "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado")))
        )
        (exists (victima (estado "Fallecido")))
        (not (exists (victimario (relacionConVictima "Otra"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 anios y 8 meses a 20 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 6) (mesesMin 8) (aniosMax 20) (articulo "107")))
        (printout t "regla activada: articulo107_C" crlf)
)


(defrule articulo108 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Abandono de persona")))
        (exists (caso (procedimiento "Omitir prestarle el auxilio necesario (cuando pudiere hacerlo sin riesgo personal o no diere aviso inmediatamente a la autoridad) a una persona que haya encontrado perdida o desamparada (herida, invalida, amenazada de un peligro cualquiera o menor de 10 anios)")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $750 a $12500") (articulo "108")))
        (printout t "regla activada: articulo108" crlf)
)

;******************************************************************************************************************************************
;               TITULO II: DELITOS CONTRA EL HONOR
;******************************************************************************************************************************************

(defrule articulo109 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Calumnia (Falsa imputacion a una persona fisica de la comision de un delito que de lugar a la accion publica)")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $3000 a $30000") (articulo "109")))
        (printout t "regla activada: articulo109" crlf)
)


(defrule articulo110 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Injuria (Deshonra o desacreditacion intencional a una persona fisica)")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $1500 a $20000") (articulo "110")))
        (printout t "regla activada: articulo110" crlf)
)


(defrule articulo111 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Ninguno (Acusado de injuria prueba la verdad de la imputacion)")))
         =>
        (assert (condena (dni ?dni) (tipoCondena "Acusado exento de pena") (articulo "111")))
        (printout t "regla activada: articulo111" crlf)
)


(defrule articulo113_114_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Publicar o reproducir (en cualquier medio) injurias inferidas por otro, no siendo su contenido fiel a la fuente pertinente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $3000 a $30000") (articulo "113114")))
        (assert (condena (dni ?dni) (tipoCondena "El ofendido puede pedirle al juez que ordene publicar la sentencia que condena a quien lo ofendio") (articulo "113114")))
        (printout t "regla activada: articulo113_114_A" crlf)
)


(defrule articulo113_114_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Publicar o reproducir (en cualquier medio) calumnias inferidas por otro, no siendo su contenido fiel a la fuente pertinente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $1500 a $20000") (articulo "113114")))
        (assert (condena (dni ?dni) (tipoCondena "El ofendido puede pedirle al juez que ordene publicar la sentencia que condena a quien lo ofendio") (articulo "113114")))
        (printout t "regla activada: articulo113_114_B" crlf)
)


(defrule articulo115 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Injuria realizada por defensores ante los tribunales y no dada a publicidad")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Correccion disciplinaria correspondiente") (articulo "115")))
        (printout t "regla activada: articulo115" crlf)
)


(defrule articulo116 ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Injurias reciprocas")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Ambas partes quedan exentas de pena / Alguna de las partes queda exenta de pena") (articulo "116")))
        (printout t "regla activada: articulo116" crlf)
)


(defrule articulo117 ""
        ?victimario <- (victimario (dni ?dni))
        (or
            (exists (caso (delito "Calumnia (Falsa imputacion a una persona fisica de la comision de un delito que de lugar a la accion publica)")))
            (exists (caso (delito "Injuria (Deshonra o desacreditacion intencional a una persona fisica)")))
            (exists (caso (delito "Ninguno (Acusado de injuria prueba la verdad de la imputacion)")))
            (exists (caso (delito "Publicar o reproducir (en cualquier medio) injurias inferidas por otro, no siendo su contenido fiel a la fuente pertinente")))
            (exists (caso (delito "Publicar o reproducir (en cualquier medio) calumnias inferidas por otro, no siendo su contenido fiel a la fuente pertinente")))
            (exists (caso (delito "Injuria realizada por defensores ante los tribunales y no dada a publicidad")))
            (exists (caso (delito "Injurias reciprocas")))
        )
        ;(not (caso (delito "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, sin generar perjuicio a alguna persona")))
        ;(not (caso (delito "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, generarando perjuicio a alguna persona")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Acusado exento de pena") (articulo "117")))
        (printout t "regla activada: articulo117" crlf)
)


(defrule articulo117bis_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, sin generar perjuicio a alguna persona")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No es funcionario publico
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 3) (articulo "117bis")))
        (printout t "regla activada: articulo117bis_A" crlf)
)


(defrule articulo117bis_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, sin generar perjuicio a alguna persona")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es funcionario publico
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 3) (articulo "117bis")))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion para el desempenio de cargos publicos") (tiempo "1 anio a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion para el desempenio de cargos publicos") (aniosMin 1) (aniosMax 6) (articulo "117bis")))
        (printout t "regla activada: articulo117bis_B" crlf)
)


(defrule articulo117bis_C ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, generando perjuicio a alguna persona")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No es funcionario publico
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "9 meses a 4 anios y medio")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 9) (aniosMax 4) (mesesMax 6) (articulo "117bis")))
        (printout t "regla activada: articulo117bis_C" crlf)
)


(defrule articulo117bis_D ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, generando perjuicio a alguna persona")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es funcionario publico
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "9 meses a 4 anios y medio")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 9) (aniosMax 4) (mesesMax 6)))
        ;(assert (condena (dni ?dni) (tipoCondena "Inhabilitacion para el desempeño de cargos publicos") (tiempo "1 anio y medio a 9 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Inhabilitacion para el desempenio de cargos publicos") (aniosMin 1) (mesesMin 6) (aniosMax 9) (articulo "117bis")))        
        (printout t "regla activada: articulo117bis_D" crlf)
)

;******************************************************************************************************************************************
;               TITULO I: DELITOS CONTRA LA INTEGRIDAD SEXUAL
;******************************************************************************************************************************************
;                               Abuso sexual
;******************************************************************************************************************************************

(defrule articulo119_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es violacion
        (exists (caso (delito "Abuso sexual")))
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 4) (articulo "119")))
        (printout t "regla activada: articulo119_A" crlf)
)



(defrule articulo119_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es violacion
        (exists (caso (delito "Abuso sexual gravemente ultrajante")))
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "4 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 4) (aniosMax 10) (articulo "119")))
        (printout t "regla activada: articulo119_B" crlf)
)


(defrule articulo119_C ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es violacion
        (exists (caso (delito "Abuso sexual agravado por acceso carnal")))
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 6) (aniosMax 15) (articulo "119")))
        (printout t "regla activada: articulo119_C" crlf)
)


(defrule articulo119_D ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es violacion
        (or
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el resultado")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el parentesco con la victima")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la calidad del autor")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la enfermedad del autor")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el numero de autores")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el medio empleado")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la edad y situacion de convivencia preexistente con la victima")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el resultado")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el parentesco con la victima")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por la calidad del autor")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por la enfermedad del autor")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el numero de autores")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el medio empleado")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal, por la edad y situacion de convivencia preexistente con la victima")))
        )
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "8 a 20 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 8) (aniosMax 20) (articulo "119")))
        (printout t "regla activada: articulo119_D" crlf)
)


(defrule articulo120_A ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;Es estupro
        (or
            (exists (caso (delito "Abuso sexual gravemente ultrajante")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal")))
        )
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 6) (articulo "120")))
        (printout t "regla activada: articulo120_A" crlf)
)


(defrule articulo120_B ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;Es estupro
        (or
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el resultado")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el parentesco con la victima")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la calidad del autor")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la enfermedad del autor")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la edad y situacion de convivencia preexistente con la victima")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el resultado")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el parentesco con la victima")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por la calidad del autor")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por la enfermedad del autor")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal, por la edad y situacion de convivencia preexistente con la victima")))
        )
        (not (exists (victima (estado "Fallecido"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 6) (aniosMax 10) (articulo "120")))
        (printout t "regla activada: articulo120_B" crlf)
)


(defrule articulo124 ""
        ?victimario <- (victimario (dni ?dni))
        (or
            (exists (caso (delito "Abuso sexual")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal")))
            
            (exists (caso (delito "Abuso sexual agravado por el resultado")))
            (exists (caso (delito "Abuso sexual agravado por el parentesco con la victima")))
            (exists (caso (delito "Abuso sexual agravado por la calidad del autor")))
            (exists (caso (delito "Abuso sexual agravado por la enfermedad del autor")))
            (exists (caso (delito "Abuso sexual agravado por el numero de autores")))
            (exists (caso (delito "Abuso sexual agravado por el medio empleado")))
            (exists (caso (delito "Abuso sexual agravado por la edad y situacion de convivencia preexistente con la victima")))

            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el resultado")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el parentesco con la victima")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la calidad del autor")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la enfermedad del autor")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el numero de autores")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por el medio empleado")))
            (exists (caso (delito "Abuso sexual gravemente ultrajante agravado por la edad y situacion de convivencia preexistente con la victima")))

            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el resultado")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el parentesco con la victima")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por la calidad del autor")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por la enfermedad del autor")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el numero de autores")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal y por el medio empleado")))
            (exists (caso (delito "Abuso sexual agravado por acceso carnal, por la edad y situacion de convivencia preexistente con la victima")))
        )
        (exists (victima (estado "Fallecido")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "25 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 25) (articulo "124")))
        (printout t "regla activada: articulo124" crlf)
)

;******************************************************************************************************************************************
;                               Corrupcion de menores
;******************************************************************************************************************************************

(defrule articulo125_A ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Corrupcion de menores")))
        (exists (caso (procedimiento "Ninguno de los anteriores")))
        (test (> ?edadVictima 12))
        (test (< ?edadVictima 18))
        (exists (victimario (relacionConVictima "Otra")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 10) (articulo "125")))
        (printout t "regla activada: articulo125_A" crlf)
)


(defrule articulo125_B ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Corrupcion de menores")))
        (exists (caso (procedimiento "Ninguno de los anteriores")))
        (test (< ?edadVictima 13))
        (exists (victimario (relacionConVictima "Otra")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 6) (aniosMax 15) (articulo "125")))
        (printout t "regla activada: articulo125_B" crlf)
)


(defrule articulo125_C ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Corrupcion de menores")))
        (or 
            (exists (caso (procedimiento "Enganio")))
            (exists (caso (procedimiento "Violencia")))
            (exists (caso (procedimiento "Amenaza")))
            (exists (caso (procedimiento "Abuso de autoridad")))
            (exists (caso (procedimiento "Otro medio de intimidacion o coercion")))
        )
        (exists (victimario (relacionConVictima "Otra")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 15) (articulo "125")))
        (printout t "regla activada: articulo125_C" crlf)
)


(defrule articulo125_D ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Corrupcion de menores")))
        (exists (caso (procedimiento "Ninguno de los anteriores")))
        (not (exists (victimario (relacionConVictima "Otra"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 15) (articulo "125")))
        (printout t "regla activada: articulo125_D" crlf)
)


(defrule articulo125_E ""
        ?victimario <- (victimario (dni ?dni))
        (exists (caso (delito "Corrupcion de menores")))
        (or 
            (exists (caso (procedimiento "Enganio")))
            (exists (caso (procedimiento "Violencia")))
            (exists (caso (procedimiento "Amenaza")))
            (exists (caso (procedimiento "Abuso de autoridad")))
            (exists (caso (procedimiento "Otro medio de intimidacion o coercion")))
        )
        (not (exists (victimario (relacionConVictima "Otra"))))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 15) (articulo "125")))
        (printout t "regla activada: articulo125_E" crlf)
)

;******************************************************************************************************************************************
;                               Promocion o facilitacion de la prostitucion / Proxenetismo agravado / Rufianeria
;******************************************************************************************************************************************

(defrule articulo125bis_127 ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Promocion o facilitacion de prostitucion")))
            (exists (caso (delito "Rufianeria")))
        )
        (exists (caso (procedimiento "Ninguno de los anteriores")))
        (exists (victimario (relacionConVictima "Otra")))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No es funcionario publico

        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "4 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 4) (aniosMax 6) (articulo "125bis127")))
        (printout t "regla activada: articulo125bis_127" crlf)
)


(defrule articulo126_127_A ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (not (exists (caso (procedimiento "Ninguno de los anteriores")))) ;Alguno de los procedimientos
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene parentesco
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es funcionario publico
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 10) (articulo "126127")))
        (printout t "regla activada: articulo126_127_A" crlf)
)


(defrule articulo126_127_B ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (not (exists (caso (procedimiento "Ninguno de los anteriores")))) ;Alguno de los procedimientos
        (exists (victimario (relacionConVictima "Otra"))) ;No tiene parentesco
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es funcionario publico
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 10) (articulo "126127")))
        (printout t "regla activada: articulo126_127_B" crlf)
)


(defrule articulo126_127_C ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (not (exists (caso (procedimiento "Ninguno de los anteriores")))) ;Alguno de los procedimientos
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene parentesco
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No es funcionario publico
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 10) (articulo "126127")))
        (printout t "regla activada: articulo126_127_C" crlf)
)


(defrule articulo126_127_D ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (not (exists (caso (procedimiento "Ninguno de los anteriores")))) ;Alguno de los procedimientos
        (exists (victimario (relacionConVictima "Otra"))) ;No tiene parentesco
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No es funcionario publico
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 10) (articulo "126127")))
        (printout t "regla activada: articulo126_127_D" crlf)
)


(defrule articulo126_127_E ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (exists (caso (procedimiento "Ninguno de los anteriores"))) ;Ninguno de los procedimientos
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene parentezco
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es funcionario publico
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 10) (articulo "126127")))
        (printout t "regla activada: articulo126_127_E" crlf)
)


(defrule articulo126_127_F ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (exists (caso (procedimiento "Ninguno de los anteriores"))) ;Ninguno de los procedimientos
        (exists (victimario (relacionConVictima "Otra"))) ;No tiene parentesco
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Es funcionario publico
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 10) (articulo "126127")))
        (printout t "regla activada: articulo126_127_F" crlf)
)


(defrule articulo126_127_G ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (exists (caso (procedimiento "Ninguno de los anteriores"))) ;Ninguno de los procedimientos
        (not (exists (victimario (relacionConVictima "Otra")))) ;Tiene parentesco
        (exists (caso (circunstanciasExternasDeAtenuacion "Si"))) ;No es funcionario publico
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 a 10 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 5) (aniosMax 10) (articulo "126127")))
        (printout t "regla activada: articulo126_127_G" crlf)
)


(defrule articulo126_127_H ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (or
            (exists (caso (delito "Proxenetismo agravado")))
            (exists (caso (delito "Rufianeria")))
        )
        (test (< ?edadVictima 18))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "10 a 15 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 10) (aniosMax 15) (articulo "126127")))
        (printout t "regla activada: articulo126_127_H" crlf)
)

;******************************************************************************************************************************************
;                               Difusion de imagenes y espectaculos pornograficos de menores
;******************************************************************************************************************************************

(defrule articulo128_A ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (or
            (exists (caso (procedimiento "Difusion de representaciones con contenido sexual de menores")))
            (exists (caso (procedimiento "Organizacion de espectaculos en vivo de representaciones sexuales explicitas donde participen menores de edad")))
        )
        (test (> ?edadVictima 12))
        (test (< ?edadVictima 18))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "3 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 3) (aniosMax 6) (articulo "128")))
        (printout t "regla activada: articulo128_A" crlf)
)


(defrule articulo128_B ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (exists (caso (procedimiento "Posesion de representaciones con contenido sexual de menores")))
        (test (> ?edadVictima 12))
        (test (< ?edadVictima 18))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "4 meses a 1 anio")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 4) (aniosMax 1) (articulo "128")))
        (printout t "regla activada: articulo128_B" crlf)
)


(defrule articulo128_C ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (exists (caso (procedimiento "Posesion de representaciones con contenido sexual de menores (con fines inequivocos de distribucion o comercializacion)")))
        (test (> ?edadVictima 12))
        (test (< ?edadVictima 18))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 2 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 2) (articulo "128")))
        (printout t "regla activada: articulo128_C" crlf)
)


(defrule articulo128_D ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (exists (caso (procedimiento "Facilitacion de acceso a espectaculos pornograficos o suministro de material pornografico a menores de 14 anios")))
        (test (> ?edadVictima 12))
        (test (< ?edadVictima 18))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 mes a 3 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 1) (aniosMax 3) (articulo "128")))
        (printout t "regla activada: articulo128_D" crlf)
)



(defrule articulo128_E ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (or
            (exists (caso (procedimiento "Difusion de representaciones con contenido sexual de menores")))
            (exists (caso (procedimiento "Organizacion de espectaculos en vivo de representaciones sexuales explicitas donde participen menores de edad")))
        )
        (test (< ?edadVictima 13))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "4 a 8 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 4) (aniosMax 8) (articulo "128")))
        (printout t "regla activada: articulo128_E" crlf)
)


(defrule articulo128_F ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (exists (caso (procedimiento "Posesion de representaciones con contenido sexual de menores")))
        (test (< ?edadVictima 13))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "5 meses y 10 dias a 1 anio y 4 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 5) (diasMin 10) (aniosMax 1) (mesesMax 4) (articulo "128")))
        (printout t "regla activada: articulo128_F" crlf)
)


(defrule articulo128_G ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (exists (caso (procedimiento "Posesion de representaciones con contenido sexual de menores (con fines inequivocos de distribucion o comercializacion)")))
        (test (< ?edadVictima 13))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "8 meses a 2 anios y 8 meses")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 8) (aniosMax 2) (mesesMax 8) (articulo "128")))
        (printout t "regla activada: articulo128_G" crlf)
)


(defrule articulo128_H ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Difusion de imagenes y espectaculos pornograficos de menores")))
        (exists (caso (procedimiento "Facilitacion de acceso a espectaculos pornograficos o suministro de material pornografico a menores de 14 anios")))
        (test (< ?edadVictima 13))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 mes y 10 dias a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 1) (diasMin 10) (aniosMax 4) (articulo "128")))
        (printout t "regla activada: articulo128_H" crlf)
)

;******************************************************************************************************************************************
;                               Exhibiciones obscenas
;******************************************************************************************************************************************


(defrule articulo129_A ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Exhibiciones obscenas")))
        (test (> ?edadVictima 17))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Multa de $1000 a $15000") (articulo "129")))
        (printout t "regla activada: articulo129_A" crlf)
)


(defrule articulo129_B ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Exhibiciones obscenas")))
        (test (< ?edadVictima 18))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 4) (articulo "129")))
        (printout t "regla activada: articulo129_B" crlf)
)


;******************************************************************************************************************************************
;                               Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual
;******************************************************************************************************************************************

(defrule articulo130_A ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual")))
        (or
            (exists (caso (procedimiento "Fuerza")))
            (exists (caso (procedimiento "Intimidacion")))
            (exists (caso (procedimiento "Fraude")))
        )
        (test (> ?edadVictima 17))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "130")))
        (printout t "regla activada: articulo130_A" crlf)
)


(defrule articulo130_B ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual")))
        (or
            (exists (caso (procedimiento "Fuerza")))
            (exists (caso (procedimiento "Intimidacion")))
            (exists (caso (procedimiento "Fraude")))
        )
        (test (> ?edadVictima 12))
        (test (< ?edadVictima 17))
        (exists (caso (circunstanciasExternasDeAtenuacion "No")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "1 a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 1) (aniosMax 4) (articulo "130")))
        (printout t "regla activada: articulo130_B" crlf)
)


(defrule articulo130_C ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual")))
        (or
            (exists (caso (procedimiento "Fuerza")))
            (exists (caso (procedimiento "Intimidacion")))
            (exists (caso (procedimiento "Fraude")))
        )
        (test (> ?edadVictima 12))
        (test (< ?edadVictima 17))
        (exists (caso (circunstanciasExternasDeAtenuacion "Si")))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 2 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 2) (articulo "130")))
        (printout t "regla activada: articulo130_C" crlf)
)


(defrule articulo130_D ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual")))
        (or
            (exists (caso (procedimiento "Fuerza")))
            (exists (caso (procedimiento "Intimidacion")))
            (exists (caso (procedimiento "Fraude")))
        )
        (test (< ?edadVictima 13))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "2 a 6 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 2) (aniosMax 6) (articulo "130")))
        (printout t "regla activada: articulo130_D" crlf)
)

;******************************************************************************************************************************************
;                               Grooming
;******************************************************************************************************************************************

(defrule articulo131 ""
        ?victimario <- (victimario (dni ?dni))
        ?victima <- (victima (edad ?edadVictima))
        (exists (caso (delito "Grooming")))
        (test (< ?edadVictima 18))
        =>
        ;(assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 4 anios")))
        (assert (condena (dni ?dni) (tipoCondena "Prision") (mesesMin 6) (aniosMax 4) (articulo "131")))
        (printout t "regla activada: articulo131" crlf)
)




;(defrule prueba ""
;        (exists (caso (delito "Homicidio")))
;		=>
;        (assert (condena (tipoCondena "Prision") (tiempo "99999 meses")))
;        (printout t "regla activada: SE DISPARO PRUEBAAAAAAAAA" crlf)
;)


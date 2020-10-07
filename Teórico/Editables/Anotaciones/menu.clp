(defrule menu ""
        =>

        (printout t "Seleccione el tipo de delito cometido:" crlf) 
                (printout t "   1 - Homicidio" crlf)
                (printout t "   2 - Suicidio (Instigar o ayudar a otro a cometerlo)" crlf)
                (printout t "   3 - Aborto" crlf)
                
                (printout t "   99 - Otro" crlf)

                (bind ?opcionDelitoCometido (read))
                (printout t "ingresaste:") (printout t ?opcionDelitoCometido crlf)

        (if (= ?opcionDelitoCometido 1) then (bind ?delitoCometido "Homicidio"))
        (if (= ?opcionDelitoCometido 2) then (bind ?delitoCometido "Suicidio"))
        (if (= ?opcionDelitoCometido 3) then (bind ?delitoCometido "Aborto"))

        (if (= ?opcionDelitoCometido 99) then (bind ?delitoCometido "Otro"))




        (printout t "" crlf)


;****************************************************************************************************
;                   PROCEDIMIENTOS
;****************************************************************************************************



        (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)
                ;HOMICIDIOS
                (printout t "   1 - Ensaniamiento" crlf)
                (printout t "   2 - Alevosia" crlf)
                (printout t "   3 - Veneno" crlf)
                (printout t "   4 - Emocion violenta" crlf)
                (printout t "   5 - Medio empleado no deberia causar la muerte" crlf)
                (printout t "   6 - Imprudencia, negligencia o impericia en arte o profesion" crlf)
                (printout t "   7 - Inobservancia de reglamentos o deberes a cargo" crlf)
                (printout t "   8 - Conduccion imprudente, negligente o anterriglamentaria de un vehiculo con motor" crlf)
                ;HASTA EL 8 (O EL 99) SON PARA HOMICIDIOS

                ;ABORTO
                (printout t "   9 - Sin consentimiento de la victima" crlf)
                (printout t "   10 - Con consentimiento de la victima" crlf)
                (printout t "   11 - Con consentimiento de un representante legal de la victima (si la victima es demente)" crlf)
                (printout t "   12 - Accidentalmente por violencia" crlf)
                (printout t "   13 - Mujer consciente que causa su propio aborto (victimario es igual a victima)" crlf)

                ;HOMICIDIO
                (printout t "   99 - Otro procedimiento indisioso" crlf)

                (bind ?opcionProcedimiento (read))
                (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

        ;HOMICIDIO
        (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Ensaniamiento"))
        (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Alevosia"))
        (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Veneno"))
        (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Emocion violenta"))
        (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Medio empleado no deberia causar la muerte"))
        (if (= ?opcionProcedimiento 6) then (bind ?procedimiento "Imprudencia, negligencia o impericia en arte o profesion"))
        (if (= ?opcionProcedimiento 7) then (bind ?procedimiento "Inobservancia de reglamentos o deberes a cargo"))
        
        (if (= ?opcionProcedimiento 8) then 
            (bind ?procedimiento "Conduccion imprudente, negligente o anterriglamentaria de un vehiculo con motor")
            ;(printout t "AAAAAAAAAAAAAAAA")  ESTO ANDA SI QUIERO ARMAR EL MENU COMO UN ARBOL DE IF
        )


        ;ABORTO
        (if (= ?opcionProcedimiento 9) then (bind ?procedimiento "Sin consentimiento de la victima"))
        (if (= ?opcionProcedimiento 10) then (bind ?procedimiento "Con consentimiento de la victima"))
        (if (= ?opcionProcedimiento 11) then (bind ?procedimiento "Con consentimiento de un representante legal de la victima (si la victima es demente)"))
        (if (= ?opcionProcedimiento 12) then (bind ?procedimiento "Accidentalmente por violencia"))
        (if (= ?opcionProcedimiento 13) then (bind ?procedimiento "Mujer consciente que causa su propio aborto"))


        ;HOMICIDIO
        (if (= ?opcionProcedimiento 99) then (bind ?procedimiento "Otro procedimiento indisioso"))
 



        (printout t "" crlf)


;****************************************************************************************************
;                   MOTIVOS
;****************************************************************************************************

        (printout t "Seleccione el motivo por el cual se cometio el delito:" crlf)
               (printout t "   1 - Precio" crlf)
               (printout t "   2 - Promesa remuneratoria" crlf)
               (printout t "   3 - Placer" crlf)
               (printout t "   4 - Codicia" crlf)
               (printout t "   5 - Odio racial" crlf)
               (printout t "   6 - Odio religioso" crlf)
               (printout t "   7 - Odio de genero" crlf)
               (printout t "   8 - Odio a la orientacion sexual" crlf)
               (printout t "   9 - Odio a la identidad de genero o su expresion" crlf)
               (printout t "   10 - Medio idoneo para crear un peligro comun" crlf)
               (printout t "   11 - Funcion/cargo/condicion de seguridad publica/policial/penitenciaria (de la victima)" crlf)
               (printout t "   12 - Abuso de funcion/cargo de seguridad publica/policial/penitenciaria (del victimario)" crlf)
               (printout t "   13 - Violencia de genero (De hombre a mujer)" crlf)
               (printout t "   14 - Causar sufrimiento" crlf)
               (printout t "   15 - Preparar otro delito" crlf)
               (printout t "   16 - Facilitar otro delito" crlf)
               (printout t "   17 - Consumar otro delito" crlf)
               (printout t "   18 - Ocultar otro delito" crlf)
               (printout t "   19 - Asegurar resultados de otro delito" crlf)
               (printout t "   20 - Procurar impunidad para si u otro delito" crlf)
               (printout t "   21 - No haber logrado el fin de otro delito" crlf)
               (printout t "   22 - Causar danio en el cuerpo" crlf)
               ;HASTA EL 22 SON PARA HOMICIDIOS

               (printout t "   23 - Abuso de la profesion (del victimario)" crlf)
               (printout t "   24 - Evitar un peligro para la vida o salud de la mujer embarazada, que no pueda ser evitado por otros medios" crlf)
               (printout t "   25 - Embarazo proveniente de una violacion o de un atentado al pudor sobre una mujer demente" crlf)

               ;(printout t "   99 - " crlf)
              

               (bind ?opcionMotivo (read))
               (printout t "ingresaste:") (printout t ?opcionMotivo crlf)

        (if (= ?opcionMotivo 1) then (bind ?motivo "Precio"))
        (if (= ?opcionMotivo 2) then (bind ?motivo "Promesa remuneratoria"))
        (if (= ?opcionMotivo 3) then (bind ?motivo "Placer"))
        (if (= ?opcionMotivo 4) then (bind ?motivo "Codicia"))
        (if (= ?opcionMotivo 5) then (bind ?motivo "Odio racial"))
        (if (= ?opcionMotivo 6) then (bind ?motivo "Odio religioso"))
        (if (= ?opcionMotivo 7) then (bind ?motivo "Odio de genero"))
        (if (= ?opcionMotivo 8) then (bind ?motivo "Odio a la orientacion sexual"))
        (if (= ?opcionMotivo 9) then (bind ?motivo "Odio a la identidad de genero o su expresion"))
        (if (= ?opcionMotivo 10) then (bind ?motivo "Medio idoneo para crear un peligro comun"))
        (if (= ?opcionMotivo 11) then (bind ?motivo "Funcion/cargo/condicion de seguridad publica/policial/penitenciaria (de la victima)"))
        (if (= ?opcionMotivo 12) then (bind ?motivo "Abuso de funcion/cargo de seguridad publica/policial/penitenciaria (del victimario)"))
        (if (= ?opcionMotivo 13) then (bind ?motivo "Violencia de genero (De hombre a mujer)"))
        (if (= ?opcionMotivo 14) then (bind ?motivo "Causar sufrimiento"))
        (if (= ?opcionMotivo 15) then (bind ?motivo "Preparar otro delito"))
        (if (= ?opcionMotivo 16) then (bind ?motivo "Facilitar otro delito"))
        (if (= ?opcionMotivo 17) then (bind ?motivo "Consumar otro delito"))
        (if (= ?opcionMotivo 18) then (bind ?motivo "Ocultar otro delito"))
        (if (= ?opcionMotivo 19) then (bind ?motivo "Asegurar resultados de otro delito"))
        (if (= ?opcionMotivo 20) then (bind ?motivo "Procurar impunidad para si u otro delito"))
        (if (= ?opcionMotivo 21) then (bind ?motivo "No haber logrado el fin de otro delito"))
        (if (= ?opcionMotivo 22) then (bind ?motivo "Causar danio en el cuerpo"))
        
        (if (= ?opcionMotivo 23) then (bind ?motivo "Abuso de la profesion (del victimario)"))
        (if (= ?opcionMotivo 24) then (bind ?motivo "Evitar un peligro para la vida o salud de la mujer embarazada, que no pueda ser evitado por otros medios"))
        (if (= ?opcionMotivo 25) then (bind ?motivo "Embarazo proveniente de una violacion o de un atentado al pudor sobre una mujer demente"))

        ;(if (= ?opcionMotivo 99) then (bind ?motivo "Error"))




        (printout t "" crlf)

;****************************************************************************************************
;                   CIRCEXT / VICTIMARIO / VICTIMA
;****************************************************************************************************


        (printout t "Hay situaciones externas de atenuacion?" crlf)
                (printout t "   1 - Si" crlf)
                (printout t "   2 - No" crlf)

                (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "Si"))
        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "No"))

        (printout t "" crlf)

        (printout t "Nombre y apellido del victimario: ")
        (bind ?nombreApellidoVictimario (read))
        (printout t "DNI del victimario: ")
        (bind ?dniVictimario (read))
        (printout t "Edad del victimario: ")
        (bind ?edadVictimario (read))

        (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
        (printout t "   1 - Ascendente/Descendente" crlf)
        (printout t "   2 - Conyuge/Ex conyuge" crlf)
        (printout t "   3 - Pareja/Ex pareja" crlf)
        (printout t "   4 - Otra" crlf)

        (bind ?opcionRelacion (read))
        (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

        (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente o descendente"))
        (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Conyuge o ex conyuge"))
        (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Pareja o ex pareja"))
        (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Otra"))

        (printout t "Seleccione el rol del victimario en el caso: " crlf)
        (printout t "   1 - Ejecutor" crlf)
        (printout t "   2 - Complice" crlf)
        (printout t "   3 - Autor intelectual" crlf)

        (bind ?opcionRol (read))
        (printout t "ingresaste:") (printout t ?opcionRol crlf)

        (if (= ?opcionRol 1) then (bind ?rol "Ejecutor"))
        (if (= ?opcionRol 2) then (bind ?rol "Complice"))
        (if (= ?opcionRol 3) then (bind ?rol "Autor intelectual"))

        (printout t "" crlf)

        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
 
        (printout t "Cuantos victimarios involucrados hay en el caso?" crlf)
                (printout t "   1 - Uno" crlf)
                (printout t "   2 - Dos" crlf)
                (printout t "   3 - Tres" crlf)
                (printout t "   4 - Cuatro" crlf)
                (printout t "   5 - Cinco" crlf)
                (printout t "   6 - Mas de cinco" crlf)

                (bind ?opcionCantidadVictimarios (read))
                (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)

        (if (= ?opcionCantidadVictimarios 1) then (bind ?cantidadVictimarios 1))
        (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 2))
        (if (= ?opcionCantidadVictimarios 3) then (bind ?cantidadVictimarios 3))
        (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 4))
        (if (= ?opcionCantidadVictimarios 5) then (bind ?cantidadVictimarios 5))
        (if (= ?opcionCantidadVictimarios 6) then (bind ?cantidadVictimarios "Mas de cinco"))

        (printout t "" crlf)

        (printout t "Indique la cantidad de victimas:" crlf)
                (printout t "   1 - Uno" crlf)
                (printout t "   2 - Dos" crlf)
                (printout t "   3 - Tres" crlf)
                (printout t "   4 - Cuatro" crlf)
                (printout t "   5 - Cinco" crlf)
                (printout t "   6 - Mas de cinco" crlf)

                (bind ?opcionCantidadVictimas (read))
                (printout t "ingresaste:") (printout t ?opcionCantidadVictimas crlf)

        (if (= ?opcionCantidadVictimas 1) then (bind ?cantidadVictimas 1))
        (if (= ?opcionCantidadVictimas 2) then (bind ?cantidadVictimas 2))
        (if (= ?opcionCantidadVictimas 3) then (bind ?cantidadVictimas 3))
        (if (= ?opcionCantidadVictimas 4) then (bind ?cantidadVictimas 4))
        (if (= ?opcionCantidadVictimas 5) then (bind ?cantidadVictimas 5))
        (if (= ?opcionCantidadVictimas 6) then (bind ?cantidadVictimas "Mas de cinco"))

        (while (> ?opcionCantidadVictimas 0)
               (printout t "Nombre y apellido de la victima: ")
               (bind ?nombreApellidoVictima (read))
               (printout t "DNI de la victima: ")
               (bind ?dniVictima (read))
               (printout t "Edad de la victima: ")
               (bind ?edadVictima (read))

               (printout t "Seleccione el estado de la victima: " crlf)
               (printout t "   1 - Con vida, sin heridas" crlf)
               (printout t "   2 - Con vida, herido" crlf)
               (printout t "   3 - Fallecido" crlf)
                
               (bind ?opcionEstado (read))
               (printout t "ingresaste:") (printout t ?opcionEstado crlf)

               (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin heridas"))
               (if (= ?opcionEstado 2) then (bind ?estado "Con vida, herido"))
               (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

               (printout t "" crlf)

               (bind ?opcionCantidadVictimas (- ?opcionCantidadVictimas 1))
               (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))

        )

        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))

)







;************************************************DUELO******************************************************************************************

(defrule articulo98_D ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo




        (exists (victima (estado "Con vida, con lesiones")))
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        =>
        (assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo " anios")))
        (printout t "regla activada: articulo98_D" crlf)
)


                        (printout t "   1 - Ensaniamiento" crlf)
                        (printout t "   2 - Alevosia" crlf)
                        (printout t "   3 - Medio empleado no deberia causar la muerte" crlf)
                        (printout t "   4 - Otro procedimiento indisioso" crlf)







******************************************************************************************************




(defrule articulo98_E ""
        ?victimario <- (victimario (dni ?dni))
        ?caso <- (caso (cantidadVictimarios ?cantidadVictimarios))
        (exists (caso (delito "Lesion en duelo")))
        (exists (duelo (situacion "Batirse a duelo (Condiciones puestas por combatientes)")))
        (exists (victimario (rol "Combatiente")))
        (exists (caso (circunstanciasExternasDeAtenuacion "No"))) ;Si se concreto el duelo
        (test  (= ?cantidadVictimarios 1)) ; No hay padrinos
        (exists (victima (estado "Con vida, con lesiones")))
        (exists (lesion (tipoLesion "Otro danio no mencionado")))
  
        (exists (caso (procedimiento "Medio empleado no deberia causar la muerte")))
        (not (exists (caso (motivo "Ninguno de los anteriores")))) ;Alguno de los motivos
        =>
        (assert (condena (dni ?dni) (tipoCondena "Prision") (tiempo "6 meses a 2 anios")))
        (printout t "regla activada: articulo98_E" crlf)
)



*******************
*
*
*
*
*
*
*
*
****************************************************************************************************************

































(if (= ?opcionDelitoContraLaIntegridadSexual 2) then

    (bind ?delitoCometido "Corrupcion de menores")
   
    (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)
    (printout t "   1 - Enganio" crlf)
    (printout t "   2 - Violencia" crlf)
    (printout t "   3 - Amenaza" crlf)
    (printout t "   4 - Abuso de autoridad" crlf)
    (printout t "   5 - Otro medio de intimidacion o coercion" crlf)
    (printout t "   6 - Ninguno de los anteriores" crlf)

    (bind ?opcionProcedimiento (read))
    (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

    (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Enganio"))
    (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Violencia"))
    (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Amenaza"))
    (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Abuso de autoridad"))
    (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Otro medio de intimidacion o coercion"))
    (if (= ?opcionProcedimiento 6) then (bind ?procedimiento "Ninguno de los anteriores"))

    (printout t "" crlf)

    (printout t "Nombre y apellido del victimario: ")
    (bind ?nombreApellidoVictimario (read))
    (printout t "DNI del victimario: ")
    (bind ?dniVictimario (read))
    (printout t "Edad del victimario: ")
    (bind ?edadVictimario (read))
    (bind ?rol "Ejecutor")

  
    (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
    (printout t "   1 - Ascendente" crlf)
    (printout t "   2 - Conyuge" crlf)
    (printout t "   3 - Hermano" crlf)
    (printout t "   4 - Tutor" crlf)
    (printout t "   5 - Persona conviviente encargada de su educacion o guarda" crlf)
    (printout t "   6 - Otra" crlf)

    (bind ?opcionRelacion (read))
    (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

    (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente"))
    (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Conyuge"))
    (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Hermano"))
    (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Tutor"))
    (if (= ?opcionRelacion 5) then (bind ?relacionConVictima "Persona conviviente encargada de su educacion o guarda"))
    (if (= ?opcionRelacion 6) then (bind ?relacionConVictima "Otra"))

    (printout t "" crlf)    

    (printout t "Nombre y apellido de la victima: ")
    (bind ?nombreApellidoVictima (read))
    (printout t "DNI de la victima: ")
    (bind ?dniVictima (read))
    (printout t "Edad de la victima: ")
    (bind ?edadVictima (read))

    (printout t "" crlf)

    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol) (relacionConVictima ?relacionConVictima)))
    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
    (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento)))

)















    (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)
    (printout t "   1 - Enganio" crlf)
    (printout t "   2 - Fraude" crlf)
    (printout t "   3 - Violencia" crlf)
    (printout t "   4 - Amenaza" crlf)
    (printout t "   5 - Abuso de autoridad o de una situacion de vulnerabilidad" crlf)
    (printout t "   6 - Concesion o recepcion de pagos o beneficios para obtener el consentimiento de una persona que tenga autoridad sobre la victima" crlf)
    (printout t "   7 - Otro medio de intimidacion o coercion" crlf)
    (printout t "   8 - Ninguno de los anteriores" crlf)

    (bind ?opcionProcedimiento (read))
    (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

    (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Enganio"))
    (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Fraude"))
    (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Violencia"))
    (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Amenaza"))
    (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Abuso de autoridad o de una situacion de vulnerabilidad"))
    (if (= ?opcionProcedimiento 6) then (bind ?procedimiento "Concesion o recepcion de pagos o beneficios para obtener el consentimiento de una persona que tenga autoridad sobre la victima"))
    (if (= ?opcionProcedimiento 7) then (bind ?procedimiento "Otro medio de intimidacion o coercion"))
    (if (= ?opcionProcedimiento 8) then (bind ?procedimiento "Ninguno de los anteriores"))

    (if (!= ?opcionProcedimiento 8) then (bind ?delitoCometido "Proxenetismo agravado"))

    (printout t "" crlf)

    (printout t "Nombre y apellido del victimario: ")
    (bind ?nombreApellidoVictimario (read))
    (printout t "DNI del victimario: ")
    (bind ?dniVictimario (read))
    (printout t "Edad del victimario: ")
    (bind ?edadVictimario (read))
    (bind ?rol "Ejecutor")
  
    (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
    (printout t "   1 - Ascendente/Descendente" crlf)
    (printout t "   2 - Conyuge" crlf)
    (printout t "   3 - Afin en linea recta" crlf)
    (printout t "   4 - Colateral o conviviente" crlf)
    (printout t "   5 - Tutor" crlf)
    (printout t "   6 - Curador" crlf)
    (printout t "   7 - Autoridad o ministro de cualquier culto reconocido o no" crlf)
    (printout t "   8 - Encargado de la educacion o de la guarda de la victima" crlf)
    (printout t "   9 - Otra" crlf)

    (bind ?opcionRelacion (read))
    (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

    (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente o descendente"))
    (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Conyuge"))
    (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Afin en linea recta"))
    (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Colateral o conviviente"))
    (if (= ?opcionRelacion 5) then (bind ?relacionConVictima "Tutor"))
    (if (= ?opcionRelacion 6) then (bind ?relacionConVictima "Curador"))
    (if (= ?opcionRelacion 7) then (bind ?relacionConVictima "Autoridad o ministro de cualquier culto reconocido o no"))
    (if (= ?opcionRelacion 8) then (bind ?relacionConVictima "Encargado de la educacion o de la guarda de la victima"))
    (if (= ?opcionRelacion 9) then (bind ?relacionConVictima "Otra"))

    (printout t "" crlf)

    (printout t "El autor es funcionario publico o miembro de una fuerza de una fuerza de seguridad, policial o penitenciaria?" crlf)
    (printout t "   1 - Si" crlf)
    (printout t "   2 - No" crlf)

    (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
    (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

    (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "No"))
    (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "Si"))

    (printout t "" crlf)  

    (printout t "Nombre y apellido de la victima: ")
    (bind ?nombreApellidoVictima (read))
    (printout t "DNI de la victima: ")
    (bind ?dniVictima (read))
    (printout t "Edad de la victima: ")
    (bind ?edadVictima (read))

    (printout t "" crlf)


    (if (and (eq ?opcionProcedimiento 8) (eq ?relacionConVictima "Otra") (eq ?circunstanciasExternasDeAtenuacion "Si")) then (bind ?delitoCometido "Promocion o facilitacion de prostitucion"))
    (if (or (neq ?opcionProcedimiento 8) (neq ?relacionConVictima "Otra") (eq ?circunstanciasExternasDeAtenuacion "No") (<= ?edadVictima 18)) then (bind ?delitoCometido "Proxenetismo agravado"))

    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol) (relacionConVictima ?relacionConVictima)))
    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
    (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento)))
















 
(if (= ?opcionDelitoContraLaIntegridadSexual 6) then

    (?delitoCometido "Exhibiciones obscenas")

    (printout t "Nombre y apellido del victimario: ")
    (bind ?nombreApellidoVictimario (read))
    (printout t "DNI del victimario: ")
    (bind ?dniVictimario (read))
    (printout t "Edad del victimario: ")
    (bind ?edadVictimario (read))
    (bind ?rol "Ejecutor")

    (printout t "Nombre y apellido de la victima: ")
    (bind ?nombreApellidoVictima (read))
    (printout t "DNI de la victima: ")
    (bind ?dniVictima (read))
    (printout t "Edad de la victima: ")
    (bind ?edadVictima (read))

    (printout t "" crlf)

    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
    (assert (caso (delito ?delitoCometido))))

) ;end exhibiciones obscenas















(if (= ?opcionDelitoContraLaIntegridadSexual 7) then

    (?delitoCometido "Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual")

    (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)
    (printout t "   1 - Fuerza" crlf)
    (printout t "   2 - Intimidacion" crlf)
    (printout t "   3 - Fraude" crlf)

    (bind ?opcionProcedimiento (read))
    (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

    (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Fuerza"))
    (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Intimidacion"))
    (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Fraude"))

    (printout t "" crlf)

    (printout t "Nombre y apellido del victimario: ")
    (bind ?nombreApellidoVictimario (read))
    (printout t "DNI del victimario: ")
    (bind ?dniVictimario (read))
    (printout t "Edad del victimario: ")
    (bind ?edadVictimario (read))
    (bind ?rol "Ejecutor")

    (printout t "Nombre y apellido de la victima: ")
    (bind ?nombreApellidoVictima (read))
    (printout t "DNI de la victima: ")
    (bind ?dniVictima (read))
    (printout t "Edad de la victima: ")
    (bind ?edadVictima (read))

    (printout t "" crlf)

    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
    (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento))))

) ;end sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual







(if (= ?opcionDelitoContraLaIntegridadSexual 8) then

    (?delitoCometido "Grooming")

    (printout t "Nombre y apellido del victimario: ")
    (bind ?nombreApellidoVictimario (read))
    (printout t "DNI del victimario: ")
    (bind ?dniVictimario (read))
    (printout t "Edad del victimario: ")
    (bind ?edadVictimario (read))
    (bind ?rol "Ejecutor")

    (printout t "Nombre y apellido de la victima: ")
    (bind ?nombreApellidoVictima (read))
    (printout t "DNI de la victima: ")
    (bind ?dniVictima (read))
    (printout t "Edad de la victima (Menor de 18): ")
    (bind ?edadVictima (read))

    (while (> ?edadVictima 17)
           (printout t "Edad de la victima (Menor de 18): ")
           (bind ?edadVictima (read))
    )

    (printout t "" crlf)

    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
    (assert (caso (delito ?delitoCometido)))

) ;end grooming
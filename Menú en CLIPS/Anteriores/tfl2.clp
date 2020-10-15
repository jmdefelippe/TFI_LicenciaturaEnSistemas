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


(defrule menu ""
        =>
        (printout t "" crlf)

        (printout t "Seleccione el tipo de delito cometido:" crlf)
        (printout t "   1 - Delitos contra las personas" crlf)
        (printout t "   2 - Delitos contra el honor" crlf)
        (printout t "   3 - Delitos contra la integridad sexual" crlf)
                
        (bind ?opcionTipoDelito (read))
        (printout t "ingresaste:") (printout t ?opcionTipoDelito crlf)

        (printout t "" crlf)

        (if (= ?opcionTipoDelito 1) then

        ;********************************************************************************************************************************
        ;                              DELITOS CONTRA LAS PERSONAS
        ;********************************************************************************************************************************
                
                (printout t "Seleccione el tipo de delito contra las personas cometido:" crlf)
                (printout t "   1 - Delitos contra la vida" crlf)
                (printout t "   2 - Lesion" crlf)
                (printout t "   3 - Homicidio o lesiones en rinia" crlf) ;(no se sabe quien/es causo/causaron el/los homicidio/s o lesion/es)
                (printout t "   4 - Duelo" crlf)
                (printout t "   5 - Abuso de armas" crlf)
                (printout t "   6 - Abandono de persona" crlf)
                        
                (bind ?opcionDelitoContraLasPersonas (read))
                (printout t "ingresaste:") (printout t ?opcionDelitoContraLasPersonas crlf)

                (printout t "" crlf)

        ;********************************************************************************************************************************
        ;                              DELITOS CONTRA LA VIDA
        ;********************************************************************************************************************************

                (if (= ?opcionDelitoContraLasPersonas 1) then

                        (printout t "Seleccione el tipo de delito contra la vida cometido:" crlf)
                        (printout t "   1 - Homicidio" crlf)
                        (printout t "   2 - Instigar o ayudar a otro a cometer suicidio" crlf)
                        (printout t "   3 - Aborto" crlf)

                        (bind ?opcionDelitoContraLaVida (read))
                        (printout t "ingresaste:") (printout t ?opcionDelitoContraLaVida crlf)

                        (printout t "" crlf)

                ;********************************************************************************************************************************
                ;                               HOMICIDIO
                ;********************************************************************************************************************************

                        (if (= ?opcionDelitoContraLaVida 1) then

                                (bind ?delitoCometido "Homicidio")

                                (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)

                                (printout t "   1 - Ensaniamiento" crlf)
                                (printout t "   2 - Alevosia" crlf)
                                (printout t "   3 - Veneno" crlf)
                                (printout t "   4 - Emocion violenta" crlf)
                                (printout t "   5 - Medio empleado no deberia causar la muerte" crlf)
                                (printout t "   6 - Imprudencia, negligencia o impericia en arte o profesion" crlf)
                                (printout t "   7 - Inobservancia de reglamentos o deberes a cargo" crlf)
                                (printout t "   8 - Conduccion imprudente, negligente o anterriglamentaria de un vehiculo con motor" crlf)
                                (printout t "   9 - Otro procedimiento indisioso" crlf)

                                (bind ?opcionProcedimiento (read))
                                (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                                (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Ensaniamiento"))
                                (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Alevosia"))
                                (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Veneno"))
                                (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Emocion violenta"))
                                (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Medio empleado no deberia causar la muerte"))
                                (if (= ?opcionProcedimiento 6) then (bind ?procedimiento "Imprudencia, negligencia o impericia en arte o profesion"))
                                (if (= ?opcionProcedimiento 7) then (bind ?procedimiento "Inobservancia de reglamentos o deberes a cargo"))
                                (if (= ?opcionProcedimiento 8) then (bind ?procedimiento "Conduccion imprudente, negligente o anterriglamentaria de un vehiculo con motor"))
                                (if (= ?opcionProcedimiento 9) then (bind ?procedimiento "Otro procedimiento indisioso"))

                                (printout t "" crlf)

                                (if (!= ?opcionProcedimiento 8) then

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

                                        (printout t "" crlf)

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

                                               (bind ?estado "Fallecido")

                                               (printout t "" crlf)

                                               (bind ?opcionCantidadVictimas (- ?opcionCantidadVictimas 1))
                                               (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))

                                        )

                                        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                                )

                                (if (= ?opcionProcedimiento 8) then

                                        (printout t "Se dio alguna de las siguientes circunstancias?" crlf)
                                        (printout t "       Conductor se fugo" crlf)
                                        (printout t "       Conductor no intento socorrer a la victima" crlf)
                                        (printout t "       Conductor condujo bajo efecto de estupefacientes" crlf)
                                        (printout t "       Conductor supero los limites permitidos de alcohol en sangre" crlf)
                                        (printout t "       Conductor condujo en exceso de velocidad de mas de 30 km por encima de la maxima permitida" crlf)
                                        (printout t "       Conductor condujo estando inhabilitado para hacerlo por autoridad competente" crlf)
                                        (printout t "       Conductor violo senializacion del semaforo" crlf)
                                        (printout t "       Conductor violo las seniales de transito" crlf)
                                        (printout t "   1 - Si" crlf)
                                        (printout t "   2 - No" crlf)

                                        (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                                        (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "No"))
                                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "Si"))

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

                                               (bind ?estado "Fallecido")

                                               (printout t "" crlf)

                                               (bind ?opcionCantidadVictimas (- ?opcionCantidadVictimas 1))
                                               (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))

                                        )

                                        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                                )
                        )        

                ;********************************************************************************************************************************
                ;                               SUICIDIO
                ;********************************************************************************************************************************

                        (if (= ?opcionDelitoContraLaVida 2) then

                                (bind ?delitoCometido "Instigar o ayudar a otro a cometer suicidio")

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

                                (bind ?cantidadVictimas 1)
                     
                                (printout t "Nombre y apellido de la victima: ")
                                (bind ?nombreApellidoVictima (read))
                                (printout t "DNI de la victima: ")
                                (bind ?dniVictima (read))
                                (printout t "Edad de la victima: ")
                                (bind ?edadVictima (read))

                                (printout t "Seleccione el estado de la victima: " crlf)
                                (printout t "   1 - Con vida, sin lesiones" crlf)
                                (printout t "   2 - Con vida, con lesiones" crlf)
                                (printout t "   3 - Fallecido" crlf)

                                (bind ?opcionEstado (read))
                                (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                                (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones"))
                                (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones"))
                                (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

                                (printout t "" crlf)

                                (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                
                                (assert (caso (delito ?delitoCometido) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))          
                        )        

                ;********************************************************************************************************************************
                ;                               ABORTO
                ;********************************************************************************************************************************

                        (if (= ?opcionDelitoContraLaVida 3) then

                                (bind ?delitoCometido "Aborto")

                                (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)
                                (printout t "   1 - Sin consentimiento de la victima" crlf)
                                (printout t "   2 - Con consentimiento de la victima" crlf)
                                (printout t "   3 - Con consentimiento de un representante legal de la victima (si la victima es demente)" crlf)
                                (printout t "   4 - Accidentalmente por violencia" crlf)
                                (printout t "   5 - Mujer consciente que causa su propio aborto (victimario es igual a victima)" crlf)
                              
                                (bind ?opcionProcedimiento (read))
                                (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                                (bind ?pedirMotivo 1)
                                (bind ?victimaEsVictimario 0)

                                (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Sin consentimiento de la victima"))
                                (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Con consentimiento de la victima"))
                                (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Con consentimiento de un representante legal de la victima (si la victima es demente)"))
                                (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Accidentalmente por violencia")
                                    (bind ?pedirMotivo 0) (bind ?motivo ""))
                                (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Mujer consciente que causa su propio aborto")
                                    (bind ?pedirMotivo 0) (bind ?motivo "") (bind ?victimaEsVictimario 1))

                                (if (= ?victimaEsVictimario 0) then

                                        (if (= ?pedirMotivo 1) then
                                                (printout t "" crlf)                

                                                (printout t "Seleccione el motivo por el cual se cometio el delito:" crlf)
                                                (printout t "   1 - Abuso de la profesion (del victimario)" crlf)
                                                (printout t "   2 - Evitar un peligro para la vida o salud de la mujer embarazada, que no pueda ser evitado por otros medios" crlf)
                                                (printout t "   3 - Embarazo proveniente de una violacion o de un atentado al pudor sobre una mujer demente" crlf)
                                                (printout t "   4 - Otro" crlf)

                                                (bind ?opcionMotivo (read))
                                                (printout t "ingresaste:") (printout t ?opcionMotivo crlf)
                                                
                                                (if (= ?opcionMotivo 1) then (bind ?motivo "Abuso de la profesion (del victimario)"))
                                                (if (= ?opcionMotivo 2) then (bind ?motivo "Evitar un peligro para la vida o salud de la mujer embarazada, que no pueda ser evitado por otros medios"))
                                                (if (= ?opcionMotivo 3) then (bind ?motivo "Embarazo proveniente de una violacion o de un atentado al pudor sobre una mujer demente"))
                                                (if (= ?opcionMotivo 4) then (bind ?motivo "Otro"))

                                                (printout t "" crlf)
                                        )

                                        (if (!= ?opcionMotivo 4) then

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

                                                (bind ?cantidadVictimas 1)

                                                (printout t "Nombre y apellido de la victima: ")
                                                (bind ?nombreApellidoVictima (read))
                                                (printout t "DNI de la victima: ")
                                                (bind ?dniVictima (read))
                                                (printout t "Edad de la victima: ")
                                                (bind ?edadVictima (read))

                                                (printout t "Seleccione el estado de la victima: " crlf)
                                                (printout t "   1 - Con vida, sin lesiones" crlf)
                                                (printout t "   2 - Con vida, con lesiones" crlf)
                                                (printout t "   3 - Fallecido" crlf)

                                                (bind ?opcionEstado (read))
                                                (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                                                (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones"))
                                                (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones"))
                                                (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

                                                (printout t "" crlf)

                                                (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                        )

                                        (if (= ?opcionMotivo 4) then

                                                (printout t "Nombre y apellido del medico: ")
                                                (bind ?nombreApellidoMedico (read))
                                                (printout t "DNI del victimario: ")
                                                (bind ?dniMedico (read))
                                                (printout t "Edad del victimario: ")
                                                (bind ?edadMedico (read))

                                                (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
                                                (printout t "   1 - Ascendente/Descendente" crlf)
                                                (printout t "   2 - Conyuge/Ex conyuge" crlf)
                                                (printout t "   3 - Pareja/Ex pareja" crlf)
                                                (printout t "   4 - Otra" crlf)

                                                (bind ?opcionRelacion (read))
                                                (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

                                                (if (= ?opcionRelacion 1) then (bind ?relacionConMadre "Ascendente o descendente"))
                                                (if (= ?opcionRelacion 2) then (bind ?relacionConMadre "Conyuge o ex conyuge"))
                                                (if (= ?opcionRelacion 3) then (bind ?relacionConMadre "Pareja o ex pareja"))
                                                (if (= ?opcionRelacion 4) then (bind ?relacionConMadre "Otra"))

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

                                                (assert (victimario (nombreApellido ?nombreApellidoMedico) (dni ?dniMedico) (edad ?edadMedico) (relacionConVictima ?relacionConMadre) (rol ?rol)))
                                         
                                                (printout t "Cuantos victimarios involucrados hay en el caso?" crlf)
                                                (printout t "   2 - Dos" crlf)
                                                (printout t "   3 - Tres" crlf)
                                                (printout t "   4 - Cuatro" crlf)
                                                (printout t "   5 - Cinco" crlf)
                                                (printout t "   6 - Mas de cinco" crlf)

                                                (bind ?opcionCantidadVictimarios (read))
                                                (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)

                                                (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 2))
                                                (if (= ?opcionCantidadVictimarios 3) then (bind ?cantidadVictimarios 3))
                                                (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 4))
                                                (if (= ?opcionCantidadVictimarios 5) then (bind ?cantidadVictimarios 5))
                                                (if (= ?opcionCantidadVictimarios 6) then (bind ?cantidadVictimarios "Mas de cinco"))

                                                (printout t "" crlf)

                                                (bind ?cantidadVictimas 0)

                                                (printout t "Nombre y apellido de la madre: ")
                                                (bind ?nombreApellidoMadre (read))
                                                (printout t "DNI de la madre: ")
                                                (bind ?dniMadre (read))
                                                (printout t "Edad de la victima: ")
                                                (bind ?edadMadre (read))

                                                (printout t "Seleccione el estado de la madre: " crlf)
                                                (printout t "   1 - Con vida, sin lesiones" crlf)
                                                (printout t "   2 - Con vida, con lesiones" crlf)
                                                (printout t "   3 - Fallecido" crlf)

                                                (bind ?opcionEstado (read))
                                                (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                                                (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones"))
                                                (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones"))
                                                (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

                                                (printout t "" crlf)

                                                (assert (victima (nombreApellido ?nombreApellidoMadre) (dni ?dniMadre) (edad ?edadMadre) (estado ?estado)))
                                        )

                                )

                                (if (= ?victimaEsVictimario 1) then
                                       
                                        (printout t "Nombre y apellido de la mujer que causo su propio aborto: ")
                                        (bind ?nombreApellidoVictimario (read))
                                        (printout t "DNI del victimario/victima: ")
                                        (bind ?dniVictimario (read))
                                        (printout t "Edad del victimario/victima: ")
                                        (bind ?edadVictimario (read))

                                        (bind ?rol "Ejecutor")

                                        (printout t "Seleccione el estado de la mujer que causo su propio aborto: " crlf)
                                        (printout t "   1 - Con vida, sin lesiones" crlf)
                                        (printout t "   2 - Con vida, con lesiones" crlf)
                                        (printout t "   3 - Fallecido" crlf)

                                        (bind ?opcionEstado (read))
                                        (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                                        (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones"))
                                        (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones"))
                                        (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

                                        (printout t "" crlf)

                                        (bind ?cantidadVictimarios 1)
                                        (bind ?cantidadVictimas 1)

                                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                                        (assert (victima (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (estado ?estado)))

                                )

                                (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                        )
                )

        ;********************************************************************************************************************************
        ;                               LESION
        ;********************************************************************************************************************************

                (if (= ?opcionDelitoContraLasPersonas 2) then (bind ?delitoCometido "Lesion")

                        (printout t "Seleccione la consecuencia que genero la lesion:" crlf)
                        (printout t "   1 - Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra" crlf)
                        (printout t "   2 - Puesta en riesgo de la vida" crlf)
                        (printout t "   3 - Inutilizacion laboral por mas de un mes" crlf)
                        (printout t "   4 - Deformacion permanente en el rostro" crlf)
                        (printout t "   5 - Enfermedad mental o corporal, cierta o probablemente incurable" crlf)
                        (printout t "   6 - Inutilidad laboral permanente" crlf)
                        (printout t "   7 - Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir" crlf)
                        (printout t "   8 - Danio en el cuerpo o en la salud" crlf)
                        (printout t "   9 - Otro danio no mencionado" crlf)

                        (bind ?opcionTipoLesion (read))
                        (printout t "ingresaste:") (printout t ?opcionTipoLesion crlf)

                        (if (= ?opcionTipoLesion 1) then (bind ?tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra"))
                        (if (= ?opcionTipoLesion 2) then (bind ?tipoLesion "Puesta en riesgo de la vida"))
                        (if (= ?opcionTipoLesion 3) then (bind ?tipoLesion "Inutilizacion laboral por mas de un mes"))
                        (if (= ?opcionTipoLesion 4) then (bind ?tipoLesion "Deformacion permanente en el rostro"))
                        (if (= ?opcionTipoLesion 5) then (bind ?tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable"))
                        (if (= ?opcionTipoLesion 6) then (bind ?tipoLesion "Inutilidad laboral permanente"))
                        (if (= ?opcionTipoLesion 7) then (bind ?tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir"))
                        (if (= ?opcionTipoLesion 8) then (bind ?tipoLesion "Danio en el cuerpo o en la salud"))
                        (if (= ?opcionTipoLesion 9) then (bind ?tipoLesion "Otro danio no mencionado"))

                        (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)

                        (printout t "   1 - Ningun procedimiento indisioso" crlf)
                        (printout t "   2 - Ensaniamiento" crlf)
                        (printout t "   3 - Alevosia" crlf)
                        (printout t "   4 - Veneno" crlf)
                        (printout t "   5 - Emocion violenta" crlf)
                        (printout t "   6 - Medio empleado no deberia causar la muerte" crlf)
                        (printout t "   7 - Imprudencia, negligencia o impericia en arte o profesion" crlf)
                        (printout t "   8 - Inobservancia de reglamentos o deberes a cargo" crlf)
                        (printout t "   9 - Conduccion imprudente, negligente o anterriglamentaria de un vehiculo con motor" crlf)
                        (printout t "  10 - Otro procedimiento indisioso" crlf)

                        (bind ?opcionProcedimiento (read))
                        (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                        (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Ningun procedimiento indisioso"))
                        (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Ensaniamiento"))
                        (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Alevosia"))
                        (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Veneno"))
                        (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Emocion violenta"))
                        (if (= ?opcionProcedimiento 6) then (bind ?procedimiento "Medio empleado no deberia causar la muerte"))
                        (if (= ?opcionProcedimiento 7) then (bind ?procedimiento "Imprudencia, negligencia o impericia en arte o profesion"))
                        (if (= ?opcionProcedimiento 8) then (bind ?procedimiento "Inobservancia de reglamentos o deberes a cargo"))
                        (if (= ?opcionProcedimiento 9) then (bind ?procedimiento "Conduccion imprudente, negligente o anterriglamentaria de un vehiculo con motor"))
                        (if (= ?opcionProcedimiento 10) then (bind ?procedimiento "Otro procedimiento indisioso"))

                        (printout t "" crlf)

                        (if (!= ?opcionProcedimiento 9) then

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
                                (printout t "   23 - Ninguno de los anteriores" crlf)
                                
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
                                (if (= ?opcionMotivo 23) then (bind ?motivo "Ninguno de los anteriores"))

                                (printout t "" crlf)

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

                                       (bind ?estado "Con vida, con lesiones")

                                       (bind ?opcionCantidadVictimas (- ?opcionCantidadVictimas 1))
                                       (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                )

                                (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                                (assert (lesion (tipoLesion ?tipoLesion)))
                        )

                        (if (= ?opcionProcedimiento 9) then

                                (printout t "Se dio alguna de las siguientes circunstancias?" crlf)
                                (printout t "       Conductor se fugo" crlf)
                                (printout t "       Conductor no intento socorrer a la victima" crlf)
                                (printout t "       Conductor condujo bajo efecto de estupefacientes" crlf)
                                (printout t "       Conductor supero los limites permitidos de alcohol en sangre" crlf)
                                (printout t "       Conductor condujo en exceso de velocidad de mas de 30 km por encima de la maxima permitida" crlf)
                                (printout t "       Conductor condujo estando inhabilitado para hacerlo por autoridad competente" crlf)
                                (printout t "       Conductor violo senializacion del semaforo" crlf)
                                (printout t "       Conductor violo las seniales de transito" crlf)
                                (printout t "   1 - Si" crlf)
                                (printout t "   2 - No" crlf)

                                (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                                (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                                (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "No"))
                                (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "Si"))

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

                                       (bind ?estado "Con vida, con lesiones")

                                       (bind ?opcionCantidadVictimas (- ?opcionCantidadVictimas 1))
                                       (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))

                                )

                                (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                                (assert (lesion (tipoLesion ?tipoLesion)))
                        )
                )

        ;********************************************************************************************************************************
        ;                               HOMICIDIO O LESIONES EN RIÑA
        ;********************************************************************************************************************************

                (if (= ?opcionDelitoContraLasPersonas 3) then 

                        (printout t "Indique el delito cometido:" crlf)

                        (printout t "   1 - Homicidio en rinia" crlf)
                        (printout t "   2 - Lesion en rinia" crlf)

                        (bind ?opcionDelito (read))
                        (printout t "ingresaste:") (printout t ?opcionDelito crlf)

                        (if (= ?opcionDelito 1) then
                                (bind ?delito "Homicidio en rinia")
                                (bind ?estado "Fallecido")
                        )
                        
                        (if (= ?opcionDelito 2) then
                                (bind ?delito "Lesion en rinia")
                                (bind ?estado "Con vida, con lesiones")

                                (printout t "Seleccione la consecuencia que genero la lesion:" crlf)
                                (printout t "   1 - Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra" crlf)
                                (printout t "   2 - Puesta en riesgo de la vida" crlf)
                                (printout t "   3 - Inutilizacion laboral por mas de un mes" crlf)
                                (printout t "   4 - Deformacion permanente en el rostro" crlf)
                                (printout t "   5 - Enfermedad mental o corporal, cierta o probablemente incurable" crlf)
                                (printout t "   6 - Inutilidad laboral permanente" crlf)
                                (printout t "   7 - Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir" crlf)
                                (printout t "   8 - Otro danio no mencionado" crlf)

                                (bind ?opcionTipoLesion (read))
                                (printout t "ingresaste:") (printout t ?opcionTipoLesion crlf)

                                (if (= ?opcionTipoLesion 1) then (bind ?tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra"))
                                (if (= ?opcionTipoLesion 2) then (bind ?tipoLesion "Puesta en riesgo de la vida"))
                                (if (= ?opcionTipoLesion 3) then (bind ?tipoLesion "Inutilizacion laboral por mas de un mes"))
                                (if (= ?opcionTipoLesion 4) then (bind ?tipoLesion "Deformacion permanente en el rostro"))
                                (if (= ?opcionTipoLesion 5) then (bind ?tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable"))
                                (if (= ?opcionTipoLesion 6) then (bind ?tipoLesion "Inutilidad laboral permanente"))
                                (if (= ?opcionTipoLesion 7) then (bind ?tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir"))
                                (if (= ?opcionTipoLesion 8) then (bind ?tipoLesion "Otro danio no mencionado"))

                                (printout t "" crlf)

                                (assert (lesion (tipoLesion ?tipoLesion)))
                        )

                        (printout t "Cuantos victimarios involucrados hay en el caso?" crlf)
                       
                        (printout t "   2 - Dos" crlf)
                        (printout t "   3 - Tres" crlf)
                        (printout t "   4 - Cuatro" crlf)
                        (printout t "   5 - Cinco" crlf)
                        (printout t "   6 - Mas de cinco" crlf)

                        (bind ?opcionCantidadVictimarios (read))
                        (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)
                       
                        (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 2))
                        (if (= ?opcionCantidadVictimarios 3) then (bind ?cantidadVictimarios 3))
                        (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 4))
                        (if (= ?opcionCantidadVictimarios 5) then (bind ?cantidadVictimarios 5))
                        (if (= ?opcionCantidadVictimarios 6) then (bind ?cantidadVictimarios "Mas de cinco"))

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

                        (bind ?rol "Ejecutor")

                        (printout t "" crlf)

                        (printout t "Nombre y apellido de la victima: ")
                        (bind ?nombreApellidoVictima (read))
                        (printout t "DNI de la victima: ")
                        (bind ?dniVictima (read))
                        (printout t "Edad de la victima: ")
                        (bind ?edadVictima (read))

                        (printout t "" crlf)

                        (assert (caso (delito ?delito) (cantidadVictimarios ?cantidadVictimarios)))
                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))

                )

        ;********************************************************************************************************************************
        ;                               DUELO
        ;********************************************************************************************************************************

                (if (= ?opcionDelitoContraLasPersonas 4) then 

                        (printout t "Indique la situacion sucedida:" crlf)

                        (printout t "   1 - Batirse a duelo (Condiciones puestas por combatientes)" crlf)
                        (printout t "   2 - Batirse a duelo (Condiciones puestas por padrinos)" crlf)       
                        (printout t "   3 - Participar de un duelo como padrino" crlf)      
                        (printout t "   4 - Instigar a otro a provocar o a aceptar un duelo" crlf)    
                        (printout t "   5 - Desacreditar publicamente a otro por no desafiar o por rehusar un desafio" crlf)    
                        (printout t "   6 - Provocar o dar causa a un desafio, proponiendose un interes pecunario u otro objeto inmoral" crlf)    
                        (printout t "   7 - Padrinos de un duelo utilizan cualquier genero de alevosia en la ejecucion del mismo" crlf)    
                        (printout t "   8 - Padrinos concertan un duelo a muerte o en condiciones tales que de ellas debiere resultar la muerte" crlf)    

                        (bind ?opcionSituacion (read))
                        (printout t "ingresaste:") (printout t ?opcionSituacion crlf)

                        (if (= ?opcionSituacion 1) then (bind ?situacion "Batirse a duelo (Condiciones puestas por combatientes)")
                            (bind ?rol "Combatiente"))
                        (if (= ?opcionSituacion 2) then (bind ?situacion "Batirse a duelo (Condiciones puestas por padrinos)")
                            (bind ?rol "Combatiente"))
                        (if (= ?opcionSituacion 3) then (bind ?situacion "Participar de un duelo como padrino")
                            (bind ?rol "Padrino"))
                        (if (= ?opcionSituacion 4) then (bind ?situacion "Instigar a otro a provocar o a aceptar un duelo")
                            (bind ?rol "Instigador"))
                        (if (= ?opcionSituacion 5) then (bind ?situacion "Desacreditar publicamente a otro por no desafiar o por rehusar un desafio")
                            (bind ?rol "Instigador"))
                        (if (= ?opcionSituacion 6) then (bind ?situacion "Provocar o dar causa a un desafio, proponiendose un interes pecunario u otro objeto inmoral")
                            (bind ?rol "Instigador"))
                        (if (= ?opcionSituacion 7) then (bind ?situacion "Padrinos de un duelo utilizan cualquier genero de alevosia en la ejecucion del mismo")
                            (bind ?rol "Padrino"))
                        (if (= ?opcionSituacion 8) then (bind ?situacion "Padrinos concertan un duelo a muerte o en condiciones tales que de ellas debiere resultar la muerte")
                            (bind ?rol "Padrino"))

                        (printout t "" crlf)

                        (printout t "Se concreto el duelo?" crlf)
                        (printout t "   1 - Si" crlf)
                        (printout t "   2 - No" crlf)

                        (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                        (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "No"))
                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "Si"))

                        ;Si se concreto el duelo
                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then
                                (bind ?cantidadVictimas 1)

                                (printout t "" crlf)

                                (if (or (= ?opcionSituacion 1) (= ?opcionSituacion 2) (= ?opcionSituacion 4) (= ?opcionSituacion 5) (= ?opcionSituacion 6)) then

                                        (printout t "Cuantos padrinos hubo?" crlf)
                                        (printout t "   0 - Ninguno" crlf)
                                        (printout t "   2 - Dos" crlf)
                                        (printout t "   4 - Cuatro" crlf)

                                        (bind ?opcionCantidadVictimarios (read))
                                        (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)

                                        (if (= ?opcionCantidadVictimarios 0) then (bind ?cantidadVictimarios 1))
                                        (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 3))
                                        (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 5))
                                )

                                (if (or (= ?opcionSituacion 3) (= ?opcionSituacion 7) (= ?opcionSituacion 8)) then

                                        (printout t "Cuantos padrinos hubo?" crlf)
                                       
                                        (printout t "   2 - Dos" crlf)
                                        (printout t "   4 - Cuatro" crlf)

                                        (bind ?opcionCantidadVictimarios (read))
                                        (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)

                                        (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 3))
                                        (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 5))
                                )

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

                                (printout t "" crlf)

                                (printout t "Nombre y apellido de la victima: ")
                                (bind ?nombreApellidoVictima (read))
                                (printout t "DNI de la victima: ")
                                (bind ?dniVictima (read))
                                (printout t "Edad de la victima: ")
                                (bind ?edadVictima (read))

                                (printout t "Seleccione el estado de la victima: " crlf)
                                (printout t "   1 - Con vida, sin lesiones" crlf)
                                (printout t "   2 - Con vida, con lesiones" crlf)
                                (printout t "   3 - Fallecido" crlf)

                                (bind ?opcionEstado (read))
                                (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                                (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones")
                                    (bind ?delitoCometido "Duelo")

                                    (assert (duelo (situacion ?situacion)))
                                    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                                    (assert (caso (delito ?delitoCometido) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                                )

                                (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones")
                                    (bind ?delitoCometido "Lesion en duelo")
                                    ;(if (= ?opcionSituacion 1) then
                                        
                                        (printout t "Seleccione la consecuencia que genero la lesion:" crlf)
                                        (printout t "   1 - Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra" crlf)
                                        (printout t "   2 - Puesta en riesgo de la vida" crlf)
                                        (printout t "   3 - Inutilizacion laboral por mas de un mes" crlf)
                                        (printout t "   4 - Deformacion permanente en el rostro" crlf)
                                        (printout t "   5 - Enfermedad mental o corporal, cierta o probablemente incurable" crlf)
                                        (printout t "   6 - Inutilidad laboral permanente" crlf)
                                        (printout t "   7 - Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir" crlf)
                                        ;(printout t "   8 - Danio en el cuerpo o en la salud" crlf)
                                        (printout t "   8 - Otro danio no mencionado" crlf)

                                        (bind ?opcionTipoLesion (read))
                                        (printout t "ingresaste:") (printout t ?opcionTipoLesion crlf)

                                        (if (= ?opcionTipoLesion 1) then (bind ?tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra"))
                                        (if (= ?opcionTipoLesion 2) then (bind ?tipoLesion "Puesta en riesgo de la vida"))
                                        (if (= ?opcionTipoLesion 3) then (bind ?tipoLesion "Inutilizacion laboral por mas de un mes"))
                                        (if (= ?opcionTipoLesion 4) then (bind ?tipoLesion "Deformacion permanente en el rostro"))
                                        (if (= ?opcionTipoLesion 5) then (bind ?tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable"))
                                        (if (= ?opcionTipoLesion 6) then (bind ?tipoLesion "Inutilidad laboral permanente"))
                                        (if (= ?opcionTipoLesion 7) then (bind ?tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir"))
                                        ;(if (= ?opcionTipoLesion 8) then (bind ?tipoLesion "Danio en el cuerpo o en la salud"))
                                        (if (= ?opcionTipoLesion 8) then (bind ?tipoLesion "Otro danio no mencionado"))

                                        (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)

                                        (printout t "   1 - Ensaniamiento" crlf)
                                        (printout t "   2 - Alevosia" crlf)
                                        (printout t "   3 - Medio empleado no deberia causar la muerte" crlf)
                                        (printout t "   4 - Otro procedimiento indisioso" crlf)

                                        (bind ?opcionProcedimiento (read))
                                        (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                                        (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Ensaniamiento"))
                                        (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Alevosia"))
                                        (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Medio empleado no deberia causar la muerte"))
                                        (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Otro procedimiento indisioso"))

                                        (printout t "" crlf)

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
                                        (printout t "   23 - Ninguno de los anteriores" crlf)
                                        
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
                                        (if (= ?opcionMotivo 23) then (bind ?motivo "Ninguno de los anteriores"))

                                        (assert (duelo (situacion ?situacion)))
                                        (assert (lesion (tipoLesion ?tipoLesion)))
                                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                                        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                                )

                                (if (= ?opcionEstado 3) then (bind ?estado "Fallecido")
                                    (bind ?delitoCometido "Homicidio en duelo")

                                    (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)

                                    (printout t "   1 - Ensaniamiento" crlf)
                                    (printout t "   2 - Alevosia" crlf)
                                    (printout t "   3 - Medio empleado no deberia causar la muerte" crlf)
                                    (printout t "   4 - Otro procedimiento indisioso" crlf)

                                    (bind ?opcionProcedimiento (read))
                                    (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                                    (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Ensaniamiento"))
                                    (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Alevosia"))
                                    (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Medio empleado no deberia causar la muerte"))
                                    (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Otro procedimiento indisioso"))

                                    (if (!= ?opcionProcedimiento 3) then

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
                                            
                                            (printout t "" crlf)
                                    )

                                    (if (= ?opcionProcedimiento 3) then (bind ?motivo "Causar danio en el cuerpo"))

                                    (assert (duelo (situacion ?situacion)))
                                    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                                    (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                                )
                        )

                        ;Si no se concreto el duelo
                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then

                                (bind ?delitoCometido "Duelo")

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

                                (printout t "" crlf)

                                (assert (duelo (situacion ?situacion)))
                                (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                                (assert (caso (delito ?delitoCometido) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))
                       )
                ) 

        ;********************************************************************************************************************************
        ;                               ABUSO DE ARMAS
        ;********************************************************************************************************************************

                (if (= ?opcionDelitoContraLasPersonas 5) then 

                        (printout t "Indique la situacion sucedida:" crlf)

                        (printout t "   1 - Disparar arma de fuego" crlf)
                        (printout t "   2 - Agresion con arma" crlf)       

                        (bind ?opcionDelitoCometido (read))
                        (printout t "ingresaste:") (printout t ?opcionDelitoCometido crlf)

                        (if (= ?opcionDelitoCometido 1) then (bind ?delitoCometido "Disparar arma de fuego"))
                        (if (= ?opcionDelitoCometido 2) then (bind ?delitoCometido "Agresion con arma"))

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

                        (bind ?rol "Ejecutor")

                        (printout t "" crlf)

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

                        (printout t "" crlf)

                        (printout t "Nombre y apellido de la victima: ")
                        (bind ?nombreApellidoVictima (read))
                        (printout t "DNI de la victima: ")
                        (bind ?dniVictima (read))
                        (printout t "Edad de la victima: ")
                        (bind ?edadVictima (read))

                        (printout t "Seleccione el estado de la victima: " crlf)
                        (printout t "   1 - Con vida, sin lesiones" crlf)
                        (printout t "   2 - Con vida, con lesiones" crlf)
                        (printout t "   3 - Fallecido" crlf)

                        (bind ?opcionEstado (read))
                        (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                        (printout t "" crlf)                

                        (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones")

                                (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                                (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                (assert (caso (delito ?delitoCometido) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                        )

                        (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones")

                                (printout t "Seleccione la consecuencia que genero la lesion:" crlf)
                                (printout t "   1 - Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra" crlf)
                                (printout t "   2 - Puesta en riesgo de la vida" crlf)
                                (printout t "   3 - Inutilizacion laboral por mas de un mes" crlf)
                                (printout t "   4 - Deformacion permanente en el rostro" crlf)
                                (printout t "   5 - Enfermedad mental o corporal, cierta o probablemente incurable" crlf)
                                (printout t "   6 - Inutilidad laboral permanente" crlf)
                                (printout t "   7 - Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir" crlf)
                                (printout t "   8 - Danio en el cuerpo o en la salud" crlf)
                                (printout t "   9 - Otro danio no mencionado" crlf)

                                (bind ?opcionTipoLesion (read))
                                (printout t "ingresaste:") (printout t ?opcionTipoLesion crlf)

                                (if (= ?opcionTipoLesion 1) then (bind ?tipoLesion "Debilitacion permanente de la salud, de un sentido, de un organo, de un miembro o dificultad permanente de la palabra"))
                                (if (= ?opcionTipoLesion 2) then (bind ?tipoLesion "Puesta en riesgo de la vida"))
                                (if (= ?opcionTipoLesion 3) then (bind ?tipoLesion "Inutilizacion laboral por mas de un mes"))
                                (if (= ?opcionTipoLesion 4) then (bind ?tipoLesion "Deformacion permanente en el rostro"))
                                (if (= ?opcionTipoLesion 5) then (bind ?tipoLesion "Enfermedad mental o corporal, cierta o probablemente incurable"))
                                (if (= ?opcionTipoLesion 6) then (bind ?tipoLesion "Inutilidad laboral permanente"))
                                (if (= ?opcionTipoLesion 7) then (bind ?tipoLesion "Perdida de un sentido, de un organo, de un miembro, del uso de un organo o miembro, de la palabra o de la capacidad de engendrar o concebir"))
                                (if (= ?opcionTipoLesion 8) then (bind ?tipoLesion "Danio en el cuerpo o en la salud"))
                                (if (= ?opcionTipoLesion 9) then (bind ?tipoLesion "Otro danio no mencionado"))

                                (printout t "" crlf)

                                (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)

                                (printout t "   1 - Ningun procedimiento indisioso" crlf)
                                (printout t "   2 - Ensaniamiento" crlf)
                                (printout t "   3 - Alevosia" crlf)
                                (printout t "   4 - Veneno" crlf)
                                (printout t "   5 - Emocion violenta" crlf)
                                (printout t "   6 - Medio empleado no deberia causar la muerte" crlf)
                                (printout t "   7 - Imprudencia, negligencia o impericia en arte o profesion" crlf)
                                (printout t "   8 - Inobservancia de reglamentos o deberes a cargo" crlf)
                                (printout t "   9 - Otro procedimiento indisioso" crlf)

                                (bind ?opcionProcedimiento (read))
                                (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                                (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Ningun procedimiento indisioso"))
                                (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Ensaniamiento"))
                                (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Alevosia"))
                                (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Veneno"))
                                (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Emocion violenta"))
                                (if (= ?opcionProcedimiento 6) then (bind ?procedimiento "Medio empleado no deberia causar la muerte"))
                                (if (= ?opcionProcedimiento 7) then (bind ?procedimiento "Imprudencia, negligencia o impericia en arte o profesion"))
                                (if (= ?opcionProcedimiento 8) then (bind ?procedimiento "Inobservancia de reglamentos o deberes a cargo"))
                                (if (= ?opcionProcedimiento 9) then (bind ?procedimiento "Otro procedimiento indisioso"))

                                (printout t "" crlf)

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
                                (printout t "   23 - Ninguno de los anteriores" crlf)
                                
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
                                (if (= ?opcionMotivo 23) then (bind ?motivo "Ninguno de los anteriores"))

                                (printout t "" crlf)

                                (if (!= ?opcionProcedimiento 5) then (bind ?circunstanciasExternasDeAtenuacion "No"))
                                (if (= ?opcionProcedimiento 5) then (bind ?circunstanciasExternasDeAtenuacion "Si"))
                                
                                (assert (lesion (tipoLesion ?tipoLesion)))
                                (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                                (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                        )
                        
                        (if (= ?opcionEstado 3) then (bind ?estado "Fallecido")

                                (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)

                                (printout t "   1 - Ensaniamiento" crlf)
                                (printout t "   2 - Alevosia" crlf)
                                (printout t "   3 - Veneno" crlf)
                                (printout t "   4 - Emocion violenta" crlf)
                                (printout t "   5 - Medio empleado no deberia causar la muerte" crlf)
                                (printout t "   6 - Imprudencia, negligencia o impericia en arte o profesion" crlf)
                                (printout t "   7 - Inobservancia de reglamentos o deberes a cargo" crlf)
                                (printout t "   8 - Otro procedimiento indisioso" crlf)

                                (bind ?opcionProcedimiento (read))
                                (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                                (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Ensaniamiento"))
                                (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Alevosia"))
                                (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Veneno"))
                                (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Emocion violenta"))
                                (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Medio empleado no deberia causar la muerte"))
                                (if (= ?opcionProcedimiento 6) then (bind ?procedimiento "Imprudencia, negligencia o impericia en arte o profesion"))
                                (if (= ?opcionProcedimiento 7) then (bind ?procedimiento "Inobservancia de reglamentos o deberes a cargo"))
                                (if (= ?opcionProcedimiento 8) then (bind ?procedimiento "Otro procedimiento indisioso"))

                                (printout t "" crlf)
                               
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

                                (printout t "" crlf)

                                (printout t "Hay situaciones externas de atenuacion?" crlf)
                                (printout t "   1 - Si" crlf)
                                (printout t "   2 - No" crlf)

                                (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                                (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                                (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "Si"))
                                (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "No"))

                                (printout t "" crlf)

                                (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                                (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (motivo ?motivo) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                        )
                )

        ;********************************************************************************************************************************
        ;                               ABANDONO DE PERSONA
        ;********************************************************************************************************************************

                (if (= ?opcionDelitoContraLasPersonas 6) then 

                        (bind ?delitoCometido "Abandono de persona")    

                        (printout t "Indique la situacion sucedida:" crlf)

                        (printout t "   1 - Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo" crlf)
                        (printout t "   2 - Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte" crlf)
                        (printout t "   3 - Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado" crlf)
                        (printout t "   4 - Omitir prestarle el auxilio necesario (cuando pudiere hacerlo sin riesgo personal o no diere aviso inmediatamente a la autoridad) a una persona que haya encontrado perdida o desamparada (herida, invalida, amenazada de un peligro cualquiera o menor de 10 anios)" crlf)       

                        (bind ?opcionProcedimiento (read))
                        (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                        (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo"))
                        (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte"))
                        (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado"))
                        (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Omitir prestarle el auxilio necesario (cuando pudiere hacerlo sin riesgo personal o no diere aviso inmediatamente a la autoridad) a una persona que haya encontrado perdida o desamparada (herida, invalida, amenazada de un peligro cualquiera o menor de 10 anios)"))

                        (printout t "" crlf)

                        (printout t "Resulto grave danio en el cuerpo o en la salud de la victima como consecuencia del abandono?" crlf)
                        (printout t "   1 - Si" crlf)
                        (printout t "   2 - No" crlf)

                        (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                        (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "No"))
                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "Si"))

                        (printout t "" crlf)

                        (printout t "Nombre y apellido del victimario: ")
                        (bind ?nombreApellidoVictimario (read))
                        (printout t "DNI del victimario: ")
                        (bind ?dniVictimario (read))
                        (printout t "Edad del victimario: ")
                        (bind ?edadVictimario (read))

                        (if (!= ?opcionProcedimiento 4) then

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
                        )

                        (if (= ?opcionProcedimiento 4) then (bind ?relacionConVictima "Otra"))

                        (bind ?rol "Ejecutor")

                        (printout t "" crlf)

                        (bind ?cantidadVictimarios 1)

                        (printout t "Nombre y apellido de la victima: ")
                        (bind ?nombreApellidoVictima (read))
                        (printout t "DNI de la victima: ")
                        (bind ?dniVictima (read))
                        (printout t "Edad de la victima: ")
                        (bind ?edadVictima (read))

                        (printout t "Seleccione el estado de la victima: " crlf)
                        (printout t "   1 - Con vida, sin lesiones" crlf)
                        (printout t "   2 - Con vida, con lesiones" crlf)
                        (printout t "   3 - Fallecido" crlf)

                        (bind ?opcionEstado (read))
                        (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                        (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones"))
                        (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones"))
                        (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

                        (printout t "" crlf)

                        (bind ?cantidadVictimas 1)

                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion) (cantidadVictimas ?cantidadVictimas) (cantidadVictimarios ?cantidadVictimarios)))
                )


        )

        (if (= ?opcionTipoDelito 2) then

        ;********************************************************************************************************************************
        ;                              DELITOS CONTRA EL HONOR
        ;********************************************************************************************************************************


                (printout t "Indique la situacion sucedida:" crlf)
                (printout t "   1 - Calumnia (Falsa imputacion a una persona fisica de la comision de un delito que de lugar a la accion publica)" crlf)
                (printout t "               Excluye: Expresiones referidas a asuntos de interes publico / Expresiones que no sean asertivas" crlf)
                (printout t "   2 - Injuria (Deshonra o desacreditacion intencional a una persona fisica)" crlf)
                (printout t "               Excluye: Expresiones referidas a asuntos de interes publico / Expresiones que no sean asertivas / Calificativos lesivos del honor que guarden relacion con un asunto de interes publico" crlf)
                (printout t "   3 - Acusado de injuria prueba la verdad de la imputacion" crlf)
                (printout t "   4 - Publicar o reproducir (en cualquier medio) injurias inferidas por otro, no siendo su contenido fiel a la fuente pertinente" crlf)
                (printout t "               Excluye: Expresiones referidas a asuntos de interes publico / Expresiones que no sean asertivas" crlf)
                (printout t "   5 - Publicar o reproducir (en cualquier medio) calumnias inferidas por otro, no siendo su contenido fiel a la fuente pertinente" crlf)
                (printout t "               Excluye: Expresiones referidas a asuntos de interes publico / Expresiones que no sean asertivas" crlf)
                (printout t "   6 - Injuria realizada por defensores ante los tribunales y no dada a publicidad" crlf)
                (printout t "   7 - Injurias reciprocas" crlf)
                (printout t "   8 - Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, sin generar perjuicio a alguna persona" crlf)
                (printout t "   9 - Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, generando perjuicio a alguna persona" crlf)
                        
                (bind ?opcionDelitoContraLasPersonas (read))
                (printout t "ingresaste:") (printout t ?opcionDelitoContraLasPersonas crlf)

                (if (= ?opcionDelitoContraLasPersonas 1) then (bind ?delitoCometido "Calumnia (Falsa imputacion a una persona fisica de la comision de un delito que de lugar a la accion publica)"))
                (if (= ?opcionDelitoContraLasPersonas 2) then (bind ?delitoCometido "Injuria (Deshonra o desacreditacion intencional a una persona fisica)"))
                (if (= ?opcionDelitoContraLasPersonas 3) then (bind ?delitoCometido "Ninguno (Acusado de injuria prueba la verdad de la imputacion)"))
                (if (= ?opcionDelitoContraLasPersonas 4) then (bind ?delitoCometido "Publicar o reproducir (en cualquier medio) injurias inferidas por otro, no siendo su contenido fiel a la fuente pertinente"))
                (if (= ?opcionDelitoContraLasPersonas 5) then (bind ?delitoCometido "Publicar o reproducir (en cualquier medio) calumnias inferidas por otro, no siendo su contenido fiel a la fuente pertinente"))
                (if (= ?opcionDelitoContraLasPersonas 6) then (bind ?delitoCometido "Injuria realizada por defensores ante los tribunales y no dada a publicidad"))
                (if (= ?opcionDelitoContraLasPersonas 7) then (bind ?delitoCometido "Injurias reciprocas"))
                (if (= ?opcionDelitoContraLasPersonas 8) then (bind ?delitoCometido "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, sin generar perjuicio a alguna persona"))
                (if (= ?opcionDelitoContraLasPersonas 9) then (bind ?delitoCometido "Proporcionar a un tercero informacion falsa contenida en un archivo de datos personales, generando perjuicio a alguna persona"))

                (printout t "" crlf)

                (printout t "Nombre y apellido del victimario: ")
                (bind ?nombreApellidoVictimario (read))
                (printout t "DNI del victimario: ")
                (bind ?dniVictimario (read))
                (printout t "Edad del victimario: ")
                (bind ?edadVictimario (read))
                (bind ?rol "Ejecutor")

                (printout t "" crlf)

                (printout t "Nombre y apellido de la victima: ")
                (bind ?nombreApellidoVictima (read))
                (printout t "DNI de la victima: ")
                (bind ?dniVictima (read))
                (printout t "Edad de la victima: ")
                (bind ?edadVictima (read))

                (printout t "" crlf)

                (if (or (= ?opcionDelitoContraLasPersonas 3) (= ?opcionDelitoContraLasPersonas 6) (= ?opcionDelitoContraLasPersonas 7)) then

                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
                        (assert (caso (delito ?delitoCometido)))
                )

                (if (and (!= ?opcionDelitoContraLasPersonas 3) (!= ?opcionDelitoContraLasPersonas 6) (!= ?opcionDelitoContraLasPersonas 7) (!= ?opcionDelitoContraLasPersonas 8) (!= ?opcionDelitoContraLasPersonas 9)) then

                        (printout t "Hubo arrepentimiento publico por parte del acusado sobre la injuria o calumnia realizada?" crlf)
                        (printout t "   1 - Si" crlf)
                        (printout t "   2 - No" crlf)

                        (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                        (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "Si"))
                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "No"))

                        (printout t "" crlf)

                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
                        (assert (caso (delito ?delitoCometido) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))
                )

                (if (or (= ?opcionDelitoContraLasPersonas 8) (= ?opcionDelitoContraLasPersonas 9)) then

                        (printout t "La informacion fue proporcionada por un funcionario publico en ejercicio de sus funciones?" crlf)
                        (printout t "   1 - Si" crlf)
                        (printout t "   2 - No" crlf)

                        (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                        (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "No"))
                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "Si"))

                        (printout t "" crlf)

                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
                        (assert (caso (delito ?delitoCometido) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))
                )

        )


        (if (= ?opcionTipoDelito 3) then

        ;********************************************************************************************************************************
        ;                              DELITOS CONTRA LA INTEGRIDAD SEXUAL
        ;********************************************************************************************************************************

                (printout t "Seleccione el tipo de delito contra la integridad sexual cometido:" crlf)
                (printout t "   1 - Abuso sexual" crlf)
                (printout t "   2 - Corrupcion de menores" crlf)
                (printout t "   3 - Promocion o facilitacion de prostitucion / Proxenetismo agravado" crlf)
                (printout t "   4 - Rufianeria" crlf)
                (printout t "   5 - Difusion de imagenes y espectaculos pornograficos de menores" crlf)
                (printout t "   6 - Exhibiciones obscenas" crlf)
                (printout t "   7 - Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual" crlf)
                (printout t "   8 - Grooming (Ciberacoso sexual infantil)" crlf)
     
                (bind ?opcionDelitoContraLaIntegridadSexual (read))
                (printout t "ingresaste:") (printout t ?opcionDelitoContraLaIntegridadSexual crlf)

                (printout t "" crlf)

                (if (= ?opcionDelitoContraLaIntegridadSexual 1) then

                        (printout t "Hubo consentimiento por parte de la victima?" crlf)
                        (printout t "   1 - Violacion (Sin consentimiento de la victima)" crlf)
                        (printout t "           Si es menor de 13 anios y hubo consentimiento, tambien se considera violacion" crlf) 
                        (printout t "   2 - Estupro (Con consentimiento de la victima)" crlf) ;SEGUNDO O TERCER PARRAFO
                        
                        (bind ?opcionCircunstanciasExternasDeAtenuacion (read))

                        (printout t "" crlf)

                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then 

                                (bind ?circunstanciasExternasDeAtenuacion "No")

                                (printout t "Indique la situacion sucedida:" crlf)
                                (printout t "   1 - Abuso sexual" crlf)
                                (printout t "   2 - Abuso sexual gravemente ultrajante" crlf)
                                (printout t "   3 - Abuso sexual agravado por acceso carnal" crlf)

                                (bind ?opcionSituacion (read))
                                (printout t "ingresaste:") (printout t ?opcionSituacion crlf)

                                (if (= ?opcionSituacion 1) then 

                                        (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)

                                        (printout t "   1 - Violencia" crlf)
                                        (printout t "   2 - Amenaza" crlf)
                                        (printout t "   3 - Abuso coactivo o intimidatorio de una relacion de dependencia, de autoridad o de poder" crlf)
                                        (printout t "   4 - Aprovechamiento de que la victima por cualquier causa no haya podido consentir libremente la accion" crlf)

                                        (bind ?opcionProcedimiento (read))
                                        (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                                        (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Violencia"))
                                        (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Amenaza"))
                                        (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Abuso coactivo o intimidatorio de una relacion de dependencia, de autoridad o de poder"))
                                        (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Aprovechamiento de que la victima por cualquier causa no haya podido consentir libremente la accion"))

                                        (printout t "" crlf)

                                        (printout t "Ocurrio alguno de los siguientes agravantes?" crlf)
                                        (printout t "   1 - Abuso sexual agravado por el resultado" crlf)
                                        (printout t "   2 - Abuso sexual agravado por el parentesco con la victima" crlf)
                                        (printout t "   3 - Abuso sexual agravado por la calidad del autor" crlf)
                                        (printout t "           Curador" crlf)
                                        (printout t "           Ministro de algun culto reconocido o no" crlf)
                                        (printout t "           Encargado de la educacion o de la guarda"  crlf)
                                        (printout t "           Personal perteneciente a las fuerzas policiales o de seguridad, en ocasion de sus funciones"  crlf)
                                        (printout t "   4 - Abuso sexual agravado por el numero de autores" crlf)
                                        (printout t "   5 - Abuso sexual agravado por el medio empleado" crlf)
                                        (printout t "   6 - Abuso sexual agravado por la edad y situacion de convivencia preexistente con la victima" crlf)
                                        (printout t "   7 - Ninguno de los anteriores" crlf)

                                        (bind ?opcionDelitoCometido (read))
                                        (printout t "ingresaste:") (printout t ?opcionDelitoCometido crlf)

                                        (printout t "" crlf)

                                        (if (= ?opcionDelitoCometido 1) then (bind ?delitoCometido "Abuso sexual agravado por el resultado"))
                                        
                                        (if (= ?opcionDelitoCometido 2) then (bind ?delitoCometido "Abuso sexual agravado por el parentesco con la victima")

                                                (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
                                                (printout t "   1 - Ascendente/Descendente" crlf)
                                                (printout t "   2 - Afin en linea recta" crlf)
                                                (printout t "   3 - Hermano" crlf)
                                                (printout t "   4 - Tutor" crlf)

                                                (bind ?opcionRelacion (read))
                                                (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

                                                (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente o descendente"))
                                                (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Afin en linea recta"))
                                                (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Hermano"))
                                                (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Tutor"))

                                                (printout t "" crlf)

                                        )
                                        
                                        (if (= ?opcionDelitoCometido 3) then (bind ?delitoCometido "Abuso sexual agravado por la calidad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 4) then (bind ?delitoCometido "Abuso sexual agravado por el numero de autores")
                                                
                                                (printout t "Cuantos victimarios involucrados hay en el caso?" crlf)
                                                (printout t "   2 - Dos" crlf)
                                                (printout t "   3 - Tres" crlf)
                                                (printout t "   4 - Cuatro" crlf)
                                                (printout t "   5 - Cinco" crlf)
                                                (printout t "   6 - Mas de cinco" crlf)

                                                (bind ?opcionCantidadVictimarios (read))
                                                (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)

                                                (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 2))
                                                (if (= ?opcionCantidadVictimarios 3) then (bind ?cantidadVictimarios 3))
                                                (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 4))
                                                (if (= ?opcionCantidadVictimarios 5) then (bind ?cantidadVictimarios 5))
                                                (if (= ?opcionCantidadVictimarios 6) then (bind ?cantidadVictimarios "Mas de cinco"))

                                                (printout t "" crlf)
                                        )
                                        
                                        (if (= ?opcionDelitoCometido 5) then (bind ?delitoCometido "Abuso sexual agravado por el medio empleado"))
                                        
                                        (if (= ?opcionDelitoCometido 6) then (bind ?delitoCometido "Abuso sexual agravado por la edad y situacion de convivencia preexistente con la victima"))

                                        (if (= ?opcionDelitoCometido 7) then (bind ?delitoCometido "Abuso sexual"))

                                ) ;end abuso sexual

                                (if (= ?opcionSituacion 2) then 

                                        (printout t "Ocurrio alguno de los siguientes agravantes?" crlf)
                                        (printout t "   1 - Abuso sexual agravado por el resultado" crlf)
                                        (printout t "   2 - Abuso sexual agravado por el parentesco con la victima" crlf)
                                        (printout t "   3 - Abuso sexual agravado por la calidad del autor" crlf)
                                        (printout t "           Curador" crlf)
                                        (printout t "           Ministro de algun culto reconocido o no" crlf)
                                        (printout t "           Encargado de la educacion o de la guarda"  crlf)
                                        (printout t "           Personal perteneciente a las fuerzas policiales o de seguridad, en ocasion de sus funciones"  crlf)
                                        (printout t "   4 - Abuso sexual agravado por la enfermedad del autor" crlf)
                                        (printout t "   5 - Abuso sexual agravado por el numero de autores" crlf)
                                        (printout t "   6 - Abuso sexual agravado por el medio empleado" crlf)
                                        (printout t "   7 - Abuso sexual agravado por la edad y situacion de convivencia preexistente con la victima" crlf)
                                        (printout t "   8 - Ninguno de los anteriores" crlf)

                                        (bind ?opcionDelitoCometido (read))
                                        (printout t "ingresaste:") (printout t ?opcionDelitoCometido crlf)

                                        (printout t "" crlf)

                                        (if (= ?opcionDelitoCometido 1) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por el resultado"))
                                        
                                        (if (= ?opcionDelitoCometido 2) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por el parentesco con la victima")

                                                (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
                                                (printout t "   1 - Ascendente/Descendente" crlf)
                                                (printout t "   2 - Afin en linea recta" crlf)
                                                (printout t "   3 - Hermano" crlf)
                                                (printout t "   4 - Tutor" crlf)

                                                (bind ?opcionRelacion (read))
                                                (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

                                                (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente o descendente"))
                                                (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Afin en linea recta"))
                                                (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Hermano"))
                                                (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Tutor"))

                                                (printout t "" crlf)

                                        )
                                        
                                        (if (= ?opcionDelitoCometido 3) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por la calidad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 4) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por la enfermedad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 5) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por el numero de autores")
                                                
                                                (printout t "Cuantos victimarios involucrados hay en el caso?" crlf)
                                                (printout t "   2 - Dos" crlf)
                                                (printout t "   3 - Tres" crlf)
                                                (printout t "   4 - Cuatro" crlf)
                                                (printout t "   5 - Cinco" crlf)
                                                (printout t "   6 - Mas de cinco" crlf)

                                                (bind ?opcionCantidadVictimarios (read))
                                                (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)

                                                (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 2))
                                                (if (= ?opcionCantidadVictimarios 3) then (bind ?cantidadVictimarios 3))
                                                (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 4))
                                                (if (= ?opcionCantidadVictimarios 5) then (bind ?cantidadVictimarios 5))
                                                (if (= ?opcionCantidadVictimarios 6) then (bind ?cantidadVictimarios "Mas de cinco"))

                                                (printout t "" crlf)
                                        )
                                        
                                        (if (= ?opcionDelitoCometido 6) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por el medio empleado"))
                                        
                                        (if (= ?opcionDelitoCometido 7) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por la edad y situacion de convivencia preexistente con la victima"))

                                        (if (= ?opcionDelitoCometido 8) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante"))

                                ) ;end abuso sexual gravemente ultrajante

                                (if (= ?opcionSituacion 3) then 

                                        (printout t "Ocurrio alguno de los siguientes agravantes?" crlf)
                                        (printout t "   1 - Abuso sexual agravado por el resultado" crlf)
                                        (printout t "   2 - Abuso sexual agravado por el parentesco con la victima" crlf)
                                        (printout t "   3 - Abuso sexual agravado por la calidad del autor" crlf)
                                        (printout t "           Curador" crlf)
                                        (printout t "           Ministro de algun culto reconocido o no" crlf)
                                        (printout t "           Encargado de la educacion o de la guarda"  crlf)
                                        (printout t "           Personal perteneciente a las fuerzas policiales o de seguridad, en ocasion de sus funciones"  crlf)
                                        (printout t "   4 - Abuso sexual agravado por la enfermedad del autor" crlf)
                                        (printout t "   5 - Abuso sexual agravado por el numero de autores" crlf)
                                        (printout t "   6 - Abuso sexual agravado por el medio empleado" crlf)
                                        (printout t "   7 - Abuso sexual agravado por la edad y situacion de convivencia preexistente con la victima" crlf)
                                        (printout t "   8 - Ninguno de los anteriores" crlf)

                                        (bind ?opcionDelitoCometido (read))
                                        (printout t "ingresaste:") (printout t ?opcionDelitoCometido crlf)

                                        (printout t "" crlf)

                                        (if (= ?opcionDelitoCometido 1) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por el resultado"))
                                        
                                        (if (= ?opcionDelitoCometido 2) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por el parentesco con la victima")

                                                (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
                                                (printout t "   1 - Ascendente/Descendente" crlf)
                                                (printout t "   2 - Afin en linea recta" crlf)
                                                (printout t "   3 - Hermano" crlf)
                                                (printout t "   4 - Tutor" crlf)

                                                (bind ?opcionRelacion (read))
                                                (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

                                                (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente o descendente"))
                                                (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Afin en linea recta"))
                                                (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Hermano"))
                                                (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Tutor"))

                                                (printout t "" crlf)
                                        )
                                        
                                        (if (= ?opcionDelitoCometido 3) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por la calidad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 4) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por la enfermedad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 5) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por el numero de autores")
                                                
                                                (printout t "Cuantos victimarios involucrados hay en el caso?" crlf)
                                                (printout t "   2 - Dos" crlf)
                                                (printout t "   3 - Tres" crlf)
                                                (printout t "   4 - Cuatro" crlf)
                                                (printout t "   5 - Cinco" crlf)
                                                (printout t "   6 - Mas de cinco" crlf)

                                                (bind ?opcionCantidadVictimarios (read))
                                                (printout t "ingresaste:") (printout t ?opcionCantidadVictimarios crlf)

                                                (if (= ?opcionCantidadVictimarios 2) then (bind ?cantidadVictimarios 2))
                                                (if (= ?opcionCantidadVictimarios 3) then (bind ?cantidadVictimarios 3))
                                                (if (= ?opcionCantidadVictimarios 4) then (bind ?cantidadVictimarios 4))
                                                (if (= ?opcionCantidadVictimarios 5) then (bind ?cantidadVictimarios 5))
                                                (if (= ?opcionCantidadVictimarios 6) then (bind ?cantidadVictimarios "Mas de cinco"))

                                                (printout t "" crlf)
                                        )
                                        
                                        (if (= ?opcionDelitoCometido 6) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por el medio empleado"))
                                        
                                        (if (= ?opcionDelitoCometido 7) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal, por la edad y situacion de convivencia preexistente con la victima"))

                                        (if (= ?opcionDelitoCometido 8) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal"))

                                ) ;end abuso sexual agravado por acceso carnal
                                
                                (printout t "Nombre y apellido del victimario: ")
                                (bind ?nombreApellidoVictimario (read))
                                (printout t "DNI del victimario: ")
                                (bind ?dniVictimario (read))
                                (printout t "Edad del victimario: ")
                                (bind ?edadVictimario (read))
                                (bind ?rol "Ejecutor")

                                (if (!= ?opcionDelitoCometido 2) then

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
                                )

                                (printout t "" crlf)

                                (if (!= ?opcionDelitoCometido 5) then

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
                                )

                                (printout t "Nombre y apellido de la victima: ")
                                (bind ?nombreApellidoVictima (read))
                                (printout t "DNI de la victima: ")
                                (bind ?dniVictima (read))
                                (printout t "Edad de la victima: ")
                                (bind ?edadVictima (read))

                                (printout t "Seleccione el estado de la victima: " crlf)
                                (printout t "   1 - Con vida, sin lesiones" crlf)
                                (printout t "   2 - Con vida, con lesiones" crlf)
                                (printout t "   3 - Fallecido" crlf)

                                (bind ?opcionEstado (read))
                                (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                                (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones"))
                                (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones"))
                                (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

                                (bind ?cantidadVictimas 1)

                                (printout t "" crlf)

                                (if (= ?opcionSituacion 1) then

                                    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                                    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                    (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))
                                )

                                (if (!= ?opcionSituacion 1) then 

                                    (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                                    (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                    (assert (caso (delito ?delitoCometido) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))
                                )

                        ) ;end violacion

                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then

                                (bind ?circunstanciasExternasDeAtenuacion "Si")

                                (printout t "Indique la situacion sucedida:" crlf)
                                (printout t "   1 - Abuso sexual gravemente ultrajante" crlf)
                                (printout t "   2 - Abuso sexual agravado por acceso carnal" crlf)

                                (bind ?opcionSituacion (read))
                                (printout t "ingresaste:") (printout t ?opcionSituacion crlf)

                                (printout t "" crlf)

                                (if (= ?opcionSituacion 1) then 

                                        (printout t "Ocurrio alguno de los siguientes agravantes?" crlf)
                                        (printout t "   1 - Abuso sexual agravado por el resultado" crlf)
                                        (printout t "   2 - Abuso sexual agravado por el parentesco con la victima" crlf)
                                        (printout t "   3 - Abuso sexual agravado por la calidad del autor" crlf)
                                        (printout t "           Curador" crlf)
                                        (printout t "           Ministro de algun culto reconocido o no" crlf)
                                        (printout t "           Encargado de la educacion o de la guarda"  crlf)
                                        (printout t "           Personal perteneciente a las fuerzas policiales o de seguridad, en ocasion de sus funciones"  crlf)
                                        (printout t "   4 - Abuso sexual agravado por la enfermedad del autor" crlf)
                                        (printout t "   5 - Abuso sexual agravado por la edad y situacion de convivencia preexistente con la victima" crlf)
                                        (printout t "   6 - Ninguno de los anteriores" crlf)

                                        (bind ?opcionDelitoCometido (read))
                                        (printout t "ingresaste:") (printout t ?opcionDelitoCometido crlf)

                                        (printout t "" crlf)

                                        (if (= ?opcionDelitoCometido 1) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por el resultado"))
                                        
                                        (if (= ?opcionDelitoCometido 2) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por el parentesco con la victima")

                                                (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
                                                (printout t "   1 - Ascendente/Descendente" crlf)
                                                (printout t "   2 - Afin en linea recta" crlf)
                                                (printout t "   3 - Hermano" crlf)
                                                (printout t "   4 - Tutor" crlf)

                                                (bind ?opcionRelacion (read))
                                                (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

                                                (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente o descendente"))
                                                (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Afin en linea recta"))
                                                (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Hermano"))
                                                (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Tutor"))

                                                (printout t "" crlf)
                                        )
                                        
                                        (if (= ?opcionDelitoCometido 3) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por la calidad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 4) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por la enfermedad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 5) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante agravado por la edad y situacion de convivencia preexistente con la victima"))

                                        (if (= ?opcionDelitoCometido 6) then (bind ?delitoCometido "Abuso sexual gravemente ultrajante"))

                                ) ;end abuso sexual gravemente ultrajante

                                (if (= ?opcionSituacion 2) then 

                                        (printout t "Ocurrio alguno de los siguientes agravantes?" crlf)
                                        (printout t "   1 - Abuso sexual agravado por el resultado" crlf)
                                        (printout t "   2 - Abuso sexual agravado por el parentesco con la victima" crlf)
                                        (printout t "   3 - Abuso sexual agravado por la calidad del autor" crlf)
                                        (printout t "           Curador" crlf)
                                        (printout t "           Ministro de algun culto reconocido o no" crlf)
                                        (printout t "           Encargado de la educacion o de la guarda"  crlf)
                                        (printout t "           Personal perteneciente a las fuerzas policiales o de seguridad, en ocasion de sus funciones"  crlf)
                                        (printout t "   4 - Abuso sexual agravado por la enfermedad del autor" crlf)
                                        (printout t "   5 - Abuso sexual agravado por la edad y situacion de convivencia preexistente con la victima" crlf)
                                        (printout t "   6 - Ninguno de los anteriores" crlf)

                                        (bind ?opcionDelitoCometido (read))
                                        (printout t "ingresaste:") (printout t ?opcionDelitoCometido crlf)

                                        (printout t "" crlf)

                                        (if (= ?opcionDelitoCometido 1) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por el resultado"))
                                        
                                        (if (= ?opcionDelitoCometido 2) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por el parentesco con la victima")

                                                (printout t "Seleccione la relacion del victimario con alguna de las victimas:" crlf)
                                                (printout t "   1 - Ascendente/Descendente" crlf)
                                                (printout t "   2 - Afin en linea recta" crlf)
                                                (printout t "   3 - Hermano" crlf)
                                                (printout t "   4 - Tutor" crlf)

                                                (bind ?opcionRelacion (read))
                                                (printout t "ingresaste:") (printout t ?opcionRelacion crlf)

                                                (if (= ?opcionRelacion 1) then (bind ?relacionConVictima "Ascendente o descendente"))
                                                (if (= ?opcionRelacion 2) then (bind ?relacionConVictima "Afin en linea recta"))
                                                (if (= ?opcionRelacion 3) then (bind ?relacionConVictima "Hermano"))
                                                (if (= ?opcionRelacion 4) then (bind ?relacionConVictima "Tutor"))

                                                (printout t "" crlf)

                                        )
                                        
                                        (if (= ?opcionDelitoCometido 3) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por la calidad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 4) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal y por la enfermedad del autor"))
                                        
                                        (if (= ?opcionDelitoCometido 5) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal, por la edad y situacion de convivencia preexistente con la victima"))

                                        (if (= ?opcionDelitoCometido 6) then (bind ?delitoCometido "Abuso sexual agravado por acceso carnal"))

         
                                ) ;end abuso sexual agravado por acceso carnal

                                (printout t "Nombre y apellido del victimario: ")
                                (bind ?nombreApellidoVictimario (read))
                                (printout t "DNI del victimario: ")
                                (bind ?dniVictimario (read))
                                (printout t "Edad del victimario (Mayor de 18): ")
                                (bind ?edadVictimario (read))
                                (bind ?rol "Ejecutor")

                                (if (!= ?opcionDelitoCometido 2) then

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
                                )

                                (printout t "" crlf)

                                (if (= ?opcionDelitoCometido 5) then

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
                                )

                                (printout t "Nombre y apellido de la victima: ")
                                (bind ?nombreApellidoVictima (read))
                                (printout t "DNI de la victima: ")
                                (bind ?dniVictima (read))
                                (printout t "Edad de la victima (Menor de 18): ")
                                (bind ?edadVictima (read))

                                (printout t "Seleccione el estado de la victima: " crlf)
                                (printout t "   1 - Con vida, sin lesiones" crlf)
                                (printout t "   2 - Con vida, con lesiones" crlf)
                                (printout t "   3 - Fallecido" crlf)

                                (bind ?opcionEstado (read))
                                (printout t "ingresaste:") (printout t ?opcionEstado crlf)

                                (if (= ?opcionEstado 1) then (bind ?estado "Con vida, sin lesiones"))
                                (if (= ?opcionEstado 2) then (bind ?estado "Con vida, con lesiones"))
                                (if (= ?opcionEstado 3) then (bind ?estado "Fallecido"))

                                (bind ?cantidadVictimas 1)

                                (printout t "" crlf)

                                (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                                (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima) (estado ?estado)))
                                (assert (caso (delito ?delitoCometido) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))
                                
                        ) ;end estupro

                ) ;end abuso sexual

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

                ) ;end corrupcion de menores
                
                (if (or (= ?opcionDelitoContraLaIntegridadSexual 3) (= ?opcionDelitoContraLaIntegridadSexual 4)) then

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

                        (if (= ?opcionDelitoContraLaIntegridadSexual 3) then

                                (if (and (eq ?opcionProcedimiento 8) (eq ?relacionConVictima "Otra") (eq ?circunstanciasExternasDeAtenuacion "Si")) then (bind ?delitoCometido "Promocion o facilitacion de prostitucion"))
                                (if (or (neq ?opcionProcedimiento 8) (neq ?relacionConVictima "Otra") (eq ?circunstanciasExternasDeAtenuacion "No") (<= ?edadVictima 18)) then (bind ?delitoCometido "Proxenetismo agravado"))
                        )

                        (if (= ?opcionDelitoContraLaIntegridadSexual 4) then (bind ?delitoCometido "Rufianeria"))

                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol) (relacionConVictima ?relacionConVictima)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
                        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))

                ) ;end promocion o facilitacion de la prostitucion / Proxenetismo agravado y rufianeria

                (if (= ?opcionDelitoContraLaIntegridadSexual 5) then

                        (bind ?delitoCometido "Difusion de imagenes y espectaculos pornograficos de menores")

                        (printout t "Seleccione el procedimiento mediante el cual se realizo el delito:" crlf)
                        (printout t "   1 - Difusion de representaciones con contenido sexual de menores" crlf)
                        (printout t "   2 - Organizacion de espectaculos en vivo de representaciones sexuales explicitas donde participen menores de edad" crlf)
                        (printout t "   3 - Posesion de representaciones con contenido sexual de menores" crlf)
                        (printout t "   4 - Posesion de representaciones con contenido sexual de menores (con fines inequivocos de distribucion o comercializacion)" crlf)
                        (printout t "   5 - Facilitacion de acceso a espectaculos pornograficos o suministro de material pornografico a menores de 14 anios" crlf)

                        (bind ?opcionProcedimiento (read))
                        (printout t "ingresaste:") (printout t ?opcionProcedimiento crlf)

                        (if (= ?opcionProcedimiento 1) then (bind ?procedimiento "Difusion de representaciones con contenido sexual de menores"))
                        (if (= ?opcionProcedimiento 2) then (bind ?procedimiento "Organizacion de espectaculos en vivo de representaciones sexuales explicitas donde participen menores de edad"))
                        (if (= ?opcionProcedimiento 3) then (bind ?procedimiento "Posesion de representaciones con contenido sexual de menores"))
                        (if (= ?opcionProcedimiento 4) then (bind ?procedimiento "Posesion de representaciones con contenido sexual de menores (con fines inequivocos de distribucion o comercializacion)"))
                        (if (= ?opcionProcedimiento 5) then (bind ?procedimiento "Facilitacion de acceso a espectaculos pornograficos o suministro de material pornografico a menores de 14 anios"))

                        (printout t "" crlf)

                        (printout t "Nombre y apellido del victimario: ")
                        (bind ?nombreApellidoVictimario (read))
                        (printout t "DNI del victimario: ")
                        (bind ?dniVictimario (read))
                        (printout t "Edad del victimario: ")
                        (bind ?edadVictimario (read))
                        (bind ?rol "Ejecutor")

                        (printout t "" crlf)  

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
                        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento)))

                ) ;end difusion de imagenes y espectaculos pornograficos de menores

                (if (= ?opcionDelitoContraLaIntegridadSexual 6) then

                        (bind ?delitoCometido "Exhibiciones obscenas")

                        (printout t "Nombre y apellido del victimario: ")
                        (bind ?nombreApellidoVictimario (read))
                        (printout t "DNI del victimario: ")
                        (bind ?dniVictimario (read))
                        (printout t "Edad del victimario: ")
                        (bind ?edadVictimario (read))
                        (bind ?rol "Ejecutor")

                        (printout t "" crlf)

                        (printout t "Nombre y apellido de la victima: ")
                        (bind ?nombreApellidoVictima (read))
                        (printout t "DNI de la victima: ")
                        (bind ?dniVictima (read))
                        (printout t "Edad de la victima: ")
                        (bind ?edadVictima (read))

                        (printout t "" crlf)

                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
                        (assert (caso (delito ?delitoCometido)))

                ) ;end exhibiciones obscenas

                (if (= ?opcionDelitoContraLaIntegridadSexual 7) then

                        (bind ?delitoCometido "Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual")

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

                        (printout t "" crlf)

                        (printout t "Nombre y apellido de la victima: ")
                        (bind ?nombreApellidoVictima (read))
                        (printout t "DNI de la victima: ")
                        (bind ?dniVictima (read))
                        (printout t "Edad de la victima: ")
                        (bind ?edadVictima (read))

                        (printout t "" crlf)

                        (printout t "Hubo consentimiento por parte de la victima?" crlf)
                        (printout t "   1 - Si" crlf)
                        (printout t "   2 - No" crlf)

                        (bind ?opcionCircunstanciasExternasDeAtenuacion (read))
                        (printout t "ingresaste:") (printout t ?opcionCircunstanciasExternasDeAtenuacion crlf)

                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 1) then (bind ?circunstanciasExternasDeAtenuacion "Si"))
                        (if (= ?opcionCircunstanciasExternasDeAtenuacion 2) then (bind ?circunstanciasExternasDeAtenuacion "No"))

                        (printout t "" crlf)

                        (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (rol ?rol)))
                        (assert (victima (nombreApellido ?nombreApellidoVictima) (dni ?dniVictima) (edad ?edadVictima)))
                        (assert (caso (delito ?delitoCometido) (procedimiento ?procedimiento) (circunstanciasExternasDeAtenuacion ?circunstanciasExternasDeAtenuacion)))

                ) ;end sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual

                (if (= ?opcionDelitoContraLaIntegridadSexual 8) then

                        (bind ?delitoCometido "Grooming")

                        (printout t "Nombre y apellido del victimario: ")
                        (bind ?nombreApellidoVictimario (read))
                        (printout t "DNI del victimario: ")
                        (bind ?dniVictimario (read))
                        (printout t "Edad del victimario: ")
                        (bind ?edadVictimario (read))
                        (bind ?rol "Ejecutor")

                        (printout t "" crlf)

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
 
        ) ;end delitos contra la integridad sexual

) ;end defrule


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
        (exists (victima (estado "Fallecido")))
        =>
        (assert (condena (dni ?dni) (tipoCondena "Prision") (aniosMin 8) (aniosMax 25) (articulo 80)))
        (printout t "regla activada: articulo80_A" crlf)
)

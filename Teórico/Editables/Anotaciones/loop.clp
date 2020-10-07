(deftemplate victima
        (field nombre)
        (field apellido)
        (field edad)
        (field relacionConVictimario)
        (field estado)
        (field idCaso)
 )


(defrule menu ""
 
        =>
        ;(loop-for-count (?suit 1 4) do
        ;        (loop-for-count (?name 1 13) do


        (printout t "   Ingrese cantidad:" crlf)
        (bind ?cantidad (read))

        (printout t " Se ingreso: " ?cantidad crlf)

        (bind ?cantidad (- ?cantidad 1))
        (printout t "Cantidad ahora vale: " ?cantidad crlf)

        (while (>= ?cantidad 0)
             
               (printout t "Nombre de la victima: ")
               (bind ?nombre (read))
               (printout t "Apellido de la victima: ")
               (bind ?apellido (read))

               (bind ?cantidad (- ?cantidad 1))
               (assert (victima (nombre ?nombre) (apellido ?apellido)))
        )

         


)



        (while (> ?opcionCantidadVictimarios 0)
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

                (bind ?opcionCantidadVictimarios (- ?opcionCantidadVictimarios 1))
                (assert (victimario (nombreApellido ?nombreApellidoVictimario) (dni ?dniVictimario) (edad ?edadVictimario) (relacionConVictima ?relacionConVictima) (rol ?rol)))
        )



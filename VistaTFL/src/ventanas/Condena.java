/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ventanas;

import net.sf.clipsrules.jni.*;

import javax.swing.JOptionPane;

public class Condena extends javax.swing.JFrame {
    Environment clips;
     
    public void mostrarCondena1(boolean mostrar) {
        jLabelDNI1.setVisible(mostrar);
        jLabelCondena1.setVisible(mostrar);
    }
    
    public void mostrarCondena2(boolean mostrar) {
        jLabelDNI2.setVisible(mostrar);
        jLabelCondena2.setVisible(mostrar);
    }

    public void mostrarCondena3(boolean mostrar) {
        jLabelDNI3.setVisible(mostrar);
        jLabelCondena3.setVisible(mostrar);
    }

    public void mostrarCondena4(boolean mostrar) {
        jLabelDNI4.setVisible(mostrar);
        jLabelCondena4.setVisible(mostrar);
    }
    
    public String calcularStringTiempo (String añosMin, String mesesMin, String diasMin, String añosMax, String mesesMax, String diasMax) {
        String tiempo = "";
        
        if ((añosMin.compareTo("nil") != 0) && (mesesMin.compareTo("nil") == 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") == 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") == 0)) {
            if (añosMin.compareTo("1") != 0) {
                tiempo = añosMin + " años";
            }
            if (añosMin.compareTo("1") == 0) {
                tiempo = añosMin + " año";
            }
        }  
        
        if ((añosMin.compareTo("nil") != 0) && (mesesMin.compareTo("nil") == 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") == 0)) {
            tiempo = añosMin + " a " + añosMax + " años";
        }
        
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") == 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") == 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") == 0)) {
            tiempo = "-";
        }
        
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") == 0)) {
            if ((mesesMin.compareTo("1") != 0) && (añosMax.compareTo("1") != 0)) {
                tiempo = mesesMin + " meses a " + añosMax + " años";
            }
            if ((mesesMin.compareTo("1") == 0) && (añosMax.compareTo("1") != 0)) {
                tiempo = mesesMin + " mes a " + añosMax + " años";
            }
            if ((mesesMin.compareTo("1") != 0) && (añosMax.compareTo("1") == 0)) {
                tiempo = mesesMin + " meses a " + añosMax + " año";
            }
            if ((mesesMin.compareTo("1") == 0) && (añosMax.compareTo("1") == 0)) {
                tiempo = mesesMin + " mes a " + añosMax + " año";
            }
        }
 
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") == 0) && (diasMin.compareTo("nil") != 0) &&
            (añosMax.compareTo("nil") == 0) && (mesesMax.compareTo("nil") != 0) && (diasMax.compareTo("nil") == 0)) {
            if ((diasMin.compareTo("1") != 0) && (mesesMax.compareTo("1") != 0)) {
                tiempo = diasMin + " días a " + mesesMax + " meses";
            }
            if ((diasMin.compareTo("1") == 0) && (mesesMax.compareTo("1") != 0)) {
                tiempo = diasMin + " día a " + mesesMax + " meses";
            }
            if ((diasMin.compareTo("1") != 0) && (mesesMax.compareTo("1") == 0)) {
                tiempo = diasMin + " días a " + mesesMax + " mes";
            }
            if ((diasMin.compareTo("1") == 0) && (mesesMax.compareTo("1") == 0)) {
                tiempo = diasMin + " día a " + mesesMax + " mes";
            }
        }        
        
        if ((añosMin.compareTo("nil") != 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") == 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") == 0)) {
            if ((añosMin.compareTo("1") != 0) && (mesesMin.compareTo("1") != 0)) {
                tiempo = añosMin + " años y " + mesesMin + " meses";
            }
            if ((añosMin.compareTo("1") == 0) && (mesesMin.compareTo("1") != 0)) {
                tiempo = añosMin + " año y " + mesesMin + " meses";
            }
            if ((añosMin.compareTo("1") != 0) && (mesesMin.compareTo("1") == 0)) {
                tiempo = añosMin + " años y " + mesesMin + " mes";
            }
            if ((añosMin.compareTo("1") == 0) && (mesesMin.compareTo("1") == 0)) {
                tiempo = añosMin + " año y " + mesesMin + " mes";
            }
        }
        
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") == 0) && (diasMin.compareTo("nil") != 0) &&
            (añosMax.compareTo("nil") == 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") != 0)) {
            tiempo = diasMin + " a " + diasMax + " días";
        } 
        
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") == 0) && (mesesMax.compareTo("nil") != 0) && (diasMax.compareTo("nil") == 0)) {
            tiempo = mesesMin + " a " + mesesMax + " meses";
        } 
        
        if ((añosMin.compareTo("nil") != 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") != 0) && (diasMax.compareTo("nil") == 0)) {
            if ((añosMin.compareTo("1") == 0) && (añosMax.compareTo("1") == 0)) {
                tiempo = añosMin + " año y " + mesesMin + " meses a " + añosMax + " año y " + mesesMax + " meses";                
            }
            if ((añosMin.compareTo("1") != 0) && (añosMax.compareTo("1") != 0)) {
                tiempo = añosMin + " años y " + mesesMin + " meses a " + añosMax + " años y " + mesesMax + " meses";
            }
            if ((añosMin.compareTo("1") == 0) && (añosMax.compareTo("1") != 0)) {
                tiempo = añosMin + " año y " + mesesMin + " meses a " + añosMax + " años y " + mesesMax + " meses";
            }
        }
        
        if ((añosMin.compareTo("nil") != 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") == 0)) {
            if (añosMin.compareTo("1") == 0) {
                tiempo = añosMin + " año y " + mesesMin + " meses a " + añosMax + " años";
            }
            if (añosMin.compareTo("1") != 0) {
                tiempo = añosMin + " años y " + mesesMin + " meses a " + añosMax + " años";
            }
        }
        
        if ((añosMin.compareTo("nil") != 0) && (mesesMin.compareTo("nil") == 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") != 0) && (diasMax.compareTo("nil") == 0)) {
            if ((añosMin.compareTo("1") == 0) && (añosMax.compareTo("1") == 0)) {
                tiempo = añosMin + " año a " + añosMax + " año y " + mesesMax + " meses";
            }
            if ((añosMin.compareTo("1") == 0) && (añosMax.compareTo("1") != 0)) {
                tiempo = añosMin + " año a " + añosMax + " años y " + mesesMax + " meses";
            }
            if ((añosMin.compareTo("1") != 0) && (añosMax.compareTo("1") != 0)) {
                tiempo = añosMin + " años a " + añosMax + " años y " + mesesMax + " meses";
            }
        }
        
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") == 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") != 0) && (diasMax.compareTo("nil") == 0)) {
            if (añosMax.compareTo("1") == 0) {
                tiempo = mesesMin + " meses a " + añosMax + " año y " + mesesMax + " meses";
            }
            if (añosMax.compareTo("1") != 0) {
                tiempo = mesesMin + " meses a " + añosMax + " años y " + mesesMax + " meses";                
            }
        }
        
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") != 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") != 0) && (diasMax.compareTo("nil") == 0)) {
            if (añosMax.compareTo("1") == 0) {
                tiempo = mesesMin + " meses y " + diasMin + " días a " + añosMax + " año y " + mesesMax + " meses";
            }
            if (añosMax.compareTo("1") != 0) {
                tiempo = mesesMin + " meses y " + diasMin + " días a " + añosMax + " años y " + mesesMax + " meses";                
            }
        }
        
        if ((añosMin.compareTo("nil") == 0) && (mesesMin.compareTo("nil") != 0) && (diasMin.compareTo("nil") != 0) &&
            (añosMax.compareTo("nil") != 0) && (mesesMax.compareTo("nil") == 0) && (diasMax.compareTo("nil") == 0)) {
            if (mesesMin.compareTo("1") == 0) {
                tiempo = mesesMin + " mes y " + diasMin + " días a " + añosMax + " años";
            }
            if (mesesMin.compareTo("1") != 0) {
                tiempo = mesesMin + " meses y " + diasMin + " días a " + añosMax + " años";
            }
        }
        
        return tiempo;
    }      

    public void asignarDatos () {
        if (Index.getTipoDelito() == "Delito contra las personas") {
            if (Index.getTipoDelitoContraLasPersonas() == "Delito contra la vida") {
                if (Index.getTipoDelitoContraLaVida() == "Homicidio") {
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaVida() 
                        + "\") (procedimiento \""  + HomicidioProcedimientoMotivoCircExt.getProcedimiento() 
                        + "\") (motivo\"" + HomicidioProcedimientoMotivoCircExt.getMotivo() 
                        + "\") (circunstanciasExternasDeAtenuacion \"" + HomicidioProcedimientoMotivoCircExt.getCircunstanciasExternasDeAtenuacion() 
                        + "\") (cantidadVictimarios " + HomicidioVictimario.getCantidadVictimarios() 
                        + ") (cantidadVictimas " + HomicidioVictima.getCantidadVictimas() 
                        + ")))");                         
                    clips.eval("(assert (victimario (nombreApellido \"" + HomicidioVictimario.getNombreApellido() 
                        + "\") (dni "  + HomicidioVictimario.getDNI() 
                        + ") (edad " + HomicidioVictimario.getEdad() 
                        + ") (relacionConVictima \"" + HomicidioVictimario.getRelacionConVictima() 
                        + "\") (rol \"" + HomicidioVictimario.getRol() 
                        + "\")))");                      
                    clips.eval("(assert (victima (nombreApellido \"" + HomicidioVictima.getNombreApellido() 
                        + "\") (dni "  + HomicidioVictima.getDNI() 
                        + ") (edad " + HomicidioVictima.getEdad() 
                        + ") (estado \"" + HomicidioVictima.getEstado() 
                        + "\")))");                      
                }
                if (Index.getTipoDelitoContraLaVida() == "Instigar o ayudar a otro a cometer suicidio") {
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaVida() + "\")))");
                    clips.eval("(assert (victimario (nombreApellido \"" + SuicidioVictimario.getNombreApellido() 
                        + "\") (dni "  + SuicidioVictimario.getDNI() 
                        + ") (edad " + SuicidioVictimario.getEdad() 
                        + ") (relacionConVictima \"" + SuicidioVictimario.getRelacionConVictima() 
                        + "\") (rol \"" + SuicidioVictimario.getRol() 
                        + "\")))");        
                    clips.eval("(assert (victima (nombreApellido \"" + SuicidioVictima.getNombreApellido() 
                        + "\") (dni "  + SuicidioVictima.getDNI() 
                        + ") (edad " + SuicidioVictima.getEdad() 
                        + ") (estado \"" + SuicidioVictima.getEstado() 
                        + "\")))");    
                }
                if (Index.getTipoDelitoContraLaVida() == "Aborto") {
                    if (AbortoProcedimientoMotivo.getProcedimiento() != "Mujer consciente que causa su propio aborto") {
                        if (AbortoProcedimientoMotivo.getMotivo() != "Otro") {
                            clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaVida() 
                                + "\") (procedimiento \""  + AbortoProcedimientoMotivo.getProcedimiento() 
                                + "\") (motivo\"" + AbortoProcedimientoMotivo.getMotivo() 
                                + "\") (cantidadVictimarios " + AbortoVictimario.getCantidadVictimarios() 
                                + ") (cantidadVictimas " + AbortoVictima.getCantidadVictimas() 
                                + ")))");
                            clips.eval("(assert (victimario (nombreApellido \"" + AbortoVictimario.getNombreApellido() 
                                + "\") (dni "  + AbortoVictimario.getDNI() 
                                + ") (edad " + AbortoVictimario.getEdad() 
                                + ") (relacionConVictima \"" + AbortoVictimario.getRelacionConVictima() 
                                + "\") (rol \"" + AbortoVictimario.getRol() 
                                + "\")))");   
                            clips.eval("(assert (victima (nombreApellido \"" + AbortoVictima.getNombreApellido() 
                                + "\") (dni "  + AbortoVictima.getDNI() 
                                + ") (edad " + AbortoVictima.getEdad() 
                                + ") (estado \"" + AbortoVictima.getEstado() 
                                + "\")))");    
                        }
                        if (AbortoProcedimientoMotivo.getMotivo() == "Otro") {
                            clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaVida() 
                                + "\") (procedimiento \""  + AbortoProcedimientoMotivo.getProcedimiento() 
                                + "\") (motivo\"" + AbortoProcedimientoMotivo.getMotivo() 
                                + "\") (cantidadVictimarios " + AbortoMedico.getCantidadVictimarios() 
                                + ") (cantidadVictimas " + AbortoMujer.getCantidadVictimas() 
                                + ")))");

                            clips.eval("(assert (victimario (nombreApellido \"" + AbortoMedico.getNombreApellido() 
                                + "\") (dni "  + AbortoMedico.getDNI() 
                                + ") (edad " + AbortoMedico.getEdad() 
                                + ") (relacionConVictima \"" + AbortoMedico.getRelacionConVictima() 
                                + "\") (rol \"" + AbortoMedico.getRol() 
                                + "\")))");   
                            clips.eval("(assert (victima (nombreApellido \"" + AbortoMujer.getNombreApellido() 
                                + "\") (dni "  + AbortoMujer.getDNI() 
                                + ") (edad " + AbortoMujer.getEdad() 
                                + ") (estado \"" + AbortoMujer.getEstado() 
                                + "\")))");    
                        }
                    }       
                    if (AbortoProcedimientoMotivo.getProcedimiento() == "Mujer consciente que causa su propio aborto") {
                            clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaVida() 
                                + "\") (procedimiento \""  + AbortoProcedimientoMotivo.getProcedimiento() 
                                + "\") (motivo\"" + AbortoProcedimientoMotivo.getMotivo() 
//                                + "\") (cantidadVictimarios \"" + AbortoVictimario.getCantidadVictimarios() 
//                                + "\") (cantidadVictimas \"" + AbortoVictima.getCantidadVictimas() 
                                + "\")))");
                            clips.eval("(assert (victimario (nombreApellido \"" + AbortoMujerCausaSuAborto.getNombreApellido() 
                                + "\") (dni "  + AbortoMujerCausaSuAborto.getDNI() 
                                + ") (edad " + AbortoMujerCausaSuAborto.getEdad() 
                                + ") (rol \"" + AbortoMujerCausaSuAborto.getRol() 
                                + "\")))");   
                            clips.eval("(assert (victima (nombreApellido \"" + AbortoMujerCausaSuAborto.getNombreApellido() 
                                + "\") (dni "  + AbortoMujerCausaSuAborto.getDNI() 
                                + ") (edad " + AbortoMujerCausaSuAborto.getEdad() 
                                + ") (estado \"" + AbortoMujerCausaSuAborto.getEstado() 
                                + "\")))");    
                    }                      
                }
            }
            if (Index.getTipoDelitoContraLasPersonas() == "Lesion") {
                clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLasPersonas() 
                    + "\") (procedimiento \""  + LesionProcedimientoMotivoCircExt.getProcedimiento() 
                    + "\") (motivo\"" + LesionProcedimientoMotivoCircExt.getMotivo() 
                    + "\") (circunstanciasExternasDeAtenuacion \"" + LesionProcedimientoMotivoCircExt.getCircunstanciasExternasDeAtenuacion() 
                    + "\") (cantidadVictimarios " + LesionVictimario.getCantidadVictimarios() 
                    + ") (cantidadVictimas " + LesionVictima.getCantidadVictimas() 
                    + ")))");
                clips.eval("(assert (lesion (tipoLesion \"" + Index.getTipoLesion() + "\")))");
                clips.eval("(assert (victimario (nombreApellido \"" + LesionVictimario.getNombreApellido() 
                    + "\") (dni "  + LesionVictimario.getDNI() 
                    + ") (edad " + LesionVictimario.getEdad() 
                    + ") (relacionConVictima \"" + LesionVictimario.getRelacionConVictima() 
                    + "\") (rol \"" + LesionVictimario.getRol() 
                    + "\")))");   
                clips.eval("(assert (victima (nombreApellido \"" + LesionVictima.getNombreApellido() 
                    + "\") (dni "  + LesionVictima.getDNI() 
                    + ") (edad " + LesionVictima.getEdad() 
                    + ") (estado \"" + LesionVictima.getEstado() 
                    + "\")))");                 
            }
            if (Index.getTipoDelitoContraLasPersonas() == "Homicidio o lesiones en rinia") {
                clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoRiña() 
                    + "\") (cantidadVictimarios " + RiñaVictimarioVictima.getCantidadVictimarios() 
                    + ")))");
                if (Index.getTipoDelitoRiña() == "Lesion en rinia") {
                    clips.eval("(assert (lesion (tipoLesion \"" + Index.getTipoLesion() + "\")))");                    
                }
                clips.eval("(assert (victimario (nombreApellido \"" + RiñaVictimarioVictima.getNombreApellidoVictimario() 
                    + "\") (dni "  + RiñaVictimarioVictima.getDNIVictimario() 
                    + ") (edad " + RiñaVictimarioVictima.getEdadVictimario() 
                    + ") (relacionConVictima \"" + RiñaVictimarioVictima.getRelacionConVictima() 
                    + "\") (rol \"" + RiñaVictimarioVictima.getRol() 
                    + "\")))");   
                clips.eval("(assert (victima (nombreApellido \"" + RiñaVictimarioVictima.getNombreApellidoVictima() 
                    + "\") (dni "  + RiñaVictimarioVictima.getDNIVictima() 
                    + ") (edad " + RiñaVictimarioVictima.getEdadVictima() 
                    + ") (estado \"" + RiñaVictimarioVictima.getEstado() 
                    + "\")))");     
            }
            if (Index.getTipoDelitoContraLasPersonas() == "Duelo") {
                if (DueloSituacion.getCircunstanciasExternasDeAtenuacion() == "No") {
                    clips.eval("(assert (duelo (situacion \"" + DueloSituacion.getSituacion() 
                        + "\")))");
                    clips.eval("(assert (victimario (nombreApellido \"" + DueloSituacion.getNombreApellido() 
                        + "\") (dni "  + DueloSituacion.getDNI() 
                        + ") (edad " + DueloSituacion.getEdad() 
                        + ") (relacionConVictima \"" + DueloSituacion.getRelacionConVictima() 
                        + "\") (rol \"" + DueloSituacion.getRol() 
                        + "\")))");
                    clips.eval("(assert (victima (nombreApellido \"" + DueloVictima.getNombreApellido() 
                        + "\") (dni "  + DueloVictima.getDNI() 
                        + ") (edad " + DueloVictima.getEdad() 
                        + ") (estado \"" + DueloVictima.getEstado() 
                        + "\")))");    
                    if (DueloVictima.getEstado() == "Con vida, sin lesiones") {
                        clips.eval("(assert (caso (delito \"" + DueloVictima.getTipoDelitoDuelo()
                            + "\") (circunstanciasExternasDeAtenuacion \"" + DueloSituacion.getCircunstanciasExternasDeAtenuacion() 
                            + "\") (cantidadVictimarios " + DueloSituacion.getCantidadVictimarios() 
                            + ")))");
                    }                                
                    if (DueloVictima.getEstado() == "Con vida, con lesiones") {
                        clips.eval("(assert (lesion (tipoLesion \"" + DueloVictima.getTipoLesion() + "\")))");
                        clips.eval("(assert (caso (delito \"" + DueloVictima.getTipoDelitoDuelo()
                            + "\") (procedimiento \""  + DueloLesion.getProcedimiento()
                            + "\") (motivo\"" + DueloLesion.getMotivo() 
                            + "\") (circunstanciasExternasDeAtenuacion \"" + DueloSituacion.getCircunstanciasExternasDeAtenuacion() 
                            + "\") (cantidadVictimarios " + DueloSituacion.getCantidadVictimarios() 
                            + ")))");
                    }
                    if (DueloVictima.getEstado() == "Fallecido") {
                        clips.eval("(assert (caso (delito \"" + DueloVictima.getTipoDelitoDuelo()
                            + "\") (procedimiento \""  + DueloHomicidio.getProcedimiento() 
                            + "\") (motivo\"" + DueloHomicidio.getMotivo() 
                            + "\") (circunstanciasExternasDeAtenuacion \"" + DueloSituacion.getCircunstanciasExternasDeAtenuacion() 
                            + "\") (cantidadVictimarios " + DueloSituacion.getCantidadVictimarios() 
                            + ")))");
                    }    
                }
                if (DueloSituacion.getCircunstanciasExternasDeAtenuacion() == "Si") {
                    clips.eval("(assert (duelo (situacion \"" + DueloSituacion.getSituacion() 
                        + "\")))");
                    clips.eval("(assert (victimario (nombreApellido \"" + DueloSituacion.getNombreApellido() 
                        + "\") (dni "  + DueloSituacion.getDNI() 
                        + ") (edad " + DueloSituacion.getEdad() 
                        + ") (relacionConVictima \"" + DueloSituacion.getRelacionConVictima() 
                        + "\") (rol \"" + DueloSituacion.getRol() 
                        + "\")))");      
                    clips.eval("(assert (caso (delito \"" + DueloSituacion.getTipoDuelo()
                        + "\") (circunstanciasExternasDeAtenuacion \"" + DueloSituacion.getCircunstanciasExternasDeAtenuacion() 
                        + "\") (cantidadVictimarios " + DueloSituacion.getCantidadVictimarios() 
                        + ")))");                    
                }
            }
            if (Index.getTipoDelitoContraLasPersonas() == "Abuso de armas") {
                    //clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoAbusoDeArmas() 
                if (AbusoDeArmasVictima.getEstado() == "Con vida, sin lesiones") {
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoAbusoDeArmas()
                        + "\") (cantidadVictimas " + AbusoDeArmasVictimario.getCantidadVictimas()
                        + ") (cantidadVictimarios " + AbusoDeArmasVictimario.getCantidadVictimarios() 
                        + ")))");
                }                                
                if (AbusoDeArmasVictima.getEstado() == "Con vida, con lesiones") {
                    clips.eval("(assert (lesion (tipoLesion \"" + AbusoDeArmasVictima.getTipoLesion() + "\")))");
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoAbusoDeArmas()
                        + "\") (procedimiento \""  + AbusoDeArmasLesion.getProcedimiento()
                        + "\") (motivo\"" + AbusoDeArmasLesion.getMotivo() 
                        + "\") (cantidadVictimas " + AbusoDeArmasVictimario.getCantidadVictimas()
                        + ") (cantidadVictimarios " + AbusoDeArmasVictimario.getCantidadVictimarios() 
                        + ")))");
                }
                if (AbusoDeArmasVictima.getEstado() == "Fallecido") {
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoAbusoDeArmas()
                        + "\") (procedimiento \""  + AbusoDeArmasHomicidio.getProcedimiento() 
                        + "\") (motivo\"" + AbusoDeArmasHomicidio.getMotivo() 
                        + "\") (circunstanciasExternasDeAtenuacion\"" + AbusoDeArmasHomicidio.getCircunstanciasExternasDeAtenuacion()     
                        + "\") (cantidadVictimas " + AbusoDeArmasVictimario.getCantidadVictimas()
                        + ") (cantidadVictimarios " + AbusoDeArmasVictimario.getCantidadVictimarios() 
                        + ")))");
                }    
                clips.eval("(assert (victimario (nombreApellido \"" + AbusoDeArmasVictimario.getNombreApellido() 
                    + "\") (dni "  + AbusoDeArmasVictimario.getDNI() 
                    + ") (edad " + AbusoDeArmasVictimario.getEdad() 
                    + ") (relacionConVictima \"" + AbusoDeArmasVictimario.getRelacionConVictima() 
                    + "\") (rol \"" + AbusoDeArmasVictimario.getRol() 
                    + "\")))");                                
                clips.eval("(assert (victima (nombreApellido \"" + AbusoDeArmasVictima.getNombreApellido() 
                    + "\") (dni "  + AbusoDeArmasVictima.getDNI() 
                    + ") (edad " + AbusoDeArmasVictima.getEdad() 
                    + ") (estado \"" + AbusoDeArmasVictima.getEstado() 
                    + "\")))");                                
            }
            if (Index.getTipoDelitoContraLasPersonas() == "Abandono de persona") {
                clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLasPersonas() 
                    + "\") (procedimiento \""  + AbandonoProcedimientoCircExt.getProcedimiento() 
                    + "\") (circunstanciasExternasDeAtenuacion \"" + AbandonoProcedimientoCircExt.getCircunstanciasExternasDeAtenuacion() 
                    + "\") (cantidadVictimarios " + AbandonoProcedimientoCircExt.getCantidadVictimarios() 
                    + ") (cantidadVictimas " + AbandonoVictima.getCantidadVictimas() 
                    + ")))");                         
                clips.eval("(assert (victimario (nombreApellido \"" + AbandonoProcedimientoCircExt.getNombreApellido() 
                    + "\") (dni "  + AbandonoProcedimientoCircExt.getDNI() 
                    + ") (edad " + AbandonoProcedimientoCircExt.getEdad() 
                    + ") (relacionConVictima \"" + AbandonoProcedimientoCircExt.getRelacionConVictima() 
                    + "\") (rol \"" + AbandonoProcedimientoCircExt.getRol() 
                    + "\")))");                      
                clips.eval("(assert (victima (nombreApellido \"" + AbandonoVictima.getNombreApellido() 
                    + "\") (dni "  + AbandonoVictima.getDNI() 
                    + ") (edad " + AbandonoVictima.getEdad() 
                    + ") (estado \"" + AbandonoVictima.getEstado() 
                    + "\")))");   
                
            }
        }
        if (Index.getTipoDelito() == "Delito contra el honor") {
            if ((Index.getTipoDelitoContraElHonor() == "Ninguno (Acusado de injuria prueba la verdad de la imputacion)") 
                || (Index.getTipoDelitoContraElHonor() == "Injuria realizada por defensores ante los tribunales y no dada a publicidad")
                || (Index.getTipoDelitoContraElHonor() == "Injurias reciprocas")) {
                clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraElHonor() 
                    + "\")))");                     
            }
            if ((Index.getTipoDelitoContraElHonor() != "Ninguno (Acusado de injuria prueba la verdad de la imputacion)") 
                && (Index.getTipoDelitoContraElHonor() != "Injuria realizada por defensores ante los tribunales y no dada a publicidad")
                && (Index.getTipoDelitoContraElHonor() != "Injurias reciprocas")) {
                clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraElHonor() 
                    + "\") (circunstanciasExternasDeAtenuacion \"" + Index.getCircunstanciasExternasDeAtenuacion()
                    + "\")))");                     
            }                
            clips.eval("(assert (victimario (nombreApellido \"" + DelitoContraElHonorVictimarioVictima.getNombreApellidoVictimario() 
                + "\") (dni "  + DelitoContraElHonorVictimarioVictima.getDNIVictimario() 
                + ") (edad " + DelitoContraElHonorVictimarioVictima.getEdadVictimario() 
                + ") (rol \"" + DelitoContraElHonorVictimarioVictima.getRol() 
                + "\")))");                      
            clips.eval("(assert (victima (nombreApellido \"" + DelitoContraElHonorVictimarioVictima.getNombreApellidoVictima() 
                + "\") (dni "  + DelitoContraElHonorVictimarioVictima.getDNIVictima() 
                + ") (edad " + DelitoContraElHonorVictimarioVictima.getEdadVictima() 
                + ")))");              
        }

        if (Index.getTipoDelito() == "Delito contra la integridad sexual") {
            if (Index.getTipoDelitoContraLaIntegridadSexual() == "Abuso sexual") {
                clips.eval("(assert (caso (delito \"" + AbusoSexual.getDelito()
                    + "\") (procedimiento \""  + AbusoSexual.getProcedimiento()    
                    + "\") (circunstanciasExternasDeAtenuacion \""  + Index.getConsentimiento()
                    + "\") (cantidadVictimarios " + AbusoSexual.getCantidadVictimarios() 
                    + ")))");  
            clips.eval("(assert (victimario (nombreApellido \"" + AbusoSexualVictimarioVictima.getNombreApellidoVictimario() 
                + "\") (dni "  + AbusoSexualVictimarioVictima.getDNIVictimario() 
                + ") (edad " + AbusoSexualVictimarioVictima.getEdadVictimario() 
                + ") (rol \"" + AbusoSexualVictimarioVictima.getRol() 
                + "\")))");                      
            clips.eval("(assert (victima (nombreApellido \"" + AbusoSexualVictimarioVictima.getNombreApellidoVictima() 
                + "\") (dni "  + AbusoSexualVictimarioVictima.getDNIVictima() 
                + ") (edad " + AbusoSexualVictimarioVictima.getEdadVictima() 
                + ") (estado \"" + AbusoSexualVictimarioVictima.getEstado()
                + "\")))");  
            }
            if (Index.getTipoDelitoContraLaIntegridadSexual() == "Corrupcion de menores") {
                clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaIntegridadSexual() 
                    + "\") (procedimiento \""  + CorrupcionDeMenores.getProcedimiento() 
                    + "\")))");
                clips.eval("(assert (victimario (nombreApellido \"" + CorrupcionDeMenores.getNombreApellidoVictimario() 
                    + "\") (dni "  + CorrupcionDeMenores.getDNIVictimario() 
                    + ") (edad " + CorrupcionDeMenores.getEdadVictimario() 
                    + ") (relacionConVictima \"" + CorrupcionDeMenores.getRelacionConVictima() 
                    + "\") (rol \"" + CorrupcionDeMenores.getRol() 
                    + "\")))");                      
                clips.eval("(assert (victima (nombreApellido \"" + CorrupcionDeMenores.getNombreApellidoVictima() 
                    + "\") (dni "  + CorrupcionDeMenores.getDNIVictima() 
                    + ") (edad " + CorrupcionDeMenores.getEdadVictima() 
                    + ")))");                     
            }
            if ((Index.getTipoDelitoContraLaIntegridadSexual() == "Promocion o facilitacion de prostitucion / Proxenetismo agravado")
                || (Index.getTipoDelitoContraLaIntegridadSexual() == "Rufianeria")   ){
                    clips.eval("(assert (caso (delito \"" + Prostitucion.getTipoDelitoProstitucion() 
                        + "\") (procedimiento \""  + Prostitucion.getProcedimiento() 
                        + "\") (circunstanciasExternasDeAtenuacion \"" + Prostitucion.getCircunstanciasExternasDeAtenuacion() 
                        + "\")))");                         
                    clips.eval("(assert (victimario (nombreApellido \"" + Prostitucion.getNombreApellidoVictimario() 
                        + "\") (dni "  + Prostitucion.getDNIVictimario() 
                        + ") (edad " + Prostitucion.getEdadVictimario() 
                        + ") (relacionConVictima \"" + Prostitucion.getRelacionConVictima() 
                        + "\") (rol \"" + Prostitucion.getRol() 
                        + "\")))");                      
                    clips.eval("(assert (victima (nombreApellido \"" + Prostitucion.getNombreApellidoVictima() 
                        + "\") (dni "  + Prostitucion.getDNIVictima() 
                        + ") (edad " + Prostitucion.getEdadVictima() 
                        + ")))");                      
            }
            if (Index.getTipoDelitoContraLaIntegridadSexual() == "Difusion de imagenes y espectaculos pornograficos de menores") {
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaIntegridadSexual()
                        + "\") (procedimiento \""  + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getProcedimiento() 
                        + "\")))");                         
                    clips.eval("(assert (victimario (nombreApellido \"" + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getNombreApellidoVictimario() 
                        + "\") (dni "  + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getDNIVictimario() 
                        + ") (edad " + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getEdadVictimario() 
                        + ") (rol \"" + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getRol() 
                        + "\")))");                      
                    clips.eval("(assert (victima (nombreApellido \"" + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getNombreApellidoVictima() 
                        + "\") (dni "  + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getDNIVictima() 
                        + ") (edad " + DifusionDeImagenesYEspectaculosPornograficosDeMenores.getEdadVictima() 
                        + ")))");                   
            }
            if (Index.getTipoDelitoContraLaIntegridadSexual() == "Exhibiciones obscenas") {
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaIntegridadSexual()
                        + "\")))");                         
                    clips.eval("(assert (victimario (nombreApellido \"" + ExhibicionesObscenas.getNombreApellidoVictimario() 
                        + "\") (dni "  + ExhibicionesObscenas.getDNIVictimario() 
                        + ") (edad " + ExhibicionesObscenas.getEdadVictimario() 
                        + ") (rol \"" + ExhibicionesObscenas.getRol() 
                        + "\")))");                      
                    clips.eval("(assert (victima (nombreApellido \"" + ExhibicionesObscenas.getNombreApellidoVictima() 
                        + "\") (dni "  + ExhibicionesObscenas.getDNIVictima() 
                        + ") (edad " + ExhibicionesObscenas.getEdadVictima() 
                        + ")))");                  
            }
            if (Index.getTipoDelitoContraLaIntegridadSexual() == "Sustraccion o retencion de una persona con la intencion de menoscabar su integridad sexual") {
                clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaIntegridadSexual() 
                    + "\") (procedimiento \""  + SustraccionORetencionDeUnaPersona.getProcedimiento() 
                    + "\") (circunstanciasExternasDeAtenuacion \"" + SustraccionORetencionDeUnaPersona.getCircunstanciasExternasDeAtenuacion() 
                    + "\")))");  
                clips.eval("(assert (victimario (nombreApellido \"" + SustraccionORetencionDeUnaPersona.getNombreApellidoVictimario() 
                    + "\") (dni "  + SustraccionORetencionDeUnaPersona.getDNIVictimario() 
                    + ") (edad " + SustraccionORetencionDeUnaPersona.getEdadVictimario() 
                    + ") (rol \"" + SustraccionORetencionDeUnaPersona.getRol() 
                    + "\")))");                      
                clips.eval("(assert (victima (nombreApellido \"" + SustraccionORetencionDeUnaPersona.getNombreApellidoVictima() 
                    + "\") (dni "  + SustraccionORetencionDeUnaPersona.getDNIVictima() 
                    + ") (edad " + SustraccionORetencionDeUnaPersona.getEdadVictima() 
                    + ")))");                     
            }                
            if (Index.getTipoDelitoContraLaIntegridadSexual() == "Grooming") {
                    clips.eval("(assert (caso (delito \"" + Index.getTipoDelitoContraLaIntegridadSexual()
                        + "\")))");                         
                    clips.eval("(assert (victimario (nombreApellido \"" + Grooming.getNombreApellidoVictimario() 
                        + "\") (dni "  + Grooming.getDNIVictimario() 
                        + ") (edad " + Grooming.getEdadVictimario() 
                        + ") (rol \"" + Grooming.getRol() 
                        + "\")))");                      
                    clips.eval("(assert (victima (nombreApellido \"" + Grooming.getNombreApellidoVictima() 
                        + "\") (dni "  + Grooming.getDNIVictima() 
                        + ") (edad " + Grooming.getEdadVictima() 
                        + ")))");                     
            }
        }        
    }
           
    public void mostrarCondena () throws Exception {
             
            MultifieldValue mv = (MultifieldValue) clips.eval("(find-all-facts ((?c condena)) "
                    + "(or (eq ?c:tipoCondena \"Prision\")"
                    + " (eq ?c:tipoCondena \"Inhabilitacion especial\")"
                    + " (eq ?c:tipoCondena \"Inhabilitacion especial por el doble de tiempo que vaya a prision\")"
                    + " (eq ?c:tipoCondena \"No es punible\")"
                    + " (eq ?c:tipoCondena \"Prision (o multa de $1000 a $15000)\")"
                    + " (eq ?c:tipoCondena \"Prision (o multa de $3000)\")"
                    + " (eq ?c:tipoCondena \"Multa de $750 a $12500\")"
                    + " (eq ?c:tipoCondena \"Multa de $1000 a $15000\")"
                    + " (eq ?c:tipoCondena \"Multa de $1500 a $20000\")"
                    + " (eq ?c:tipoCondena \"Multa de $3000 a $30000\")"
                    + " (eq ?c:tipoCondena \"Acusado exento de pena\")"
                    + " (eq ?c:tipoCondena \"El ofendido puede pedirle al juez que ordene publicar la sentencia que condena a quien lo ofendio\")"
                    + " (eq ?c:tipoCondena \"Correccion disciplinaria correspondiente\")"
                    + " (eq ?c:tipoCondena \"Ambas partes quedan exentas de pena / Alguna de las partes queda exenta de pena\")"
                    + " (eq ?c:tipoCondena \"Inhabilitacion para el desempenio de cargos publicos\")"
                    + " ))");
            
            String articulo = ((FactAddressValue) mv.get(0)).getFactSlot("articulo").toString();    

            switch (articulo) {
                case "\"79\"":
                        articulo = "Artículo: 79";
                        break;   
                case "\"80\"":
                        articulo = "Artículo: 80";
                        break;   
                case "\"81\"":
                        articulo = "Artículo: 81";
                        break;   
                case "\"82\"":
                        articulo = "Artículo: 82";
                        break;   
                case "\"83\"":
                        articulo = "Artículo: 83";
                        break; 
                case "\"84\"":
                        articulo = "Artículo: 84";
                        break;   
                case "\"84bis\"":
                        articulo = "Artículo: 84 bis";
                        break;   
                case "\"85\"":
                        articulo = "Artículo: 85";
                        break;   
                case "\"86\"":
                        articulo = "Artículo: 86";
                        break;   
                case "\"8588\"":
                        articulo = "Artículos: 85 y 88";
                        break;   
                case "\"87\"":
                        articulo = "Artículo: 87";
                        break;   
                case "\"88\"":
                        articulo = "Artículo: 88";
                        break;   
                case "\"89\"":
                        articulo = "Artículo: 89";
                        break;   
                case "\"90\"":
                        articulo = "Artículo: 90";
                        break;   
                case "\"91\"":
                        articulo = "Artículo: 91";
                        break;   
                case "\"92\"":
                        articulo = "Artículo: 92";
                        break;   
                case "\"93\"":
                        articulo = "Artículo: 93";
                        break;   
                case "\"94\"":
                        articulo = "Artículo: 94";
                        break;   
                case "\"94bis\"":
                        articulo = "Artículo: 94 bis";
                        break;   
                case "\"95\"":
                        articulo = "Artículo: 95";
                        break;           
                case "\"96\"":
                        articulo = "Artículo: 96";
                        break;           
                case "\"97\"":
                        articulo = "Artículo: 97";
                        break;           
                case "\"98\"":
                        articulo = "Artículo: 98";
                        break; 
                case "\"99\"":
                        articulo = "Artículo: 99";
                        break;           
                case "\"100\"":
                        articulo = "Artículo: 100";
                        break;           
                case "\"101\"":
                        articulo = "Artículo: 101";
                        break;   
                case "\"102\"":
                        articulo = "Artículo: 102";
                        break;   
                case "\"103\"":
                        articulo = "Artículo: 103";
                        break;           
                case "\"97hasta103\"":
                        articulo = "Artículos: 97 hasta 103";
                        // El victimario no es punible ya que no cumple las situaciones establecidas por los articulos 97, 98, 99, 100, 101, 102 y 103
                        break;
                case "\"104\"":
                        articulo = "Artículo: 104";
                        break;          
                case "\"105\"":
                        articulo = "Artículo: 105";
                        break;
                case "\"106\"":
                        articulo = "Artículo: 106";
                        break;          
                case "\"107\"":
                        articulo = "Artículo: 107";
                        break;          
                case "\"108\"":
                        articulo = "Artículo: 108";
                        break;          
                case "\"109\"":
                        articulo = "Artículo: 109";
                        break;   
                case "\"110\"":
                        articulo = "Artículo: 110";
                        break; 
                case "\"111\"":
                        articulo = "Artículo: 111";
                        break;          
                case "\"113114\"":
                        articulo = "Artículos: 113 y 114";
                        break;          
                case "\"115\"":
                        articulo = "Artículo: 115";
                        break;
                case "\"116\"":
                        articulo = "Artículo: 116";
                        break;          
                case "\"117\"":
                        articulo = "Artículo: 117";
                        break;          
                case "\"117bis\"":
                        articulo = "Artículo: 117 bis";
                        break;     
                case "\"119\"":
                        articulo = "Artículo: 119";
                        break;          
                case "\"120\"":
                        articulo = "Artículo: 120";
                        break;          
                case "\"124\"":
                        articulo = "Artículo: 124";
                        break;          
                case "\"125\"":
                        articulo = "Artículo: 125";
                        break;  
                case "\"125bis127\"":
                        articulo = "Artículos: 125 bis y 127";
                        break;          
                case "\"126127\"":
                        articulo = "Artículos: 126 y 127";
                        break;  
                case "\"128\"":
                        articulo = "Artículo: 128";
                        break;  
                case "\"129\"":
                        articulo = "Artículo: 129";
                        break;  
                case "\"130\"":
                        articulo = "Artículo: 130";
                        break;
                case "\"131\"":
                        articulo = "Artículo: 131";
                        break;          
            }            

            
            for (int i = 0; ((FactAddressValue) mv.get(i)).getFactSlot("tipoCondena").toString() != ""; i++ ) {
                String dni = ((FactAddressValue) mv.get(i)).getFactSlot("dni").toString();
                String tipoCondena = ((FactAddressValue) mv.get(i)).getFactSlot("tipoCondena").toString();
                String tiempo = "";
                String añosMin = ((FactAddressValue) mv.get(i)).getFactSlot("aniosMin").toString();
                String mesesMin = ((FactAddressValue) mv.get(i)).getFactSlot("mesesMin").toString();
                String diasMin = ((FactAddressValue) mv.get(i)).getFactSlot("diasMin").toString();
                String añosMax = ((FactAddressValue) mv.get(i)).getFactSlot("aniosMax").toString();
                String mesesMax = ((FactAddressValue) mv.get(i)).getFactSlot("mesesMax").toString();
                String diasMax = ((FactAddressValue) mv.get(i)).getFactSlot("diasMax").toString();
    
                System.out.println(dni + " " + tipoCondena + " años min: " + añosMin + " , años max: " + añosMax);

                tiempo = calcularStringTiempo(añosMin, mesesMin, diasMin, añosMax, mesesMax, diasMax);
                
                switch (tipoCondena) {
                    case "\"Prision\"":
                        tipoCondena = "Condena: Prisión";
                        break;   
                    case "\"Inhabilitacion especial\"":
                        tipoCondena = "Condena: Inhabilitación especial";
                        break;
                    case "\"Inhabilitacion especial por el doble de tiempo que vaya a prision\"":
                        tipoCondena = "Condena: Inhabilitación especial por el doble de tiempo que vaya a prisión";
                        tiempo = "-";
                        break;
                    case "\"No es punible\"":
                        tipoCondena = "No es punible";
                        break;
                    case "\"Prision (o multa de $1000 a $15000)\"":
                        tipoCondena = "Condena: Multa de $1000 a $15000 o prisión";
                        break;
                    case "\"Prision (o multa de $3000)\"":
                        tipoCondena = "Condena: Multa de $3000 o prisión";
                        break;
                    case "\"Multa de $750 a $12500\"":
                        tipoCondena = "Condena: Multa de $750 a $12500";
                        break;
                    case "\"Multa de $1000 a $15000\"":
                        tipoCondena = "Condena: Multa de $1000 a $15000";
                        break;
                    case "\"Multa de $1500 a $20000\"":
                        tipoCondena = "Condena: Multa de $1500 a $20000";
                        break;
                    case "\"Multa de $3000 a $30000\"":
                        tipoCondena = "Condena: Multa de $3000 a $30000";
                        break;
                    case "\"Acusado exento de pena\"":
                        tipoCondena = "Acusado exento de pena";
                        break;
                    case "\"El ofendido puede pedirle al juez que ordene publicar la sentencia que condena a quien lo ofendio\"":
                        tipoCondena = "El ofendido puede pedir la publicación de la sentencia que condena a quien lo ofendió";
                        break;
                    case "\"Correccion disciplinaria correspondiente\"":
                        tipoCondena = "Condena: Correccion disciplinaria correspondiente";
                        break;
                    case "\"Ambas partes quedan exentas de pena / Alguna de las partes queda exenta de pena\"":
                        tipoCondena = "Ambas partes o alguna de las partes queda exenta de pena";
                        break;
                    case "\"Inhabilitacion para el desempenio de cargos publicos\"":
                        tipoCondena = "Condena: Inhabilitación para el desempeño de cargos públicos";
                        break;
                }     

                if (i == 0) {
                    jLabelArticulo.setText(articulo);
                    jLabelDNI1.setText("DNI: " + dni);
//                    tipoCondena = "El ofendido puede pedir la publicación de la sentencia que condena a quien lo ofendió";
//                    jLabelCondena1.setText(tipoCondena);
                    if (tiempo.compareTo("-") == 0) {
                        jLabelCondena1.setText(tipoCondena);
                    }
                    if (tiempo != "-") {
                        jLabelCondena1.setText(tipoCondena + " (" + tiempo + ")");                        
                    }
                }
                if (i == 1) {
                    mostrarCondena2(true);
                    jLabelDNI2.setText("DNI: " + dni);
                    if (tiempo.compareTo("-") == 0) {
                        jLabelCondena2.setText(tipoCondena);
                    }
                    if (tiempo != "-") {
                        jLabelCondena2.setText(tipoCondena + " (" + tiempo + ")");                        
                    }
                }
                if (i == 2) {
                    mostrarCondena3(true);
                    jLabelDNI3.setText("DNI: " + dni);
                    if (tiempo.compareTo("-") == 0) {
                        jLabelCondena3.setText(tipoCondena);
                    }
                    if (tiempo != "-") {
                        jLabelCondena3.setText(tipoCondena + " (" + tiempo + ")");                         
                    }
                }
                if (i == 3) {
                    mostrarCondena4(true);
                    jLabelDNI4.setText("DNI: " + dni);
                    if (tiempo.compareTo("-") == 0) {
                        jLabelCondena4.setText(tipoCondena);
                    }
                    if (tiempo != "-") {
                        jLabelCondena4.setText(tipoCondena + " (" + tiempo + ")");                         
                    }
                }
            }
      
            // EL VACIO LO CARGA COMO: nil  - un numero como el numero solo sin comillas - un string con las comillas
    }        
            
    public Condena () {
        clips = new Environment();
        initComponents();
        this.setLocationRelativeTo(null);  // Se ejecuta en el medio de la pantalla

        mostrarCondena2(false);
        mostrarCondena3(false);
        mostrarCondena4(false);
                
        clips.load("reglas.CLP");
        clips.reset();
        
        asignarDatos();
        
        clips.run();

        System.out.println(clips.eval("(facts)"));
        System.out.println("------------------------------------------------------------------");

        try {
            mostrarCondena();
        }
        catch(Exception e) {}
    }

    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        bindingGroup = new org.jdesktop.beansbinding.BindingGroup();

        jButtonSalir = new javax.swing.JButton();
        jButtonDetalles = new javax.swing.JButton();
        jLabelTitulo = new javax.swing.JLabel();
        jLabelDetalles = new javax.swing.JLabel();
        jLabelDegrade = new javax.swing.JLabel();
        jLabelLogoUNLa = new javax.swing.JLabel();
        jLabelArticulo = new javax.swing.JLabel();
        jLabelDNI1 = new javax.swing.JLabel();
        jLabelCondena1 = new javax.swing.JLabel();
        jLabelDNI2 = new javax.swing.JLabel();
        jLabelCondena2 = new javax.swing.JLabel();
        jLabelCondena3 = new javax.swing.JLabel();
        jLabelDNI3 = new javax.swing.JLabel();
        jLabelCondena4 = new javax.swing.JLabel();
        jLabelDNI4 = new javax.swing.JLabel();
        jLabelFondo = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        org.jdesktop.beansbinding.Binding binding = org.jdesktop.beansbinding.Bindings.createAutoBinding(org.jdesktop.beansbinding.AutoBinding.UpdateStrategy.READ_WRITE, this, org.jdesktop.beansbinding.ELProperty.create("TFL"), this, org.jdesktop.beansbinding.BeanProperty.create("title"));
        bindingGroup.addBinding(binding);

        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jButtonSalir.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jButtonSalir.setText("Salir");
        jButtonSalir.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jButtonSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSalirActionPerformed(evt);
            }
        });
        getContentPane().add(jButtonSalir, new org.netbeans.lib.awtextra.AbsoluteConstraints(700, 670, 110, 50));

        jButtonDetalles.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jButtonDetalles.setText("Detalles");
        jButtonDetalles.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jButtonDetalles.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDetallesActionPerformed(evt);
            }
        });
        getContentPane().add(jButtonDetalles, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 670, 110, 50));

        jLabelTitulo.setFont(new java.awt.Font("Calibri", 2, 16)); // NOI18N
        jLabelTitulo.setForeground(new java.awt.Color(255, 255, 255));
        jLabelTitulo.setText("DETERMINADOR DE SANCIONES PARA DELITOS CONTRA LAS PERSONAS, EL HONOR Y LA INTEGRIDAD SEXUAL");
        getContentPane().add(jLabelTitulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 17, 730, 20));

        jLabelDetalles.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelDetalles.setText("Detalles de la condena");
        getContentPane().add(jLabelDetalles, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 80, -1, 20));

        jLabelDegrade.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelDegrade.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade1.png"))); // NOI18N
        getContentPane().add(jLabelDegrade, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 70, 840, 40));

        jLabelLogoUNLa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/IconUNLa30x30.png"))); // NOI18N
        jLabelLogoUNLa.setText("jLabel1");
        getContentPane().add(jLabelLogoUNLa, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 30, -1));

        jLabelArticulo.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelArticulo.setForeground(new java.awt.Color(255, 255, 255));
        jLabelArticulo.setText("Artículo:");
        getContentPane().add(jLabelArticulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 140, 640, 30));

        jLabelDNI1.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelDNI1.setForeground(new java.awt.Color(255, 255, 255));
        jLabelDNI1.setText("DNI:");
        getContentPane().add(jLabelDNI1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 190, 640, 30));

        jLabelCondena1.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelCondena1.setForeground(new java.awt.Color(255, 255, 255));
        jLabelCondena1.setText("Condena:");
        getContentPane().add(jLabelCondena1, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 220, 740, 30));

        jLabelDNI2.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelDNI2.setForeground(new java.awt.Color(255, 255, 255));
        jLabelDNI2.setText("DNI:");
        getContentPane().add(jLabelDNI2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 270, 640, 30));

        jLabelCondena2.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelCondena2.setForeground(new java.awt.Color(255, 255, 255));
        jLabelCondena2.setText("Condena:");
        getContentPane().add(jLabelCondena2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 300, 740, 30));

        jLabelCondena3.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelCondena3.setForeground(new java.awt.Color(255, 255, 255));
        jLabelCondena3.setText("Condena:");
        getContentPane().add(jLabelCondena3, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 380, 740, 30));

        jLabelDNI3.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelDNI3.setForeground(new java.awt.Color(255, 255, 255));
        jLabelDNI3.setText("DNI:");
        getContentPane().add(jLabelDNI3, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 350, 640, 30));

        jLabelCondena4.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelCondena4.setForeground(new java.awt.Color(255, 255, 255));
        jLabelCondena4.setText("Condena:");
        getContentPane().add(jLabelCondena4, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 460, 740, 30));

        jLabelDNI4.setFont(new java.awt.Font("Calibri", 1, 18)); // NOI18N
        jLabelDNI4.setForeground(new java.awt.Color(255, 255, 255));
        jLabelDNI4.setText("DNI:");
        getContentPane().add(jLabelDNI4, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 430, 640, 30));

        jLabelFondo.setForeground(new java.awt.Color(255, 255, 255));
        jLabelFondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Fondo.jpg"))); // NOI18N
        getContentPane().add(jLabelFondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 840, 740));

        bindingGroup.bind();

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSalirActionPerformed
        System.exit(0);
    }//GEN-LAST:event_jButtonSalirActionPerformed

    private void jButtonDetallesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDetallesActionPerformed
        if (jLabelArticulo.getText().compareTo("Artículo: 80") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 80 \n"
                + "Se impondrá reclusión perpetua o prisión perpetua, pudiendo aplicarse lo dispuesto en el artículo 52, al que matare: \n"
                + "1º A su ascendiente, descendiente, cónyuge, ex cónyuge, o a la persona con quien mantiene o ha mantenido una relación de pareja, mediare o no convivencia. (inciso sustituido por art. 1° de la Ley N° 26.791 B.O. 14/12/2012) \n"
                + "2º Con ensañamiento, alevosía, veneno u otro procedimiento insidioso.\n"
                + "3º Por precio o promesa remuneratoria.\n"
                + "4º Por placer, codicia, odio racial, religioso, de género o a la orientación sexual, identidad de género o su expresión. (inciso sustituido por art. 1° de la Ley N° 26.791 B.O. 14/12/2012)\n"
                + "5º Por un medio idóneo para crear un peligro común.\n"
                + "6º Con el concurso premeditado de dos o más personas.\n"
                + "7º Para preparar, facilitar, consumar u ocultar otro delito o para asegurar sus resultados o procurar la impunidad para sí o para otro o por no haber logrado el fin propuesto al intentar otro delito.\n"
                + "8° A un miembro de las fuerzas de seguridad pública, policiales o penitenciarias, por su función, cargo o condición. (Inciso incorporado por art. 1° de la Ley N° 25.601 B.O.11/6/2002)\n"
                + "9° Abusando de su función o cargo, cuando fuere miembro integrante de las fuerzas de seguridad, policiales o del servicio penitenciario. (Inciso incorporado por art. 1° de la Ley N° 25.816 B.O.9/12/2003)\n"
                + "10 A su superior militar frente a enemigo o tropa formada con armas. (Inciso incorporado por art. 2° del Anexo I de la Ley N° 26.394 B.O. 29/8/2008. Vigencia: comenzará a regir a los SEIS (6) meses de su promulgación.\n"
                + "Durante dicho período se llevará a cabo en las áreas pertinentes un programa de divulgación y capacitación sobre su contenido y aplicación)\n"
                + "11. A una mujer cuando el hecho sea perpetrado por un hombre y mediare violencia de género. (inciso incorporado por art. 2° de la Ley N° 26.791 B.O. 14/12/2012)\n"
                + "12. Con el propósito de causar sufrimiento a una persona con la que se mantiene o ha mantenido una relación en los términos del inciso 1°. (inciso incorporado por art. 2° de la Ley N° 26.791 B.O. 14/12/2012)\n"
                + "Cuando en el caso del inciso 1° de este artículo, mediaren circunstancias extraordinarias de atenuación, el juez podrá aplicar prisión o reclusión de ocho (8) a veinticinco (25) años. Esto no será aplicable a quien\n"
                + "anteriormente hubiera realizado actos de violencia contra la mujer víctima. (Párrafo sustituido por art. 3° de la Ley N° 26.791 B.O. 14/12/2012)\n"
            );        
        }

        if (jLabelArticulo.getText().compareTo("Artículo: 81") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 81 \n"
                + "1º Se impondrá reclusión de tres a seis años, o prisión de uno a tres años:\n"
                + "a) Al que matare a otro, encontrándose en un estado de emoción violenta y que las\n"
                + "circunstancias hicieren excusable.\n"
                + "b) Al que, con el propósito de causar un daño en el cuerpo o en la salud, produjere\n"
                + "la muerte de alguna persona, cuando el medio empleado no debía razonablemente ocasionar la muerte.\n"
                + "2º (Inciso derogado por art. 1° de la Ley N° 24.410 B.O. 2/1/1995)\n"
            );        
        }

        if (jLabelArticulo.getText().compareTo("Artículo: 82") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 82 \n"
                + "Cuando en el caso del inciso 1º del artículo 80 concurriese alguna de las circunstancias del\n"
                + "inciso 1º del artículo anterior, la pena será de reclusión o prisión de diez a veinticinco años.\n"
            );        
        }

        if (jLabelArticulo.getText().compareTo("Artículo: 83") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 83\n"
                + "Será reprimido con prisión de uno a cuatro años, el que instigare a otro al\n"
                + "suicidio o leayudare a cometerlo, si el suicidio se hubiese tentado o consumado.\n"
            );        
        }          
        
        if (jLabelArticulo.getText().compareTo("Artículo: 84") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 84 \n"
                + "Será reprimido con prisión de uno (1) a cinco (5) años e inhabilitación especial, en su caso,\n"
                + "por cinco (5) a diez (10) años el que por imprudencia, negligencia, impericia en su arte o\n"
                + "profesión o inobservancia de los reglamentos o de los deberes a su cargo causare a otro la muerte.\n"
                + "El mínimo de la pena se elevará a dos (2) años si fueren más de una las víctimas fatales.\n"
                + "(Artículo sustituido por art. 1° de la Ley N° 27.347 B.O. 6/1/2017).\n"
            );        
        }

        if (jLabelArticulo.getText().compareTo("Artículo: 84 bis") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 84 bis\n"
                + "Será reprimido con prisión de dos (2) a cinco (5) años e inhabilitación especial, en su caso,por cinco (5)\n"
                + "a diez (10) años el que por la conducción imprudente, negligente o antirreglamentaria de un vehículo con\n"
                + "motor causare a otro la muerte.\n"
                + "La pena será de prisión de tres (3) a seis (6) años, si se diera alguna de las circunstancias previstas en\n"
                + "el párrafo anterior y el conductor se diere a la fuga o no intentase socorrer a la víctima siempre y cuando\n"
                + "no incurriere en la conducta prevista en el artículo 106, o estuviese bajo los efectos de estupefacientes o\n"
                + "con un nivel de alcoholemia igual o superior a quinientos (500) miligramos por litro de sangre en el caso de\n"
                + "conductores de transporte público o un (1) gramo por litro de sangre en los demás casos, o estuviese \n"
                + "conduciendo en exceso de velocidad de más de treinta (30) kilómetros por encima de la máxima permitida\n"
                + "en el lugar del hecho, o si condujese estando inhabilitado para hacerlo por autoridad competente, o violare la\n"
                + "señalización del semáforo o las señales de tránsito que indican el sentido de circulación vehicular o cuando\n"
                + "se dieren las circunstancias previstas en el artículo 193 bis, o con culpa temeraria, o cuando fueren más de\n"
                + "una las víctimas fatales.\n"
                + "(Artículo incorporado por art. 2° de la Ley N° 27.347 B.O. 6/1/2017).\n"
            );        
        }

        if (jLabelArticulo.getText().compareTo("Artículo: 85") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 85\n"
                +" El que causare un aborto será reprimido:\n"
                + "1º Con reclusión o prisión de tres a diez años, si obrare sin consentimiento de la mujer.\n"
                + "Esta pena podráelevarse hasta quince años, si el hecho fuere seguido de la muerte de la mujer.\n"
                + "2º Con reclusión o prisión de uno a cuatro años, si obrare con consentimiento de la mujer.\n"
                + "El máximum de la pena se elevará a seis años, si el hecho fuere seguido de la muerte de la mujer.\n" 
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículo: 86") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 86\n"
                + "Incurrirán en las penas establecidas en el artículo anterior y sufrirán, además, inhabilitación especial\n"
                + "por doble tiempo que el de la condena, los médicos, cirujanos, parteras o farmacéuticos que abusaren\n"
                + "de su ciencia o arte para causar el aborto o cooperaren a causarlo.\n"
                + "El aborto practicado por un médico diplomado con el consentimiento de la mujer encinta, no es punible:\n"
                + "1º Si se ha hecho con el fin de evitar un peligro para la vida o la salud de la madre y si este peligro\n"
                + "no puede ser evitado por otros medios.\n"
                + "2º Si el embarazo proviene de una violación o de un atentado al pudor cometido sobre una mujer idiota o\n"
                + "demente. En este caso, el consentimiento de su representante legal deberá ser requerido para el aborto.\n"
            );        
        }  

        if (jLabelArticulo.getText().compareTo("Artículo: 87") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 87\n"
                + "Será reprimido con prisión de seis meses a dos años, el que con violencia causare un aborto sin haber\n"
                + "tenido el propósito de causarlo, si el estado de embarazo de la paciente fuere notorio o le constare.\n"
            );        
        } 

        if (jLabelArticulo.getText().compareTo("Artículo: 88") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 88\n"
                + "Será reprimida con prisión de uno a cuatro años, la mujer que causare su propio aborto\n"
                + "o consintiere en que otro se lo causare. La tentativa de la mujer no es punible.\n"
            );        
        } 
        
        if (jLabelArticulo.getText().compareTo("Artículos: 85 y 88") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 85\n"
                +" El que causare un aborto será reprimido:\n"
                + "1º Con reclusión o prisión de tres a diez años, si obrare sin consentimiento de la mujer. Esta\n"
                + "pena podráelevarse hasta quince años, si el hecho fuere seguido de la muerte de la mujer.\n"
                + "2º Con reclusión o prisión de uno a cuatro años, si obrare con consentimiento de la mujer.\n"
                + "El máximum de la pena se elevará a seis años, si el hecho fuere seguido de la muerte de\n"
                + "la mujer.\n"
                + "\n"    
                + "ARTÍCULO 88\n"
                + "Será reprimida con prisión de uno a cuatro años, la mujer que causare su propio aborto o\n"
                + "consintiere en que otro se lo causare. La tentativa de la mujer no es punible.\n"                    
            );        
        }         
        
        if (jLabelArticulo.getText().compareTo("Artículo: 89") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 89\n"
                + "Se impondrá prisión de un mes a un año, al que causare a otro, en el cuerpo o\n"
                + "en la salud, un daño que no esté previsto en otra disposición de este código.\n"
            );        
        }         

        if (jLabelArticulo.getText().compareTo("Artículo: 90") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 90\n"
                + "Se impondrá reclusión o prisión de uno a seis años, si la lesión produjere una\n"
                + "debilitación permanente de la salud, de un sentido, de un órgano, de un miembro\n"
                + "o una dificultad permanente de la palabra o si hubiere puesto en peligro la vida\n"
                + "del ofendido, le hubiere inutilizado para el trabajo por más de un mes o le hubiere\n"
                + "causado una deformación permanente del rostro.\n"
            );        
        }         

        if (jLabelArticulo.getText().compareTo("Artículo: 91") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 91\n"
                + "Se impondrá reclusión o prisión de tres a diez años, si la lesión produjere una enfermedad\n"
                + "mental o corporal, cierta o probablemente incurable, la inutilidad permanente para el trabajo,\n"
                + "la pérdida de un sentido, de un órgano, de un miembro, del uso de un órgano o miembro, de\n"
                + "la palabra o de la capacidad de engendrar o concebir.\n"
            );        
        }       

        if (jLabelArticulo.getText().compareTo("Artículo: 92") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 92\n"
                + "Si concurriere alguna de las circunstancias enumeradas en el artículo 80, la pena será:\n"
                + "en el caso del artículo 89, de seis meses a dos años; en el caso del artículo 90, de tres\n"
                + "a diez años; y en el caso del artículo 91, de tres a quince años.\n"
            );        
        }             

        if (jLabelArticulo.getText().compareTo("Artículo: 93") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 93\n"
                + "Si concurriere la circunstancia enunciada en el inciso 1º letra a) del artículo 81, la pena será:\n"
                + "en el caso del artículo 89, de quince días a seis meses; en el caso del artículo 90, de seis\n"
                + "meses a tres años; y en el caso del artículo 91, de uno a cuatro años.\n"
            );        
        }  

        if (jLabelArticulo.getText().compareTo("Artículo: 94") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 94\n"
                + "Se impondrá prisión de un (1) mes a tres (3) años o multa de mil (1.000) a quince mil (15.000) pesos e\n"
                + "inhabilitación especial por uno (1) a cuatro (4) años, el que por imprudencia o negligencia, por impericia\n"
                + "en su arte o profesión, o por inobservancia de los reglamentos o deberes a su cargo, causare a otro un\n"
                + "daño en el cuerpo o en la salud.\n"
                + "Si las lesiones fueran de las descriptas en los artículos 90 o 91 y fueren más de una las víctimas,\n"
                + "lesionadas, el mínimo de la pena prevista en el primer párrafo, será de seis (6) meses o multa de tres\n"
                + "mil (3.000) pesos e inhabilitación especial por dieciocho (18) meses.\n"
                + "(Artículo sustituido por art. 3° de la Ley N° 27.347 B.O. 6/1/2017).\n"
            );        
        }  

        if (jLabelArticulo.getText().compareTo("Artículo: 94 bis") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 94 bis\n"
                + "Será reprimido con prisión de uno (1) a tres (3) años e inhabilitación especial por dos (2) a cuatro (4) años, si las\n"
                + "lesiones de los artículos 90 o 91 fueran ocasionadas por la conducción imprudente, negligente o antirreglamentaria\n"
                + "de un vehículo con motor.\n"
                + "La pena será de dos (2) a cuatro (4) años de prisión si se verificase alguna de las circunstancias previstas en el\n"
                + "párrafo anterior y el conductor se diese a la fuga, o no intentare socorrer a la víctima siempre y cuando no incurriera\n"
                + "en la conducta prevista en el artículo 106, o estuviese bajo los efectos de estupefacientes o con un nivel de\n"
                + "alcoholemia igual o superior a quinientos (500) miligramos por litro de sangre en el caso de conductores de\n"
                + "transporte público o un (1) gramo por litro de sangre en los demás casos, o estuviese conduciendo en exceso de\n"
                + "velocidad de más de treinta (30) kilómetros por encima de la máxima permitida en el lugar del hecho, o si condujese\n"
                + "estando inhabilitado para hacerlo por autoridad competente, o violare la señalización del semáforo o las señales de\n"
                + "tránsito que indican el sentido de circulación vehicular, o cuando se dieren las circunstancias previstas en el artículo\n"
                + "193 bis, o con culpa temeraria, o cuando fueren más de una las víctimas lesionadas.\n"
                + "(Artículo incorporado por art. 4° de la Ley N° 27.347 B.O. 6/1/2017).\n"
            );        
        }  

        if (jLabelArticulo.getText().compareTo("Artículo: 95") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 95\n"
                + "Cuando en riña o agresión en que tomaren parte más de dos personas, resultare muerte o lesiones\n"
                + "de las determinadas en los artículos 90 y 91, sin que constare quiénes las causaron, se tendrá por\n"
                + "autores a todos los que ejercieron violencia sobre la persona del ofendido y se aplicará reclusión o\n"
                + "prisión de dos a seis años en caso de muerte y de uno a cuatro en caso de lesión.\n"
            );        
        }  

        if (jLabelArticulo.getText().compareTo("Artículo: 96") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 96\n"
                + "Si las lesiones fueren las previstas en el artículo 89, la pena\n"
                + "aplicable será de cuatro a ciento veinte días de prisión.\n"
            );        
        }  

        if (jLabelArticulo.getText().compareTo("Artículo: 97") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 97\n"
                + "Los que se batieren en duelo, con intervención de dos o más padrinos, mayores de edad,\n"
                + "que elijan las armas y arreglen las demás condiciones del desafío, serán reprimidos:\n"
                + "1º Con prisión de uno a seis meses, al que no infiriere lesión a su adversario o sólo le\n"
                + "causare una lesión de las determinadas en el artículo 89.\n"
                + "2º Con prisión de uno a cuatro años, al que causare la muerte de su adversario o le\n"
                + "infiriere lesión de las determinadas en los artículos 90 y 91.\n"
            );        
        } 

        if (jLabelArticulo.getText().compareTo("Artículo: 98") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 98\n"
                + "Los que se batieren, sin la intervención de padrinos, mayores de edad, que elijan\n"
                + "las armas y arreglen las demás condiciones del desafío, serán reprimidos:\n"
                + "1º El que matare a su adversario, con la pena señalada para el homicida;\n"
                + "2º El que causare lesiones, con la pena señalada para el autor de lesiones;\n"
                + "3º El que no causare lesiones, con prisión de un mes a un año.\n"
            );        
        } 

        if (jLabelArticulo.getText().compareTo("Artículo: 99") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 99\n"
                + "El que instigare a otro a provocar o a aceptar un duelo y el que desacreditare públicamente a otro por no desafiar\n"
                + "o por rehusar un desafío, serán reprimidos:\n"
                + "1 Con multa de pesos mil a pesos quince mil si el duelo no se realizare o si realizándose, no se produjere muerte\n"
                + "ni lesiones o sólo lesiones de las comprendidas en el artículo 89. (Nota Infoleg: multa actualizada por art. 1° de la\n"
                + "Ley N° 24.286 B.O. 29/12/1993)\n"
                + "2 Con prisión de uno a cuatro años, si se causare muerte o lesiones de las mencionadas en los artículos 90 y 91.\n"
            );        
        } 

        if (jLabelArticulo.getText().compareTo("Artículo: 100") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 100\n"
                + "El que provocare o diere causa a un desafío, proponiéndose un interés pecuniario u otro objeto inmoral, será reprimido:\n"
                + "1º Con prisión de uno a cuatro años, si el duelo no se verificare o si efectuándose, no resultare muerte ni lesiones.\n"
                + "2 Con reclusión o prisión de tres a diez años, si el duelo se realizare y resultaren lesiones;\n"
                + "3 Con reclusión o prisión de diez a veinticinco años, si se produjere la muerte.\n"
            );        
        } 

        if (jLabelArticulo.getText().compareTo("Artículo: 101") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 101\n"
                + "El combatiente que faltare, en daño de su adversario, a las condiciones ajustadas por los padrinos, será reprimido:\n"
                + "1º Con reclusión o prisión de tres a diez años, si causare lesiones a su adversario.\n"
                + "2º Con reclusión o prisión de diez a veinticinco años, si le causare la muerte.\n"
            );        
        } 

        if (jLabelArticulo.getText().compareTo("Artículo: 102") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 102\n"
                + "Los padrinos de un duelo que usaren cualquier género de alevosía en la ejecución del mismo, serán reprimidos\n"
                + "con las penas señaladas en el artículo anterior, según fueren las consecuencias que resultaren.\n"
            );        
        } 
        
        if (jLabelArticulo.getText().compareTo("Artículo: 103") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 103\n"
                + "Cuando los padrinos concertaren un duelo a muerte o en condiciones tales que de ellas debiere resultar\n"
                + "la muerte, serán reprimidos con reclusión o prisión de uno a cuatro años, si se verificare la muerte de\n"
                + "alguno de los combatientes. Si no se verificare la muerte de alguno de ellos, la pena será de multa de\n"
                + "pesos mil a pesos quince mil.\n"
                + "(Nota Infoleg: multa actualizada por art. 1° de la Ley N°24.286 B.O. 29/12/1993)\n"
            );        
        } 
        
        if (jLabelArticulo.getText().compareTo("Artículos: 97 hasta 103") == 0) {
            JOptionPane.showMessageDialog(null, "Según lo establecido en los Artículos 97, 98, 99, 100, 101, 102 y 103:\n"
                + "No se concretó el duelo, por lo tanto, no se establece condena para esta situación.\n"
            );        
        } 

        if (jLabelArticulo.getText().compareTo("Artículo: 104") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 104\n"
                + "Será reprimido con uno a tres años de prisión, el que disparare un arma de fuego contra una persona sin herirla.\n"
                + "Esta pena se aplicará aunque se causare herida a que corresponda pena menor, siempre que el hecho no importe\n"
                + "un delito más grave.\n"
                + "Será reprimida con prisión de quince días a seis meses, la agresión con toda arma, aunque no se causare herida\n"
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículo: 105") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 105\n"
                + "Si concurriera alguna de las circunstancias previstas en los artículos 80 y 81, inciso \n"
                + "1º, letra a), la pena se aumentará o disminuirá en un tercio respectivamente.\n"
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículo: 106") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 106\n"
                + "El que pusiere en peligro la vida o la salud de otro, sea colocándolo en situación de\n"
                + "desamparo, sea abandonando a su suerte a una persona incapaz de valerse y a la\n"
                + "que deba mantener o cuidar o a la que el mismo autor haya incapacitado, será\n"
                + "reprimido con prisión de 2 a 6 años.\n"
                + "La pena será de reclusión o prisión de 3 a 10 años, si a consecuencia del abandono\n"
                + "resultare grave daño en el cuerpo o en la salud de la víctima.\n"
                + "Si ocurriere la muerte, la pena será de 5 a 15 años de reclusión o prisión.\n"
                + "(Artículo sustituido por art. 2° de la Ley N° 24.410 B.O. 2/1/1995)\n"
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículo: 107") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 107\n"
                + "El máximum y el mínimum de las penas establecidas en el artículo precedente, serán aumentados en un tercio\n"
                + "cuando el delito fuera cometido por los padres contra sus hijos y por éstos contra aquéllos o por el cónyuge.\n"
                + "(Artículo sustituido por art. 1° de la Ley N° 24.410 B.O. 2/1/1995)\n"
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículo: 108") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 108\n"
                + "Será reprimido con multa de pesos setecientos cincuenta a pesos doce mil quinientos el que encontrando perdido\n"
                + "o desamparado a un menor de diez años o a una persona herida o inválida o amenazada de un peligro cualquiera;\n"
                + "omitiere prestarle el auxilio necesario, cuando pudiere hacerlo sin riesgo personal o no diere aviso inmediatamente\n"
                + "a la autoridad.\n"
                + "(Nota Infoleg: multa actualizada por art. 1° de la Ley N° 24.286 B.O. 29/12/1993)\n"
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículo: 109") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 109\n"
                + "La calumnia o falsa imputación a una persona física determinada de la comisión de un delito concreto y\n"
                + "circunstanciado que dé lugar a la acción pública, será reprimida con multa de pesos tres mil ($ 3.000.-)\n"
                + "a pesos treinta mil ($ 30.000.-). En ningún caso configurarán delito de calumnia las expresiones referidas\n"
                + "a asuntos de interés público o las que no sean asertivas.\n"
                + "(Artículo sustituido por art. 1° de la Ley N° 26.551 B.O. 27/11/2009)\n"
            );        
        }        
        
        if (jLabelArticulo.getText().compareTo("Artículo: 110") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 110\n"
                + "El que intencionalmente deshonrare o desacreditare a una persona física determinada será reprimido con multa\n"
                + "de pesos mil quinientos ($ 1.500.-) a pesos veinte mil ($ 20.000.-). En ningún caso configurarán delito de injurias\n"
                + "las expresiones referidas a asuntos de interés público o las que no sean asertivas. Tampoco configurarán\n"
                + "delito de injurias los calificativos lesivos del honor cuando guardasen relación con un asunto de interés público\n"
                + "(Artículo sustituido por art. 2° de la Ley N° 26.551 B.O. 27/11/2009)\n"
                + "(Nota Infoleg: multa actualizada por art. 1° de la Ley N° 24.286 B.O. 29/12/1993)\n"
            );        
        }        
        
        if (jLabelArticulo.getText().compareTo("Artículo: 111") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 111\n"
                + "El acusado de injuria, en los casos en los que las expresiones de ningún modo estén vinculadas con\n"
                + "asuntos de interés público, no podrá probar la verdad de la imputación salvo en los casos siguientes:\n"
                + "1) Si el hecho atribuido a la persona ofendida, hubiere dado lugar a un proceso penal.\n"
                + "2) Si el querellante pidiera la prueba de la imputación dirigida contra él.\n"
                + "En estos casos, si se probare la verdad de las imputaciones, el acusado quedará exento de pena.\n"
                + "(Artículo sustituido por art. 3° de la Ley N° 26.551 B.O. 27/11/2009)\n"
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículos: 113 y 114") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 113\n"
                + "El que publicare o reprodujere, por cualquier medio, injurias o calumnias inferidas por otro, será reprimido como\n"
                + "autor de las injurias o calumnias de que se trate, siempre que su contenido no fuera atribuido en forma\n"
                + "sustancialmente fiel a la fuente pertinente. En ningún caso configurarán delito de calumnia las expresiones\n"
                + "referidas a asuntos de interés público o las que no sean asertivas.\n"
                + "(Artículo sustituido por art. 5° de la Ley N° 26.551 B.O. 27/11/2009)\n"
                + "\n"
                + "ARTÍCULO 114\n"
                + "Cuando la injuria o calumnia se hubiere propagado por medio de la prensa, en la capital y territorios nacionales,\n"
                + "sus autores quedarán sometidos a las sanciones del presente código y el juez o tribunal ordenará, si lo pidiere el\n"
                + "ofendido, que los editores inserten en los respectivos impresos o periódicos, a costa del culpable, la sentencia o\n"
                + "satisfacción.\n"                    
            );        
        }        

        if (jLabelArticulo.getText().compareTo("Artículo: 115") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 115\n"
                + "Las injurias proferidas por los litigantes, apoderados o defensores, en los escritos,\n"
                + "discursos o informes producidos ante los tribunales y no dados a publicidad, quedarán\n"
                + "sujetas únicamente a las correcciones disciplinarias correspondientes.\n"
            );        
        }          
        
        if (jLabelArticulo.getText().compareTo("Artículo: 116") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 116\n"
                + "Cuando las injurias fueren recíprocas, el tribunal podrá, según las circunstancias,\n"
                + "declarar exentas de pena a las dos partes o a alguna de ellas.\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 117") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 117\n"
                + "El acusado de injuria o calumnia quedará exento de pena si se retractare públicamente,\n"
                + "antes de contestar la querella o en el acto de hacerlo. La retractación no importará para\n"
                + "el acusado la aceptación de su culpabilidad.\n"
                + "(Artículo sustituido por art. 6° de la Ley N° 26.551 B.O. 27/11/2009)\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 117 bis") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 117 bis\n"
                + "1°. (Inciso derogado por art. 14 de la Ley N° 26.388, B.O. 25/6/2008)\n"
                + "2°. La pena será de seis meses a tres años, al que proporcionara a un tercero\n"
                + "a sabiendas información falsa contenida en un archivo de datos personales.\n"
                + "3°. La escala penal se aumentará en la mitad del mínimo y del máximo, cuando\n"
                + "del hecho se derive perjuicio a alguna persona.\n"
                + "4°. Cuando el autor o responsable del ilícito sea funcionario público en ejercicio\n"
                + "de sus funciones, se le aplicará la accesoria de inhabilitación para el\n"
                + "desempeño de cargos públicos por el doble del tiempo que el de la condena.\n"
                + "(Artículo incorporado por art. 32 de la Ley N° 25.326 B.O. 2/11/2000)\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 119") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 119\n"
                + "Será reprimido con reclusión o prisión de seis (6) meses a cuatro (4) años el que abusare sexualmente de una persona cuando ésta fuera\n"
                + "menor de trece (13) años o cuando mediare violencia, amenaza, abuso coactivo o intimidatorio de una relación de dependencia, de autoridad,\n"
                + "o de poder, o aprovechándose de que la víctima por cualquier causa no haya podido consentir libremente la acción.\n"
                + "La pena será de cuatro (4) a diez (10) años de reclusión o prisión cuando el abuso por su duración o circunstancias de su realización, hubiere\n"
                + "configurado un sometimiento sexual gravemente ultrajante para la víctima.\n"
                + "La pena será de seis (6) a quince (15) años de reclusión o prisión cuando mediando las circunstancias del primer párrafo hubiere acceso\n"
                + "carnal por vía anal, vaginal u oral o realizare otros actos análogos introduciendo objetos o partes del cuerpo por alguna de las dos primeras vías.\n"
                + "En los supuestos de los dos párrafos anteriores, la pena será de ocho (8) a veinte (20) años de reclusión o prisión si:\n"
                + "a) Resultare un grave daño en la salud física o mental de la víctima;\n"
                + "b) El hecho fuere cometido por ascendiente, descendiente, afín en línea recta, hermano, tutor, curador, ministro de algún culto reconocido o no,\n"
                + "encargado de la educación o de la guarda;\n"
                + "c) El autor tuviere conocimiento de ser portador de una enfermedad de transmisión sexual grave, y hubiere existido peligro de contagio;\n"
                + "d) El hecho fuere cometido por dos o más personas, o con armas;\n"
                + "e) El hecho fuere cometido por personal perteneciente a las fuerzas policiales o de seguridad, en ocasión de sus funciones;\n"
                + "f) El hecho fuere cometido contra un menor de dieciocho (18) años, aprovechando la situación de convivencia preexistente con el mismo.\n"
                + "En el supuesto del primer párrafo, la pena será de tres (3) a diez (10) años de reclusión o prisión si concurren las circunstancias de los\n"
                + "incisos a), b), d), e) o f).\n"
                + "(Artículo sustituido por art. 1° de la Ley N° 27.352 B.O. 17/5/2017)\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 120") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 120\n"
                + "Será reprimido con prisión o reclusión de tres a seis años el que realizare algunas de las acciones\n"
                + "previstas en el segundo o en el tercer párrafo del artículo 119 con una persona menor de dieciséis\n"
                + "años, aprovechándose de su inmadurez sexual, en razón de la mayoría de edad del autor, su relación\n"
                + "de preeminencia respecto de la víctima, u otra circunstancia equivalente, siempre que no resultare un\n"
                + "delito más severamente penado.\n"
                + "La pena será de prisión o reclusión de seis a diez años si mediare alguna de las circunstancias\n"
                + "previstas en los incisos a), b), c), e) o f) del cuarto párrafo del artículo 119\n"
                + "(Artículo sustituido por art. 3° de la Ley N° 25.087 B.O. 14/5/1999)\n" 
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 124") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 124\n"
                + "Se impondrá reclusión o prisión perpetua, cuando en los casos de\n"
                + "los artículos 119 y 120 resultare la muerte de la persona ofendida.\n"
                + "(Artículo sustituido por art. 1° de la Ley N° 25.893 B.O. 26/5/2004)\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 125") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 125\n"
                + "El que promoviere o facilitare la corrupción de menores de dieciocho años, aunque mediare el\n"
                + "consentimiento de la víctima será reprimido con reclusión o prisión de tres a diez años.\n"
                + "La pena será de seis a quince años de reclusión o prisión cuando la víctima fuera menor de trece años.\n"
                + "Cualquiera que fuese la edad de la víctima, la pena será de reclusión o prisión de diez a quince años,\n"
                + "cuando mediare engaño, violencia, amenaza, abuso de autoridad o cualquier otro medio de intimidación\n"
                + "o coerción, como también si el autor fuera ascendiente, cónyuge, hermano, tutor o persona conviviente o\n"
                + "encargada de su educación o guarda.\n"
                + "(Artículo sustituido por art. 5° de la Ley N° 25.087 B.O. 14/5/1999)\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículos: 125 bis y 127") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 125 bis\n"
                + "El que promoviere o facilitare la prostitución de una persona será penado con prisión de cuatro (4) a seis (6) años de\n"
                + "prisión, aunque mediare el consentimiento de la víctima.\n"
                + "(Artículo sustituido por art. 21 de la Ley N° 26.842 B.O. 27/12/2012)\n"
                + "\n"
                + "ARTÍCULO 127\n"
                + "Será reprimido con prisión de cuatro (4) a seis (6) años, el que explotare económicamente el ejercicio de la prostitución\n"
                + "de una persona, aunque mediare el consentimiento de la víctima.\n"
                + "La pena será de cinco (5) a diez (10) años de prisión, si concurriere alguna de las siguientes circunstancias:\n"
                + "1. Mediare engaño, fraude, violencia, amenaza o cualquier otro medio de intimidación o coerción, abuso de autoridad o\n"
                + "de una situación de vulnerabilidad, o concesión o recepción de pagos o beneficios para obtener el consentimiento de\n"
                + "una persona que tenga autoridad sobre la víctima.\n"
                + "2. El autor fuere ascendiente, descendiente, cónyuge, afín en línea recta, colateral o conviviente, tutor, curador, autoridad\n"
                + "o ministro de cualquier culto reconocido o no, o encargado de la educación o de la guarda de la víctima.\n"
                + "3. El autor fuere funcionario público o miembro de una fuerza de seguridad, policial o penitenciaria.\n"
                + "Cuando la víctima fuere menor de dieciocho (18) años la pena será de diez (10) a quince (15) años de prisión.\n"
                + "(Artículo sustituido por art. 23 de la Ley N° 26.842 B.O. 27/12/2012)\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículos: 126 y 127") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 126\n"
                + "En el caso del artículo anterior, la pena será de cinco (5) a diez (10) años de prisión, si concurriere alguna de\n"
                + "las siguientes circunstancias:\n"
                + "1. Mediare engaño, fraude, violencia, amenaza o cualquier otro medio de intimidación o coerción, abuso de\n"
                + "autoridad o de una situación de vulnerabilidad, o concesión o recepción de pagos o beneficios para obtener el\n"
                + "consentimiento de una persona que tenga autoridad sobre la víctima.\n"
                + "2. El autor fuere ascendiente, descendiente, cónyuge, afín en línea recta, colateral o conviviente, tutor,\n"
                + "curador, autoridad o ministro de cualquier culto reconocido o no, o encargado de la educación o de la guarda\n"
                + "de la víctima.\n"
                + "3. El autor fuere funcionario público o miembro de una fuerza de seguridad, policial o penitenciaria.\n"
                + "Cuando la víctima fuere menor de dieciocho (18) años la pena será de diez (10) a quince (15) años de prisión.\n"
                + "(Artículo sustituido por art. 22 de la Ley N° 26.842 B.O. 27/12/2012)\n"
                + "\n"
                + "ARTÍCULO 127\n"
                + "Será reprimido con prisión de cuatro (4) a seis (6) años, el que explotare económicamente el ejercicio de la\n"
                + "prostitución de una persona, aunque mediare el consentimiento de la víctima.\n"
                + "La pena será de cinco (5) a diez (10) años de prisión, si concurriere alguna de las siguientes circunstancias:\n"
                + "1. Mediare engaño, fraude, violencia, amenaza o cualquier otro medio de intimidación o coerción, abuso de\n"
                + "autoridad o de una situación de vulnerabilidad, o concesión o recepción de pagos o beneficios para obtener\n"
                + "el consentimiento de una persona que tenga autoridad sobre la víctima.\n"
                + "2. El autor fuere ascendiente, descendiente, cónyuge, afín en línea recta, colateral o conviviente, tutor,\n"
                + "curador, autoridad o ministro de cualquier culto reconocido o no, o encargado de la educación o de la guarda\n"
                + "de la víctima.\n"
                + "3. El autor fuere funcionario público o miembro de una fuerza de seguridad, policial o penitenciaria.\n"
                + "Cuando la víctima fuere menor de dieciocho (18) años la pena será de diez (10) a quince (15) años de prisión.\n"
                + "(Artículo sustituido por art. 23 de la Ley N° 26.842 B.O. 27/12/2012)\n"
            );  
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 128") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 128\n"
                + "Será reprimido con prisión de tres (3) a seis (6) años el que produjere, financiare, ofreciere, comerciare,\n"
                + "publicare, facilitare, divulgare o distribuyere, por cualquier medio, toda representación de un menor de\n"
                + "dieciocho (18) años dedicado a actividades sexuales explícitas o toda representación de sus partes genitales\n"
                + "con fines predominantemente sexuales, al igual que el que organizare espectáculos en vivo de representaciones\n"
                + "sexuales explícitas en que participaren dichos menores.\n"
                + "Será reprimido con prisión de cuatro (4) meses a un (1) año el que a sabiendas tuviere en su poder\n"
                + "representaciones de las descriptas en el párrafo anterior.\n"
                + "Será reprimido con prisión de seis (6) meses a dos (2) años el que tuviere en su poder representaciones de las\n"
                + "descriptas en el primer párrafo con fines inequívocos de distribución o comercialización.\n"
                + "Será reprimido con prisión de un (1) mes a tres (3) años el que facilitare el acceso a espectáculos pornográficos\n"
                + "o suministrare material pornográfico a menores de catorce (14) años.\n"
                + "Todas las escalas penales previstas en este artículo se elevarán en un tercio en su mínimo y en su máximo\n"
                + "cuando la víctima fuere menor de trece (13) años.\n"
                + "(Artículo sustituido por art. 1° de la Ley N° 27.436 B.O. 23/4/2018)\n"
            );        
        }          

        if (jLabelArticulo.getText().compareTo("Artículo: 129") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 129\n"
                + "Será reprimido con multa de mil a quince mil pesos el que ejecutare o hiciese ejecutar por otros actos de exhibiciones\n"
                + "obscenas expuestas a ser vistas involuntariamente por terceros.\n"
                + "Si los afectados fueren menores de dieciocho años la pena será de prisión de seis meses a cuatro años. Lo mismo,\n"
                + "valdrá con independencia de la voluntad del afectado, cuando se tratare de un menor de trece años.\n"
                + "(Artículo sustituido por art. 10° de la Ley N° 25.087, B.O. 14/5/1999)\n"
                + "(Nota Infoleg: multa actualizada anteriormente por art. 1° de la Ley N° 24.286 B.O. 29/12/1993)\n"
            );        
        }          
        
        if (jLabelArticulo.getText().compareTo("Artículo: 130") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 130\n"
                + "Será reprimido con prisión de uno a cuatro años, el que sustrajere o retuviere a una persona por medio de la fuerza,\n"
                + "intimidación o fraude, con la intención de menoscabar su integridad sexual.\n"
                + "La pena será de seis meses a dos años, si se tratare de una persona menor de dieciséis años, con su consentimiento.\n"
                + "La pena será de dos a seis años si se sustrajere o retuviere mediante fuerza, intimidación o fraude a una persona\n"
                + "menor de trece años, con el mismo fin.\n"
                + "(Artículo sustituido por art. 11° de la Ley N° 25.087 B.O. 14/5/1999)\n"
            );        
        }  
        
        if (jLabelArticulo.getText().compareTo("Artículo: 131") == 0) {
            JOptionPane.showMessageDialog(null, "ARTÍCULO 131\n"
                + "Será penado con prisión de seis (6) meses a cuatro (4) años el que, por medio de comunicaciones electrónicas,\n"
                + "telecomunicaciones o cualquier otra tecnología de transmisión de datos, contactare a una persona menor de\n"
                + "edad, con el propósito de cometer cualquier delito contra la integridad sexual de la misma.\n"
                + "(Artículo incorporado por art. 1° de la Ley N° 26.904 B.O. 11/12/2013)\n"
            );        
        }          
    }//GEN-LAST:event_jButtonDetallesActionPerformed
 
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Index.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Index().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonDetalles;
    private javax.swing.JButton jButtonSalir;
    private javax.swing.JLabel jLabelArticulo;
    private javax.swing.JLabel jLabelCondena1;
    private javax.swing.JLabel jLabelCondena2;
    private javax.swing.JLabel jLabelCondena3;
    private javax.swing.JLabel jLabelCondena4;
    private javax.swing.JLabel jLabelDNI1;
    private javax.swing.JLabel jLabelDNI2;
    private javax.swing.JLabel jLabelDNI3;
    private javax.swing.JLabel jLabelDNI4;
    private javax.swing.JLabel jLabelDegrade;
    private javax.swing.JLabel jLabelDetalles;
    private javax.swing.JLabel jLabelFondo;
    private javax.swing.JLabel jLabelLogoUNLa;
    private javax.swing.JLabel jLabelTitulo;
    private org.jdesktop.beansbinding.BindingGroup bindingGroup;
    // End of variables declaration//GEN-END:variables
}

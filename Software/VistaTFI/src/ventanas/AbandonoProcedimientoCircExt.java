/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ventanas;

public class AbandonoProcedimientoCircExt extends javax.swing.JFrame {

    public AbandonoProcedimientoCircExt () {
        initComponents();
        this.setLocationRelativeTo(null);  // Se ejecuta en el medio de la pantalla
        
        mostrarCircExt(false);
        mostrarDatosVictimario(false);
        mostrarRelacion(false);
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

        buttonGroup1 = new javax.swing.ButtonGroup();
        buttonGroup2 = new javax.swing.ButtonGroup();
        jLabelTitulo = new javax.swing.JLabel();
        jLabelProcedimiento = new javax.swing.JLabel();
        jLabelDegrade1 = new javax.swing.JLabel();
        jLabelLogoUNLa = new javax.swing.JLabel();
        jComboBoxProcedimientos = new javax.swing.JComboBox<>();
        jLabelDegrade2 = new javax.swing.JLabel();
        jButtonSiguiente = new javax.swing.JButton();
        jLabelCircExt = new javax.swing.JLabel();
        jLabelDegrade3 = new javax.swing.JLabel();
        jRadioButtonSi = new javax.swing.JRadioButton();
        jRadioButtonNo = new javax.swing.JRadioButton();
        jLabelDegrade4 = new javax.swing.JLabel();
        jLabelDatosVictimario = new javax.swing.JLabel();
        jLabelNombreApellido = new javax.swing.JLabel();
        jTextFieldNombreApellido = new javax.swing.JTextField();
        jTextFieldDNI = new javax.swing.JTextField();
        jLabelDNI = new javax.swing.JLabel();
        jTextFieldEdad = new javax.swing.JTextField();
        jLabelEdad = new javax.swing.JLabel();
        jLabelDegrade5 = new javax.swing.JLabel();
        jLabelDegrade6 = new javax.swing.JLabel();
        jButtonConfirmarDatos = new javax.swing.JButton();
        jLabelRelacionConVictima = new javax.swing.JLabel();
        jLabelDegrade7 = new javax.swing.JLabel();
        jRadioButtonAscendenteDescendente = new javax.swing.JRadioButton();
        jRadioButtonConyugeExConyuge = new javax.swing.JRadioButton();
        jRadioButtonParejaExPareja = new javax.swing.JRadioButton();
        jRadioButtonOtra = new javax.swing.JRadioButton();
        jLabelDegrade8 = new javax.swing.JLabel();
        jLabelFondo = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setSize(new java.awt.Dimension(850, 700));

        org.jdesktop.beansbinding.Binding binding = org.jdesktop.beansbinding.Bindings.createAutoBinding(org.jdesktop.beansbinding.AutoBinding.UpdateStrategy.READ_WRITE, this, org.jdesktop.beansbinding.ELProperty.create("TFL"), this, org.jdesktop.beansbinding.BeanProperty.create("title"));
        bindingGroup.addBinding(binding);

        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabelTitulo.setFont(new java.awt.Font("Calibri", 2, 16)); // NOI18N
        jLabelTitulo.setForeground(new java.awt.Color(255, 255, 255));
        jLabelTitulo.setText("DETERMINADOR DE SANCIONES PARA DELITOS CONTRA LAS PERSONAS, EL HONOR Y LA INTEGRIDAD SEXUAL");
        getContentPane().add(jLabelTitulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 17, 720, 20));

        jLabelProcedimiento.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelProcedimiento.setText("Indique la situación sucedida:");
        getContentPane().add(jLabelProcedimiento, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 80, -1, 20));

        jLabelDegrade1.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelDegrade1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade1.png"))); // NOI18N
        getContentPane().add(jLabelDegrade1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 70, 840, 40));

        jLabelLogoUNLa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/IconUNLa30x30.png"))); // NOI18N
        jLabelLogoUNLa.setText("jLabel1");
        getContentPane().add(jLabelLogoUNLa, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 30, -1));

        jComboBoxProcedimientos.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jComboBoxProcedimientos.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccione la situación", "Poner en peligro la vida o salud de otro, colocándolo en situación de desamparo", "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar", "Poner en peligro la vida o salud de una persona a la que el mismo autor haya incapacitado", "Omitir prestarle el auxilio necesario a una persona que haya encontrado perdida o desamparada" }));
        jComboBoxProcedimientos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jComboBoxProcedimientosActionPerformed(evt);
            }
        });
        getContentPane().add(jComboBoxProcedimientos, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 140, -1, -1));

        jLabelDegrade2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade2.jpg"))); // NOI18N
        jLabelDegrade2.setText("jLabel1");
        getContentPane().add(jLabelDegrade2, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 130, 780, 50));

        jButtonSiguiente.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jButtonSiguiente.setText("Siguiente");
        jButtonSiguiente.setEnabled(false);
        jButtonSiguiente.setMaximumSize(new java.awt.Dimension(39, 29));
        jButtonSiguiente.setMinimumSize(new java.awt.Dimension(39, 29));
        jButtonSiguiente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSiguienteActionPerformed(evt);
            }
        });
        getContentPane().add(jButtonSiguiente, new org.netbeans.lib.awtextra.AbsoluteConstraints(660, 660, 150, 50));

        jLabelCircExt.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelCircExt.setText("¿Resultó grave daño en el cuerpo o en la salud de la víctima debido al abandono?");
        getContentPane().add(jLabelCircExt, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 210, -1, 20));

        jLabelDegrade3.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelDegrade3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade1.png"))); // NOI18N
        getContentPane().add(jLabelDegrade3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 200, 840, 40));

        buttonGroup1.add(jRadioButtonSi);
        jRadioButtonSi.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jRadioButtonSi.setForeground(new java.awt.Color(255, 255, 255));
        jRadioButtonSi.setText("Si");
        jRadioButtonSi.setContentAreaFilled(false);
        jRadioButtonSi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButtonSiActionPerformed(evt);
            }
        });
        getContentPane().add(jRadioButtonSi, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 260, 60, -1));

        buttonGroup1.add(jRadioButtonNo);
        jRadioButtonNo.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jRadioButtonNo.setForeground(new java.awt.Color(255, 255, 255));
        jRadioButtonNo.setText("No");
        jRadioButtonNo.setContentAreaFilled(false);
        jRadioButtonNo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButtonNoActionPerformed(evt);
            }
        });
        getContentPane().add(jRadioButtonNo, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 290, 60, -1));

        jLabelDegrade4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade2.jpg"))); // NOI18N
        jLabelDegrade4.setText("jLabel1");
        getContentPane().add(jLabelDegrade4, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 260, 150, 60));

        jLabelDatosVictimario.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelDatosVictimario.setText("Ingrese los datos del victimario:");
        getContentPane().add(jLabelDatosVictimario, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 350, -1, 20));

        jLabelNombreApellido.setBackground(new java.awt.Color(255, 255, 255));
        jLabelNombreApellido.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jLabelNombreApellido.setForeground(new java.awt.Color(255, 255, 255));
        jLabelNombreApellido.setText("Nombre y apellido:");
        getContentPane().add(jLabelNombreApellido, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 420, -1, -1));

        jTextFieldNombreApellido.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jTextFieldNombreApellido.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldNombreApellidoActionPerformed(evt);
            }
        });
        jTextFieldNombreApellido.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jTextFieldNombreApellidoKeyTyped(evt);
            }
        });
        getContentPane().add(jTextFieldNombreApellido, new org.netbeans.lib.awtextra.AbsoluteConstraints(50, 450, 270, 30));

        jTextFieldDNI.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jTextFieldDNI.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldDNIActionPerformed(evt);
            }
        });
        jTextFieldDNI.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jTextFieldDNIKeyTyped(evt);
            }
        });
        getContentPane().add(jTextFieldDNI, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 450, 100, 30));

        jLabelDNI.setBackground(new java.awt.Color(255, 255, 255));
        jLabelDNI.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jLabelDNI.setForeground(new java.awt.Color(255, 255, 255));
        jLabelDNI.setText("DNI:");
        getContentPane().add(jLabelDNI, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 420, -1, -1));

        jTextFieldEdad.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jTextFieldEdad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldEdadActionPerformed(evt);
            }
        });
        jTextFieldEdad.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jTextFieldEdadKeyTyped(evt);
            }
        });
        getContentPane().add(jTextFieldEdad, new org.netbeans.lib.awtextra.AbsoluteConstraints(460, 450, 90, 30));

        jLabelEdad.setBackground(new java.awt.Color(255, 255, 255));
        jLabelEdad.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jLabelEdad.setForeground(new java.awt.Color(255, 255, 255));
        jLabelEdad.setText("Edad:");
        getContentPane().add(jLabelEdad, new org.netbeans.lib.awtextra.AbsoluteConstraints(460, 420, -1, -1));

        jLabelDegrade5.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelDegrade5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade1.png"))); // NOI18N
        getContentPane().add(jLabelDegrade5, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 340, 840, 40));

        jLabelDegrade6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade2.jpg"))); // NOI18N
        jLabelDegrade6.setText("jLabel1");
        getContentPane().add(jLabelDegrade6, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 400, 540, 110));

        jButtonConfirmarDatos.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jButtonConfirmarDatos.setText("Confirmar datos");
        jButtonConfirmarDatos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonConfirmarDatosActionPerformed(evt);
            }
        });
        getContentPane().add(jButtonConfirmarDatos, new org.netbeans.lib.awtextra.AbsoluteConstraints(590, 430, 170, 50));

        jLabelRelacionConVictima.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelRelacionConVictima.setText("Seleccione la relación del victimario con alguna de las víctimas:");
        getContentPane().add(jLabelRelacionConVictima, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 540, -1, 20));

        jLabelDegrade7.setFont(new java.awt.Font("Calibri", 1, 20)); // NOI18N
        jLabelDegrade7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade1.png"))); // NOI18N
        getContentPane().add(jLabelDegrade7, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 530, 840, 40));

        buttonGroup2.add(jRadioButtonAscendenteDescendente);
        jRadioButtonAscendenteDescendente.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jRadioButtonAscendenteDescendente.setForeground(new java.awt.Color(255, 255, 255));
        jRadioButtonAscendenteDescendente.setText("Ascendente/Descendente");
        jRadioButtonAscendenteDescendente.setContentAreaFilled(false);
        jRadioButtonAscendenteDescendente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButtonAscendenteDescendenteActionPerformed(evt);
            }
        });
        getContentPane().add(jRadioButtonAscendenteDescendente, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 590, 220, -1));

        buttonGroup2.add(jRadioButtonConyugeExConyuge);
        jRadioButtonConyugeExConyuge.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jRadioButtonConyugeExConyuge.setForeground(new java.awt.Color(255, 255, 255));
        jRadioButtonConyugeExConyuge.setText("Cónyuge/Ex cónyuge");
        jRadioButtonConyugeExConyuge.setContentAreaFilled(false);
        jRadioButtonConyugeExConyuge.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButtonConyugeExConyugeActionPerformed(evt);
            }
        });
        getContentPane().add(jRadioButtonConyugeExConyuge, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 590, 190, -1));

        buttonGroup2.add(jRadioButtonParejaExPareja);
        jRadioButtonParejaExPareja.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jRadioButtonParejaExPareja.setForeground(new java.awt.Color(255, 255, 255));
        jRadioButtonParejaExPareja.setText("Pareja/Ex pareja");
        jRadioButtonParejaExPareja.setContentAreaFilled(false);
        jRadioButtonParejaExPareja.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButtonParejaExParejaActionPerformed(evt);
            }
        });
        getContentPane().add(jRadioButtonParejaExPareja, new org.netbeans.lib.awtextra.AbsoluteConstraints(450, 590, 150, -1));

        buttonGroup2.add(jRadioButtonOtra);
        jRadioButtonOtra.setFont(new java.awt.Font("Calibri", 0, 18)); // NOI18N
        jRadioButtonOtra.setForeground(new java.awt.Color(255, 255, 255));
        jRadioButtonOtra.setText("Otra");
        jRadioButtonOtra.setContentAreaFilled(false);
        jRadioButtonOtra.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButtonOtraActionPerformed(evt);
            }
        });
        getContentPane().add(jRadioButtonOtra, new org.netbeans.lib.awtextra.AbsoluteConstraints(600, 590, 70, -1));

        jLabelDegrade8.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Degrade2.jpg"))); // NOI18N
        jLabelDegrade8.setText("jLabel1");
        getContentPane().add(jLabelDegrade8, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 590, 650, 30));

        jLabelFondo.setForeground(new java.awt.Color(255, 255, 255));
        jLabelFondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/Fondo.jpg"))); // NOI18N
        getContentPane().add(jLabelFondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 840, 740));

        bindingGroup.bind();

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public void mostrarCircExt(boolean mostrar) {
        jLabelDegrade3.setVisible(mostrar);
        jLabelCircExt.setVisible(mostrar);
        jLabelDegrade4.setVisible(mostrar);
        jRadioButtonSi.setVisible(mostrar);
        jRadioButtonNo.setVisible(mostrar);
    }
    
    public void mostrarDatosVictimario(boolean mostrar) {
        jLabelDegrade5.setVisible(mostrar);
        jLabelDatosVictimario.setVisible(mostrar);
        jLabelDegrade6.setVisible(mostrar);
        jLabelNombreApellido.setVisible(mostrar);
        jTextFieldNombreApellido.setVisible(mostrar);
        jLabelDNI.setVisible(mostrar);
        jTextFieldDNI.setVisible(mostrar);
        jLabelEdad.setVisible(mostrar);
        jTextFieldEdad.setVisible(mostrar);
        jButtonConfirmarDatos.setVisible(mostrar);
    }

    public void mostrarRelacion(boolean mostrar) {
        jLabelDegrade7.setVisible(mostrar);
        jLabelRelacionConVictima.setVisible(mostrar);
        jLabelDegrade8.setVisible(mostrar);
        jRadioButtonAscendenteDescendente.setVisible(mostrar);
        jRadioButtonConyugeExConyuge.setVisible(mostrar);
        jRadioButtonParejaExPareja.setVisible(mostrar);
        jRadioButtonOtra.setVisible(mostrar);
    }
    
    private void jComboBoxProcedimientosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jComboBoxProcedimientosActionPerformed
        if ((String)jComboBoxProcedimientos.getSelectedItem() != "Seleccione la situación") {
            mostrarCircExt(true);
            if ((jRadioButtonAscendenteDescendente.isSelected()) || (jRadioButtonConyugeExConyuge.isSelected()) || (jRadioButtonParejaExPareja.isSelected()) || (jRadioButtonOtra.isSelected())) {
                jButtonSiguiente.setEnabled(true);
            }   
            if ((((jRadioButtonSi.isSelected())) || (jRadioButtonNo.isSelected())) &&
                (!jRadioButtonAscendenteDescendente.isSelected()) && (!jRadioButtonConyugeExConyuge.isSelected()) && (!jRadioButtonParejaExPareja.isSelected()) && (!jRadioButtonOtra.isSelected())
                && (!jTextFieldNombreApellido.isEnabled())) {
                jButtonSiguiente.setEnabled(true);
            }   
        }   
        if ((String)jComboBoxProcedimientos.getSelectedItem() == "Seleccione la situación") {
            jButtonSiguiente.setEnabled(false);
        }
        if ((String)jComboBoxProcedimientos.getSelectedItem() == "Omitir prestarle el auxilio necesario a una persona que haya encontrado perdida o desamparada") {
            mostrarRelacion(false);
        }
        if (((String)jComboBoxProcedimientos.getSelectedItem() != "Omitir prestarle el auxilio necesario a una persona que haya encontrado perdida o desamparada")
            && ((String)jComboBoxProcedimientos.getSelectedItem() != "Seleccione la situación")
            && (!jTextFieldNombreApellido.isEnabled())) {
            mostrarRelacion(true);
            if ((!jRadioButtonAscendenteDescendente.isSelected()) && (!jRadioButtonConyugeExConyuge.isSelected()) && (jRadioButtonParejaExPareja.isSelected()) && (!jRadioButtonOtra.isSelected())) {
                jButtonSiguiente.setEnabled(false);
            }
        }
    }//GEN-LAST:event_jComboBoxProcedimientosActionPerformed

    private void jButtonSiguienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSiguienteActionPerformed
        AbandonoVictima a = new AbandonoVictima();
        a.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_jButtonSiguienteActionPerformed

    private void jRadioButtonSiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButtonSiActionPerformed
        if (jRadioButtonSi.isSelected()) {
            if (jTextFieldNombreApellido.isEnabled()) {
                mostrarDatosVictimario(true);                
            }
        }
    }//GEN-LAST:event_jRadioButtonSiActionPerformed

    private void jRadioButtonNoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButtonNoActionPerformed
        if (jRadioButtonNo.isSelected()) {
            if (jTextFieldNombreApellido.isEnabled()) {
                mostrarDatosVictimario(true);                
            }
        }
    }//GEN-LAST:event_jRadioButtonNoActionPerformed

    private void jTextFieldNombreApellidoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldNombreApellidoActionPerformed

    }//GEN-LAST:event_jTextFieldNombreApellidoActionPerformed

    private void jTextFieldNombreApellidoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldNombreApellidoKeyTyped
    }//GEN-LAST:event_jTextFieldNombreApellidoKeyTyped

    private void jTextFieldDNIActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldDNIActionPerformed

    }//GEN-LAST:event_jTextFieldDNIActionPerformed

    private void jTextFieldDNIKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldDNIKeyTyped
        char c = evt.getKeyChar();
        if (c<'0' || c>'9') evt.consume();
    }//GEN-LAST:event_jTextFieldDNIKeyTyped

    private void jTextFieldEdadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldEdadActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldEdadActionPerformed

    private void jTextFieldEdadKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldEdadKeyTyped
        char c = evt.getKeyChar();
        if (c<'0' || c>'9') evt.consume();
    }//GEN-LAST:event_jTextFieldEdadKeyTyped

    private void jButtonConfirmarDatosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonConfirmarDatosActionPerformed
        if ((!jTextFieldNombreApellido.getText().isEmpty()) && (!jTextFieldDNI.getText().isEmpty()) && (!jTextFieldEdad.getText().isEmpty())
           && ((String)jComboBoxProcedimientos.getSelectedItem() != "Omitir prestarle el auxilio necesario a una persona que haya encontrado perdida o desamparada"))     {
            jTextFieldNombreApellido.setEnabled(false);
            jTextFieldDNI.setEnabled(false);
            jTextFieldEdad.setEnabled(false);
            mostrarRelacion(true);
            jButtonConfirmarDatos.setVisible(false);
        }
        if ((!jTextFieldNombreApellido.getText().isEmpty()) && (!jTextFieldDNI.getText().isEmpty()) && (!jTextFieldEdad.getText().isEmpty())
           && ((String)jComboBoxProcedimientos.getSelectedItem() == "Omitir prestarle el auxilio necesario a una persona que haya encontrado perdida o desamparada"))     {
            //relacion con victima es OTRA
            jTextFieldNombreApellido.setEnabled(false);
            jTextFieldDNI.setEnabled(false);
            jTextFieldEdad.setEnabled(false);
            jButtonConfirmarDatos.setVisible(false);
            jButtonSiguiente.setEnabled(true);
        }
    }//GEN-LAST:event_jButtonConfirmarDatosActionPerformed

    private void jRadioButtonAscendenteDescendenteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButtonAscendenteDescendenteActionPerformed
        if (jRadioButtonAscendenteDescendente.isSelected()) {
            jButtonSiguiente.setEnabled(true);
        }
    }//GEN-LAST:event_jRadioButtonAscendenteDescendenteActionPerformed

    private void jRadioButtonConyugeExConyugeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButtonConyugeExConyugeActionPerformed
        if (jRadioButtonConyugeExConyuge.isSelected()) {
            jButtonSiguiente.setEnabled(true);
        }
    }//GEN-LAST:event_jRadioButtonConyugeExConyugeActionPerformed

    private void jRadioButtonParejaExParejaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButtonParejaExParejaActionPerformed
        if (jRadioButtonParejaExPareja.isSelected()) {
            jButtonSiguiente.setEnabled(true);
        }
    }//GEN-LAST:event_jRadioButtonParejaExParejaActionPerformed

    private void jRadioButtonOtraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButtonOtraActionPerformed
        if (jRadioButtonOtra.isSelected()) {
            jButtonSiguiente.setEnabled(true);
        }
    }//GEN-LAST:event_jRadioButtonOtraActionPerformed

    public static String getProcedimiento() {
        String resultado = (String)jComboBoxProcedimientos.getSelectedItem();
        switch (resultado) {    
            case "Poner en peligro la vida o salud de otro, colocándolo en situación de desamparo":
                resultado = "Poner en peligro la vida o salud de otro, colocandolo en situacion de desamparo";
                break;
            case "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar":
                resultado = "Poner en peligro la vida o salud de una persona incapaz de valerse y a la que deba mantener o cuidar, abandonandola a su suerte";
                break;  
            case "Omitir prestarle el auxilio necesario a una persona que haya encontrado perdida o desamparada":
                resultado = "Omitir prestarle el auxilio necesario (cuando pudiere hacerlo sin riesgo personal o no diere aviso inmediatamente a la autoridad) a una persona que haya encontrado perdida o desamparada (herida, invalida, amenazada de un peligro cualquiera o menor de 10 anios)";
                break;      
        }
        return resultado;
    }        
    
    public static String getCircunstanciasExternasDeAtenuacion() {
        String resultado = "";
        if (jRadioButtonSi.isSelected()) {
            resultado = "No";
        }
        if (jRadioButtonNo.isSelected()) {
            resultado = "Si";
        }
        return resultado;
    }

    public static String getNombreApellido() {
        return (String)jTextFieldNombreApellido.getText();
    }
    
    public static int getDNI() {
        return Integer.parseInt(jTextFieldDNI.getText());
    }
    
    public static int getEdad() {
        return Integer.parseInt(jTextFieldEdad.getText());
    }

    public static String getRelacionConVictima() {
        String resultado = "";
        if (jRadioButtonAscendenteDescendente.isSelected()) {
           resultado = "Ascendente o descendente"; 
        }
        if (jRadioButtonConyugeExConyuge.isSelected()) {
            resultado = "Conyuge o ex conyuge";
        }
        if (jRadioButtonParejaExPareja.isSelected()) {
            resultado = "Pareja o ex pareja";
        }
        if ((jRadioButtonOtra.isSelected()) || ((String)jComboBoxProcedimientos.getSelectedItem() == "Omitir prestarle el auxilio necesario a una persona que haya encontrado perdida o desamparada")) {
            resultado = "Otra";
        }
        return resultado;
    }    
    
    public static String getRol() {
        return "Ejecutor";
    }
    
    public static int getCantidadVictimarios() {
        return 1;
    }
    
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
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.ButtonGroup buttonGroup2;
    private javax.swing.JButton jButtonConfirmarDatos;
    private javax.swing.JButton jButtonSiguiente;
    private static javax.swing.JComboBox<String> jComboBoxProcedimientos;
    private javax.swing.JLabel jLabelCircExt;
    private javax.swing.JLabel jLabelDNI;
    private javax.swing.JLabel jLabelDatosVictimario;
    private javax.swing.JLabel jLabelDegrade1;
    private javax.swing.JLabel jLabelDegrade2;
    private javax.swing.JLabel jLabelDegrade3;
    private javax.swing.JLabel jLabelDegrade4;
    private javax.swing.JLabel jLabelDegrade5;
    private javax.swing.JLabel jLabelDegrade6;
    private javax.swing.JLabel jLabelDegrade7;
    private javax.swing.JLabel jLabelDegrade8;
    private javax.swing.JLabel jLabelEdad;
    private javax.swing.JLabel jLabelFondo;
    private javax.swing.JLabel jLabelLogoUNLa;
    private javax.swing.JLabel jLabelNombreApellido;
    private javax.swing.JLabel jLabelProcedimiento;
    private javax.swing.JLabel jLabelRelacionConVictima;
    private javax.swing.JLabel jLabelTitulo;
    private static javax.swing.JRadioButton jRadioButtonAscendenteDescendente;
    private static javax.swing.JRadioButton jRadioButtonConyugeExConyuge;
    private static javax.swing.JRadioButton jRadioButtonNo;
    private static javax.swing.JRadioButton jRadioButtonOtra;
    private static javax.swing.JRadioButton jRadioButtonParejaExPareja;
    private static javax.swing.JRadioButton jRadioButtonSi;
    private static javax.swing.JTextField jTextFieldDNI;
    private static javax.swing.JTextField jTextFieldEdad;
    private static javax.swing.JTextField jTextFieldNombreApellido;
    private org.jdesktop.beansbinding.BindingGroup bindingGroup;
    // End of variables declaration//GEN-END:variables
}
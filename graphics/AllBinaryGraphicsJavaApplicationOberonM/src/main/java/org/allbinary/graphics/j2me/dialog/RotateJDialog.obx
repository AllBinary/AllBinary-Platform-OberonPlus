{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.j2me.dialog
unit RotateJDialog;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Frame, ActionEvent, JTextField, JButton, JLabel, JPanel, JDialog;

type
  {AB:TYPES}
  TRotateJDialog = class(TJDialog)
  public
    logUtil: TLogUtil;
    hashMap: TJavaHashMap<TObject, TObject>;
    angleIncrementJTextField: TJTextField;
    jButton1: TJButton;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jPanel1: TJPanel;
    totalRotationJTextField: TJTextField;
    procedure InitFields;
        constructor Create(parent: TFrame; modal: Boolean);
        procedure initComponents;
        procedure jButton1ActionPerformed(evt: TActionEvent);
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  ActionListener, GroupLayout, JFrame, WindowAdapter, WindowEvent, ARunnable, HashMapJDialogListenerInterface, StdUtil, CommonStrings;


{AB:CODE}

procedure TRotateJDialog.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.hashMap := TStdUtil.getInstance().createHashMap();
  
  
  
  
  
  
end;
    

constructor TRotateJDialog.Create(parent: TFrame; modal: Boolean);
begin
        inherited Create(parent, modal);
        InitFields;
        Self.initComponents();
end;
    

procedure TRotateJDialog.initComponents;
var
  jPanel1Layout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.angleIncrementJTextField := TJTextField.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.totalRotationJTextField := TJTextField.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.jButton1 := TJButton.Create();
        Self.setDefaultCloseOperation(Tjavax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        Self.angleIncrementJTextField.setText('36');
        Self.jLabel1.setText('Angle Increment:');
        Self.totalRotationJTextField.setText('360');
        Self.jLabel2.setText('Total Angular Rotation:');
        Self.jButton1.setText('OK');
        Self.jButton1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton1ActionPerformed(evt);
end;
*));
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addGap(62, 62, 62).addComponent(Self.jButton1).addContainerGap(62, TShort.MAX_VALUE)));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jButton1));
        layout := TGroupLayout.Create(Self.getContentPane());
        Self.getContentPane().setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.jLabel1).addComponent(Self.jLabel2)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.UNRELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.totalRotationJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 31, TShort.MAX_VALUE).addComponent(Self.angleIncrementJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 31, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addContainerGap()).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.angleIncrementJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel1)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.totalRotationJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel2)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 16, TShort.MAX_VALUE).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap()));
        Self.pack();
end;
    

procedure TRotateJDialog.jButton1ActionPerformed(evt: TActionEvent);
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.hashMap.put(TJava.Box(IntToStr(0)), TJava.Box(IntToStr(Self.angleIncrementJTextField.getText())));
            Self.hashMap.put(TJava.Box(IntToStr(1)), TJava.Box(IntToStr(Self.totalRotationJTextField.getText())));
            ((TJava.ToObject(Self.getParent()) as IHashMapJDialogListenerInterface)).onHashMap(Self.hashMap);
            Self.setVisible(False);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.EXCEPTION, TJava.Box(Self), 'jButton1ActionPerformed');
            end;
        end;
end;
    

class procedure TRotateJDialog.main(args: TArray<string>);
begin
        Tjava.awt.EventQueue.invokeLater(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
var
  dialog: TRotateJDialog;
begin
                dialog := TRotateJDialog.Create(TJFrame.Create(), True);
                dialog.addWindowListener(TWindowAdapter.Create() (* Java anonymous class body: implement it as a named class
                    

                procedure T.windowClosing(e: TWindowEvent);
begin
                        Halt(0);
end;
* ));
                dialog.setVisible(True);
end;
*));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


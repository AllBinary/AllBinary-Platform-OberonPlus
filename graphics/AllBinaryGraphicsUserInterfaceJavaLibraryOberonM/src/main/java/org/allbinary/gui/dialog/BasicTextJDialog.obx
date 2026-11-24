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
// package org.allbinary.gui.dialog
unit BasicTextJDialog;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CloseJDialogListenerInterface, Frame, ActionEvent, JButton, JLabel, JDialog;

type
  {AB:TYPES}
  TBasicTextJDialog = class(TJDialog)
  public
    closeListenerInterface: ICloseJDialogListenerInterface;
    jButton1: TJButton;
    textJLabel: TJLabel;
    procedure InitFields;
        constructor Create(parent: TFrame; modal: Boolean; text: string); overload;
        procedure setText(text: string); virtual;
        procedure addCloseListener(closeListenerInterface: ICloseJDialogListenerInterface); virtual;
        constructor Create(text: string); overload;
        procedure initComponents;
        procedure jButton1ActionPerformed(evt: TActionEvent);
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  ActionListener, GroupLayout, JFrame, ARunnable;


{AB:CODE}

procedure TBasicTextJDialog.InitFields;
begin
  
  
  
end;
    

constructor TBasicTextJDialog.Create(parent: TFrame; modal: Boolean; text: string);
begin
        inherited Create(parent, modal);
        InitFields;
        Self.initComponents();
        Self.setText(text);
end;
    

procedure TBasicTextJDialog.setText(text: string);
begin
        Self.textJLabel.setText(text);
end;
    

procedure TBasicTextJDialog.addCloseListener(closeListenerInterface: ICloseJDialogListenerInterface);
begin
        Self.closeListenerInterface := closeListenerInterface;
end;
    

constructor TBasicTextJDialog.Create(text: string);
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.textJLabel.setText(text);
end;
    

procedure TBasicTextJDialog.initComponents;
var
  layout: TGroupLayout;
begin
        Self.jButton1 := TJButton.Create();
        Self.textJLabel := TJLabel.Create();
        Self.setDefaultCloseOperation(Tjavax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        Self.jButton1.setText('OK');
        Self.jButton1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton1ActionPerformed(evt);
end;
*));
        Self.textJLabel.setText('No Text Set');
        layout := TGroupLayout.Create(Self.getContentPane());
        Self.getContentPane().setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGap(80, 80, 80).addComponent(Self.jButton1)).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(Self.textJLabel, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 184, TShort.MAX_VALUE))).addContainerGap()));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGap(20, 20, 20).addComponent(Self.textJLabel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 20, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGap(30, 30, 30).addComponent(Self.jButton1)));
        Self.pack();
end;
    

procedure TBasicTextJDialog.jButton1ActionPerformed(evt: TActionEvent);
begin
        Self.setVisible(False);
        if (Self.closeListenerInterface) <> (nil) then begin
            Self.closeListenerInterface.onClose();
        end;
end;
    

class procedure TBasicTextJDialog.main(args: TArray<string>);
begin
        Tjava.awt.EventQueue.invokeLater(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
begin
                TBasicTextJDialog.Create(TJFrame.Create(), True, 'Test').setVisible(True);
end;
*));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


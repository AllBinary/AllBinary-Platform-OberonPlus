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
// package org.allbinary.input.automation.actions.script.condition
unit AlwaysActionScriptConditionJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, AlwaysActionScriptConditionInterface, JDialog, ActionEvent, JButton, JComboBox, JLabel, JPanel;

type
  {AB:TYPES}
  TAlwaysActionScriptConditionJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    alwaysActionScriptConditionInterface: IAlwaysActionScriptConditionInterface;
    alwaysActionJButton: TJButton;
    alwaysActionJDialog: TJDialog;
    alwaysJComboBox: TJComboBox;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    okJButton: TJButton;
    titleJLabel: TJLabel;
    procedure InitFields;
        constructor Create(alwaysActionScriptConditionInterface_: IAlwaysActionScriptConditionInterface);
        procedure set_;
        procedure update;
        function getAlwaysActionJDialog: TJDialog; virtual;
        procedure setAlwaysActionJDialog(alwaysActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure alwaysActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  Dimension, ActionListener, DefaultComboBoxModel, GroupLayout;


{AB:CODE}

procedure TAlwaysActionScriptConditionJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
end;
    

constructor TAlwaysActionScriptConditionJPanel.Create(alwaysActionScriptConditionInterface_: IAlwaysActionScriptConditionInterface);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.alwaysActionScriptConditionInterface := alwaysActionScriptConditionInterface_;
        Self.set_();
end;
    

procedure TAlwaysActionScriptConditionJPanel.set_;
begin
        if Self.alwaysActionScriptConditionInterface.isIsOn() then begin
            Self.alwaysJComboBox.setSelectedIndex(0);
        end else begin
            Self.alwaysJComboBox.setSelectedIndex(1);
        end;
        Self.alwaysActionScriptConditionInterface.log();
end;
    

procedure TAlwaysActionScriptConditionJPanel.update;
begin
        if (Self.alwaysJComboBox.getSelectedIndex()) = (0) then begin
            Self.alwaysActionScriptConditionInterface.setIsOn(True);
        end else begin
            Self.alwaysActionScriptConditionInterface.setIsOn(False);
        end;
        Self.alwaysActionScriptConditionInterface.log();
end;
    

function TAlwaysActionScriptConditionJPanel.getAlwaysActionJDialog: TJDialog;
begin
        Exit(Self.alwaysActionJDialog);
end;
    

procedure TAlwaysActionScriptConditionJPanel.setAlwaysActionJDialog(alwaysActionJDialog: TJDialog);
begin
        Self.alwaysActionJDialog := alwaysActionJDialog;
end;
    

procedure TAlwaysActionScriptConditionJPanel.initComponents;
var
  alwaysActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.alwaysActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.okJButton := TJButton.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.alwaysJComboBox := TJComboBox.Create();
        Self.alwaysActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.alwaysActionJDialog.setMinimumSize(TDimension.Create(250, 150));
        Self.titleJLabel.setText('Always Condition Options');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('On:');
        Self.alwaysJComboBox.setModel(TDefaultComboBoxModel.Create(TArray<string>.Create('true', 'false')));
        alwaysActionJDialogLayout := TGroupLayout.Create(Self.alwaysActionJDialog.getContentPane());
        Self.alwaysActionJDialog.getContentPane().setLayout(alwaysActionJDialogLayout);
        alwaysActionJDialogLayout.setHorizontalGroup(alwaysActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGroup(alwaysActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGap(47, 47, 47).addGroup(alwaysActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, alwaysActionJDialogLayout.createSequentialGroup().addComponent(Self.jLabel2).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.alwaysJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(Self.titleJLabel))).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addGap(79, 79, 79).addComponent(Self.okJButton))).addContainerGap(45, TShort.MAX_VALUE)));
        alwaysActionJDialogLayout.setVerticalGroup(alwaysActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(alwaysActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.titleJLabel).addGap(20, 20, 20).addGroup(alwaysActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.alwaysJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel2)).addGap(15, 15, 15).addComponent(Self.okJButton).addContainerGap()));
        Self.setMinimumSize(TDimension.Create(100, 0));
        Self.alwaysActionJButton.setText('Edit');
        Self.alwaysActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.alwaysActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Always:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 33, TShort.MAX_VALUE).addComponent(Self.alwaysActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.alwaysActionJButton)));
end;
    

procedure TAlwaysActionScriptConditionJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        Self.update();
        Self.getAlwaysActionJDialog().setVisible(False);
end;
    

procedure TAlwaysActionScriptConditionJPanel.alwaysActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getAlwaysActionJDialog().setVisible(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


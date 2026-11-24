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
unit TimeIntervalActionScriptConditionJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, TimeIntervalActionScriptConditionInterface, JTextField, JDialog, ActionEvent, JLabel, JButton, JPanel;

type
  {AB:TYPES}
  TTimeIntervalActionScriptConditionJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    timeIntervalActionScriptConditionInterface: ITimeIntervalActionScriptConditionInterface;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    okJButton: TJButton;
    timeIntervalActionJButton: TJButton;
    timeIntervalActionJDialog: TJDialog;
    timeIntervalJTextField: TJTextField;
    titleJLabel: TJLabel;
    procedure InitFields;
        constructor Create(timeIntervalActionScriptConditionInterface_: ITimeIntervalActionScriptConditionInterface);
        procedure set_;
        procedure update;
        function getTimeIntervalJTextField: TJTextField; virtual;
        procedure setTimeIntervalJTextField(timeIntervalJTextField: TJTextField); virtual;
        function getTimeIntervalActionJDialog: TJDialog; virtual;
        procedure setTimeIntervalActionJDialog(timeIntervalActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure timeIntervalActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout;


{AB:CODE}

procedure TTimeIntervalActionScriptConditionJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
end;
    

constructor TTimeIntervalActionScriptConditionJPanel.Create(timeIntervalActionScriptConditionInterface_: ITimeIntervalActionScriptConditionInterface);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.timeIntervalActionScriptConditionInterface := timeIntervalActionScriptConditionInterface_;
        Self.set_();
end;
    

procedure TTimeIntervalActionScriptConditionJPanel.set_;
begin
        Self.getTimeIntervalJTextField().setText(IntToStr(Self.timeIntervalActionScriptConditionInterface.getTimeDelayHelper().delay));
        Self.timeIntervalActionScriptConditionInterface.log();
end;
    

procedure TTimeIntervalActionScriptConditionJPanel.update;
begin
        Self.timeIntervalActionScriptConditionInterface.getTimeDelayHelper().delay := IntToStr(Self.getTimeIntervalJTextField().getText());
        Self.timeIntervalActionScriptConditionInterface.log();
end;
    

function TTimeIntervalActionScriptConditionJPanel.getTimeIntervalJTextField: TJTextField;
begin
        Exit(Self.timeIntervalJTextField);
end;
    

procedure TTimeIntervalActionScriptConditionJPanel.setTimeIntervalJTextField(timeIntervalJTextField: TJTextField);
begin
        Self.timeIntervalJTextField := timeIntervalJTextField;
end;
    

function TTimeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog: TJDialog;
begin
        Exit(Self.timeIntervalActionJDialog);
end;
    

procedure TTimeIntervalActionScriptConditionJPanel.setTimeIntervalActionJDialog(timeIntervalActionJDialog: TJDialog);
begin
        Self.timeIntervalActionJDialog := timeIntervalActionJDialog;
end;
    

procedure TTimeIntervalActionScriptConditionJPanel.initComponents;
var
  timeIntervalActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.timeIntervalActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.okJButton := TJButton.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.timeIntervalJTextField := TJTextField.Create();
        Self.timeIntervalActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.timeIntervalActionJDialog.setMinimumSize(TDimension.Create(250, 150));
        Self.titleJLabel.setText('Time Interval Condition Options');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('Time (ms):');
        timeIntervalActionJDialogLayout := TGroupLayout.Create(Self.timeIntervalActionJDialog.getContentPane());
        Self.timeIntervalActionJDialog.getContentPane().setLayout(timeIntervalActionJDialogLayout);
        timeIntervalActionJDialogLayout.setHorizontalGroup(timeIntervalActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addGroup(timeIntervalActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup().addGap(82, 82, 82).addComponent(Self.okJButton)).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, timeIntervalActionJDialogLayout.createSequentialGroup().addGap(32, 32, 32).addGroup(timeIntervalActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addComponent(Self.jLabel2).addGap(16, 16, 16).addComponent(Self.timeIntervalJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 85, TShort.MAX_VALUE)).addComponent(Self.titleJLabel)))).addContainerGap(36, TShort.MAX_VALUE)));
        timeIntervalActionJDialogLayout.setVerticalGroup(timeIntervalActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(timeIntervalActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.titleJLabel).addGap(20, 20, 20).addGroup(timeIntervalActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel2).addComponent(Self.timeIntervalJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGap(15, 15, 15).addComponent(Self.okJButton).addContainerGap()));
        Self.setMinimumSize(TDimension.Create(100, 0));
        Self.timeIntervalActionJButton.setText('Edit');
        Self.timeIntervalActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.timeIntervalActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Time Interval:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.timeIntervalActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.timeIntervalActionJButton)));
end;
    

procedure TTimeIntervalActionScriptConditionJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        Self.update();
        Self.getTimeIntervalActionJDialog().setVisible(False);
end;
    

procedure TTimeIntervalActionScriptConditionJPanel.timeIntervalActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getTimeIntervalActionJDialog().setVisible(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


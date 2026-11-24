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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions
unit GenericProfileActionJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericProfileActionScriptJPanel, LogUtil, GenericProfileAction, ActionEvent, JPanel, JScrollPane, JLabel, JButton;

type
  {AB:TYPES}
  TGenericProfileActionJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    genericProfileAction: TGenericProfileAction;
    genericProfileActionScriptJPanel: TGenericProfileActionScriptJPanel;
    blankProfileActionScriptJPanel: TJPanel;
    genericProfileActionScriptJScrollPane: TJScrollPane;
    ifJLabel: TJLabel;
    newAlwaysJButton: TJButton;
    newColorAtJButton: TJButton;
    newTimeIntervalJButton: TJButton;
    procedure InitFields;
        constructor Create;
        procedure updateProfileActionUI; virtual;
        function getGenericProfileAction: TGenericProfileAction; virtual;
        procedure setGenericProfileAction(genericProfileAction_: TGenericProfileAction); virtual;
        function getGenericProfileActionScriptJPanel: TGenericProfileActionScriptJPanel; virtual;
        procedure setGenericProfileActionScriptJPanel(genericProfileActionScriptJPanel_: TGenericProfileActionScriptJPanel); virtual;
        procedure initComponents;
        procedure newTimeIntervalJButtonActionPerformed(evt: TActionEvent);
        procedure newAlwaysJButtonActionPerformed(evt: TActionEvent);
        procedure newColorAtJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  GroupLayout, Dimension, ActionListener, JTreeInterfaceFactory, AlwaysActionScriptCondition, ColorAtActionScriptCondition, ProfileActionScriptConditionInterface, TimeIntervalActionScriptCondition;


{AB:CODE}

procedure TGenericProfileActionJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
end;
    

constructor TGenericProfileActionJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
end;
    

procedure TGenericProfileActionJPanel.updateProfileActionUI;
var
  genericProfileActionScriptJPanel_: TGenericProfileActionScriptJPanel;
  layout: TGroupLayout;
begin
        Self.blankProfileActionScriptJPanel.removeAll();
        genericProfileActionScriptJPanel_ := TGenericProfileActionScriptJPanel.Create();
        TJTreeInterfaceFactory.getInstance().set_(genericProfileActionScriptJPanel_);
        Self.setGenericProfileActionScriptJPanel(genericProfileActionScriptJPanel_);
        Self.getGenericProfileActionScriptJPanel().setGenericProfileActionScript(Self.getGenericProfileAction().getGenericProfileActionScript());
        Self.getGenericProfileActionScriptJPanel().updateJTree();
        layout := TGroupLayout(TJava.ToObject(Self.blankProfileActionScriptJPanel.getLayout()));
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE).addComponent(Self.getGenericProfileActionScriptJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, TShort.MAX_VALUE).addComponent(Self.getGenericProfileActionScriptJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
        Self.logUtil.putF('Updated UI', TJava.Box(Self), 'updateUI');
end;
    

function TGenericProfileActionJPanel.getGenericProfileAction: TGenericProfileAction;
begin
        Exit(Self.genericProfileAction);
end;
    

procedure TGenericProfileActionJPanel.setGenericProfileAction(genericProfileAction_: TGenericProfileAction);
begin
        Self.genericProfileAction := genericProfileAction_;
end;
    

function TGenericProfileActionJPanel.getGenericProfileActionScriptJPanel: TGenericProfileActionScriptJPanel;
begin
        Exit(Self.genericProfileActionScriptJPanel);
end;
    

procedure TGenericProfileActionJPanel.setGenericProfileActionScriptJPanel(genericProfileActionScriptJPanel_: TGenericProfileActionScriptJPanel);
begin
        Self.genericProfileActionScriptJPanel := genericProfileActionScriptJPanel_;
end;
    

procedure TGenericProfileActionJPanel.initComponents;
var
  blankProfileActionScriptJPanelLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.genericProfileActionScriptJScrollPane := TJScrollPane.Create();
        Self.blankProfileActionScriptJPanel := TJPanel.Create();
        Self.ifJLabel := TJLabel.Create();
        Self.newColorAtJButton := TJButton.Create();
        Self.newTimeIntervalJButton := TJButton.Create();
        Self.newAlwaysJButton := TJButton.Create();
        Self.setMinimumSize(TDimension.Create(440, 275));
        Self.setPreferredSize(TDimension.Create(440, 275));
        Self.genericProfileActionScriptJScrollPane.setPreferredSize(TDimension.Create(474, 270));
        Self.blankProfileActionScriptJPanel.setMinimumSize(TDimension.Create(400, 200));
        blankProfileActionScriptJPanelLayout := TGroupLayout.Create(Self.blankProfileActionScriptJPanel);
        Self.blankProfileActionScriptJPanel.setLayout(blankProfileActionScriptJPanelLayout);
        blankProfileActionScriptJPanelLayout.setHorizontalGroup(blankProfileActionScriptJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 9996, TShort.MAX_VALUE));
        blankProfileActionScriptJPanelLayout.setVerticalGroup(blankProfileActionScriptJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 9967, TShort.MAX_VALUE));
        Self.genericProfileActionScriptJScrollPane.setViewportView(Self.blankProfileActionScriptJPanel);
        Self.ifJLabel.setText('Conditions:');
        Self.newColorAtJButton.setText('Color Range At');
        Self.newColorAtJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newColorAtJButtonActionPerformed(evt);
end;
*));
        Self.newTimeIntervalJButton.setText('Time Interval');
        Self.newTimeIntervalJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newTimeIntervalJButtonActionPerformed(evt);
end;
*));
        Self.newAlwaysJButton.setText('Always On/Off');
        Self.newAlwaysJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newAlwaysJButtonActionPerformed(evt);
end;
*));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.ifJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.newColorAtJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.newTimeIntervalJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.newAlwaysJButton).addContainerGap(61, TShort.MAX_VALUE)).addComponent(Self.genericProfileActionScriptJScrollPane, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 440, TShort.MAX_VALUE));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.ifJLabel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 14, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.newColorAtJButton).addComponent(Self.newTimeIntervalJButton).addComponent(Self.newAlwaysJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.genericProfileActionScriptJScrollPane, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 246, TShort.MAX_VALUE)));
end;
    

procedure TGenericProfileActionJPanel.newTimeIntervalJButtonActionPerformed(evt: TActionEvent);
begin
        Self.logUtil.putF('New Time Interval Action Condition', TJava.Box(Self), 'newTimeIntervalJButtonActionPerformed');
        Self.getGenericProfileAction().getGenericProfileActionScript().addCondition((TJava.ToObject(TTimeIntervalActionScriptCondition.Create()) as IProfileActionScriptConditionInterface));
        Self.updateProfileActionUI();
end;
    

procedure TGenericProfileActionJPanel.newAlwaysJButtonActionPerformed(evt: TActionEvent);
begin
        Self.logUtil.putF('New EveryTime Action Condition', TJava.Box(Self), 'newEveryTimeJButtonActionPerformed');
        Self.getGenericProfileAction().getGenericProfileActionScript().addCondition((TJava.ToObject(TAlwaysActionScriptCondition.Create()) as IProfileActionScriptConditionInterface));
        Self.updateProfileActionUI();
end;
    

procedure TGenericProfileActionJPanel.newColorAtJButtonActionPerformed(evt: TActionEvent);
begin
        Self.logUtil.putF('New Color At Action Condition', TJava.Box(Self), 'newColorAtJButtonActionPerformed');
        Self.getGenericProfileAction().getGenericProfileActionScript().addCondition((TJava.ToObject(TColorAtActionScriptCondition.Create()) as IProfileActionScriptConditionInterface));
        Self.updateProfileActionUI();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


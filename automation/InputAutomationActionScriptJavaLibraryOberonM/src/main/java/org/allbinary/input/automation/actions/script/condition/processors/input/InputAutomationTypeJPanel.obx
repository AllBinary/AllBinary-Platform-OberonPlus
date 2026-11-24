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
// package org.allbinary.input.automation.actions.script.condition.processors.input
unit InputAutomationTypeJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, JComboBox, JLabel, JPanel;

type
  {AB:TYPES}
  TInputAutomationTypeJPanel = class(TJPanel)
  public
    inputAutomationTypeJComboBox: TJComboBox;
    jLabel1: TJLabel;
    procedure InitFields;
        constructor Create;
        function getInputAutomationTypeJComboBox: TJComboBox; virtual;
        procedure setInputAutomationTypeJComboBox(inputAutomationTypeJComboBox: TJComboBox); virtual;
        procedure initComponents;
  end;

implementation
uses
  DefaultComboBoxModel, GroupLayout;


{AB:CODE}

procedure TInputAutomationTypeJPanel.InitFields;
begin
  
  
end;
    

constructor TInputAutomationTypeJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
end;
    

function TInputAutomationTypeJPanel.getInputAutomationTypeJComboBox: TJComboBox;
begin
        Exit(Self.inputAutomationTypeJComboBox);
end;
    

procedure TInputAutomationTypeJPanel.setInputAutomationTypeJComboBox(inputAutomationTypeJComboBox: TJComboBox);
begin
        Self.inputAutomationTypeJComboBox := inputAutomationTypeJComboBox;
end;
    

procedure TInputAutomationTypeJPanel.initComponents;
var
  layout: TGroupLayout;
begin
        Self.inputAutomationTypeJComboBox := TJComboBox.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.inputAutomationTypeJComboBox.setModel(TDefaultComboBoxModel.Create(TArray<string>.Create('DirectX', 'DirectX 8', 'Low Level', 'Java Robot')));
        Self.jLabel1.setText('Input Type:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.inputAutomationTypeJComboBox, 0, 98, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.inputAutomationTypeJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


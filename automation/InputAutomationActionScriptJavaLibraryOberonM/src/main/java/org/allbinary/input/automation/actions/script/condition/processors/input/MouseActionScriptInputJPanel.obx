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
unit MouseActionScriptInputJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, MouseActionScriptInputInterface, JDialog, ActionEvent, JCheckBox, JComboBox, JLabel, JButton, JTextField, JPanel;

type
  {AB:TYPES}
  TMouseActionScriptInputJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    mouseActionScriptInputInterface: IMouseActionScriptInputInterface;
    button1JCheckBox: TJCheckBox;
    button2JCheckBox: TJCheckBox;
    inputAutomationTypeJComboBox: TJComboBox;
    inputTypeJLabel: TJLabel;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jLabel4: TJLabel;
    jLabel5: TJLabel;
    jLabel6: TJLabel;
    mouseActionJButton: TJButton;
    mouseActionJDialog: TJDialog;
    mouseDelayJTextField: TJTextField;
    mouseXJTextField: TJTextField;
    mouseYJTextField: TJTextField;
    okJButton: TJButton;
    titleJLabel: TJLabel;
    procedure InitFields;
        constructor Create(mouseActionScriptInputInterface_: IMouseActionScriptInputInterface);
        procedure set_;
        procedure updateInputType;
        procedure update;
        function getMouseActionJDialog: TJDialog; virtual;
        procedure setMouseActionJDialog(mouseActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure button2JCheckBoxActionPerformed(evt: TActionEvent);
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure mouseActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  DefaultComboBoxModel, ComboBoxModel, Dimension, ActionListener, Insets, GroupLayout, InputRobot, InputRobotFactory, TempInputRobotNames, CommonLabels, CommonPhoneStrings;


{AB:CODE}

procedure TMouseActionScriptInputJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TMouseActionScriptInputJPanel.Create(mouseActionScriptInputInterface_: IMouseActionScriptInputInterface);
var
  defaultComboBoxModel_: TDefaultComboBoxModel;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF((TCommonLabels.getInstance().START) + (mouseActionScriptInputInterface_), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.mouseActionScriptInputInterface := mouseActionScriptInputInterface_;
        defaultComboBoxModel_ := TDefaultComboBoxModel.Create();
        defaultComboBoxModel_.addElement(TTempInputRobotNames.LOW_NAME);
        defaultComboBoxModel_.addElement(TTempInputRobotNames.SYS_NAME);
        defaultComboBoxModel_.addElement(TInputRobot.NAME);
        Self.inputAutomationTypeJComboBox.setModel(defaultComboBoxModel_);
        Self.set_();
end;
    

procedure TMouseActionScriptInputJPanel.set_;
var
  inputTypeComboBoxModel: TComboBoxModel;
begin
        inputTypeComboBoxModel := Self.inputAutomationTypeJComboBox.getModel();
        inputTypeComboBoxModel.setSelectedItem(Self.mouseActionScriptInputInterface.getInputRobotInterface().getName());
        if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON1_MASK))) <> (0) then begin
            Self.button1JCheckBox.setSelected(True);
        end else begin
            Self.button1JCheckBox.setSelected(False);
        end;
        if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON2_MASK))) <> (0) then begin
            Self.button2JCheckBox.setSelected(True);
        end else begin
            Self.button2JCheckBox.setSelected(False);
        end;
        Self.mouseDelayJTextField.setText(IntToStr(Self.mouseActionScriptInputInterface.getTime()));
        Self.mouseXJTextField.setText(IntToStr(Self.mouseActionScriptInputInterface.getPoint().x));
        Self.mouseYJTextField.setText(IntToStr(Self.mouseActionScriptInputInterface.getPoint().y));
        Self.mouseActionScriptInputInterface.log();
end;
    

// throws Exception
procedure TMouseActionScriptInputJPanel.updateInputType;
var
  comboBoxModel_: TComboBoxModel;
  selectedItem: string;
begin
        comboBoxModel_ := Self.inputAutomationTypeJComboBox.getModel();
        selectedItem := TJava.UnboxString(TJava.ToObject(comboBoxModel_.getSelectedItem()));
        if not ((selectedItem = '')) then begin
            Self.mouseActionScriptInputInterface.setInputRobotInterface(TInputRobotFactory.getInstance().get(selectedItem));
        end;
end;
    

// throws Exception
procedure TMouseActionScriptInputJPanel.update;
var
  mouseXString: string;
  mouseYString: string;
begin
        Self.updateInputType();
        Self.mouseActionScriptInputInterface.setTime(IntToStr(Self.mouseDelayJTextField.getText()));
        Self.logUtil.putF('Button State: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), TJava.Box(Self), 'update');
        if Self.button1JCheckBox.isSelected() then begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON1_MASK))) = (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) or (TInputEvent.BUTTON1_MASK));
                Self.logUtil.putF('Button 1 Selected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), TJava.Box(Self), 'update');
            end;
        end else begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON1_MASK))) <> (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) xor (TInputEvent.BUTTON1_MASK));
                Self.logUtil.putF('Button 1 Deselected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), TJava.Box(Self), 'update');
            end;
        end;
        if Self.button2JCheckBox.isSelected() then begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON2_MASK))) = (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) or (TInputEvent.BUTTON2_MASK));
                Self.logUtil.putF('Button 2 Selected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), TJava.Box(Self), 'update');
            end;
        end else begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON2_MASK))) <> (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) xor (TInputEvent.BUTTON2_MASK));
                Self.logUtil.putF('Button 2 Deselected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), TJava.Box(Self), 'update');
            end;
        end;
        mouseXString := Self.mouseXJTextField.getText();
        if (not ((mouseXString = ''))) and (TJava.IsNumber(mouseXString)) then begin
            Self.mouseActionScriptInputInterface.getPoint().x := StrToInt(mouseXString);
        end;
        mouseYString := Self.mouseYJTextField.getText();
        if (not ((mouseYString = ''))) and (TJava.IsNumber(mouseYString)) then begin
            Self.mouseActionScriptInputInterface.getPoint().y := StrToInt(mouseYString);
        end;
        Self.mouseActionScriptInputInterface.log();
end;
    

function TMouseActionScriptInputJPanel.getMouseActionJDialog: TJDialog;
begin
        Exit(Self.mouseActionJDialog);
end;
    

procedure TMouseActionScriptInputJPanel.setMouseActionJDialog(mouseActionJDialog: TJDialog);
begin
        Self.mouseActionJDialog := mouseActionJDialog;
end;
    

procedure TMouseActionScriptInputJPanel.initComponents;
var
  mouseActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.mouseActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.okJButton := TJButton.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.button1JCheckBox := TJCheckBox.Create();
        Self.button2JCheckBox := TJCheckBox.Create();
        Self.jLabel4 := TJLabel.Create();
        Self.mouseXJTextField := TJTextField.Create();
        Self.jLabel5 := TJLabel.Create();
        Self.mouseYJTextField := TJTextField.Create();
        Self.inputTypeJLabel := TJLabel.Create();
        Self.inputAutomationTypeJComboBox := TJComboBox.Create();
        Self.jLabel6 := TJLabel.Create();
        Self.mouseDelayJTextField := TJTextField.Create();
        Self.mouseActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.mouseActionJDialog.setMinimumSize(TDimension.Create(275, 185));
        Self.titleJLabel.setText('Mouse Input Options');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('Buttons:');
        Self.jLabel3.setText('Move To:');
        Self.button1JCheckBox.setText(TCommonPhoneStrings.getInstance().ONE);
        Self.button1JCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.button1JCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.button2JCheckBox.setText(TCommonPhoneStrings.getInstance().TWO);
        Self.button2JCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.button2JCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.button2JCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.button2JCheckBoxActionPerformed(evt);
end;
*));
        Self.jLabel4.setText('x:');
        Self.mouseXJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.jLabel5.setText('y:');
        Self.mouseYJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.inputTypeJLabel.setText('Input Type:');
        Self.jLabel6.setText('Delay:');
        Self.mouseDelayJTextField.setText('100');
        mouseActionJDialogLayout := TGroupLayout.Create(Self.mouseActionJDialog.getContentPane());
        Self.mouseActionJDialog.getContentPane().setLayout(mouseActionJDialogLayout);
        mouseActionJDialogLayout.setHorizontalGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.inputTypeJLabel).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.jLabel2).addGap(25, 25, 25)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel3).addComponent(Self.jLabel6)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED))).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.mouseDelayJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 154, TShort.MAX_VALUE).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addGap(45, 45, 45)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.inputAutomationTypeJComboBox, 0, 154, TShort.MAX_VALUE)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.button1JCheckBox).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.button2JCheckBox)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.okJButton)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.jLabel4).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 5, TShort.MAX_VALUE).addComponent(Self.mouseXJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 59, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel5).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.mouseYJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 62, TShort.MAX_VALUE))))).addContainerGap()));
        mouseActionJDialogLayout.setVerticalGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.inputTypeJLabel).addComponent(Self.inputAutomationTypeJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel2, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 15, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.button1JCheckBox).addComponent(Self.button2JCheckBox))).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel6).addComponent(Self.mouseDelayJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel3).addComponent(Self.jLabel4).addComponent(Self.jLabel5).addComponent(Self.mouseYJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.mouseXJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.okJButton).addContainerGap()));
        Self.setMinimumSize(TDimension.Create(100, 0));
        Self.mouseActionJButton.setText('Edit');
        Self.mouseActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.mouseActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Mouse:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, TShort.MAX_VALUE).addComponent(Self.mouseActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.mouseActionJButton)));
end;
    

procedure TMouseActionScriptInputJPanel.button2JCheckBoxActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TMouseActionScriptInputJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        try
            Self.update();
            Self.getMouseActionJDialog().setVisible(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'okButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TMouseActionScriptInputJPanel.mouseActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getMouseActionJDialog().setVisible(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


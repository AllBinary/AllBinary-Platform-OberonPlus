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
unit KeyboardActionScriptInputJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, KeyboardActionScriptInputInterface, JDialog, ActionEvent, JLabel, JTextField, JComboBox, JPanel, JButton, JRadioButton;

type
  {AB:TYPES}
  TKeyboardActionScriptInputJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    keyActionScriptInputInterface: IKeyboardActionScriptInputInterface;
    addKeyJLabel: TJLabel;
    delayBetweenJLabel: TJLabel;
    delayJTextField: TJTextField;
    holdTimeJLabel: TJLabel;
    inputAutomationTypeJComboBox: TJComboBox;
    inputTypeJLabel: TJLabel;
    jLabel1: TJLabel;
    jPanel1: TJPanel;
    keyActionJButton: TJButton;
    keyActionJDialog: TJDialog;
    keyIntegerJComboBox: TJComboBox;
    keyNameJComboBox: TJComboBox;
    normalJRadioButton: TJRadioButton;
    okJButton: TJButton;
    pressJRadioButton: TJRadioButton;
    releaseJRadioButton: TJRadioButton;
    sequenceJRadioButton: TJRadioButton;
    simultaneousJRadioButton: TJRadioButton;
    testJLabel: TJLabel;
    textJTextField: TJTextField;
    timeJTextField: TJTextField;
    titleJLabel: TJLabel;
    procedure InitFields;
        constructor Create(keyActionScriptInputInterface: IKeyboardActionScriptInputInterface);
        procedure set_;
        procedure updateInputType;
        function getSelectedKey: Integer;
        procedure updateKeys;
        procedure update;
        function getKeyActionJDialog: TJDialog; virtual;
        procedure setKeyActionJDialog(keyActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure prependText(integer_: Integer);
        procedure keyIntegerJComboBoxActionPerformed(evt: TActionEvent);
        procedure sequenceJRadioButtonActionPerformed(evt: TActionEvent);
        procedure simultaneousJRadioButtonActionPerformed(evt: TActionEvent);
        procedure keyNameJComboBoxActionPerformed(evt: TActionEvent);
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure keyActionJButtonActionPerformed(evt: TActionEvent);
        procedure normalJRadioButtonActionPerformed(evt: TActionEvent);
        procedure releaseJRadioButtonActionPerformed(evt: TActionEvent);
        procedure pressJRadioButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  DefaultComboBoxModel, KeyNameDefaultComboBoxModelFactory, KeyCharDefaultComboBoxModelFactory, ComboBoxModel, Dimension, ActionListener, Insets, GroupLayout, KeySingletonFactory, InputRobot, InputRobotFactory, TempInputRobotNames, CommonPhoneStrings;


{AB:CODE}

procedure TKeyboardActionScriptInputJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TKeyboardActionScriptInputJPanel.Create(keyActionScriptInputInterface: IKeyboardActionScriptInputInterface);
var
  defaultComboBoxModel_: TDefaultComboBoxModel;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.keyActionScriptInputInterface := keyActionScriptInputInterface;
        defaultComboBoxModel_ := TDefaultComboBoxModel.Create();
        defaultComboBoxModel_.addElement(TTempInputRobotNames.DX_NAME);
        defaultComboBoxModel_.addElement(TInputRobot.NAME);
        Self.inputAutomationTypeJComboBox.setModel(defaultComboBoxModel_);
        Self.keyNameJComboBox.setModel(TKeyNameDefaultComboBoxModelFactory.getInstance());
        Self.keyIntegerJComboBox.setModel(TKeyCharDefaultComboBoxModelFactory.getInstance());
        if Self.keyActionScriptInputInterface.isNormal() then begin
            Self.normalJRadioButton.setSelected(True);
            Self.pressJRadioButton.setSelected(False);
            Self.releaseJRadioButton.setSelected(False);
        end else if Self.keyActionScriptInputInterface.isPress() then begin
            Self.normalJRadioButton.setSelected(False);
            Self.pressJRadioButton.setSelected(True);
            Self.releaseJRadioButton.setSelected(False);
        end else if Self.keyActionScriptInputInterface.isRelease() then begin
            Self.normalJRadioButton.setSelected(False);
            Self.pressJRadioButton.setSelected(False);
            Self.releaseJRadioButton.setSelected(True);
        end;
        Self.set_();
end;
    

procedure TKeyboardActionScriptInputJPanel.set_;
var
  inputTypeComboBoxModel: TComboBoxModel;
begin
        inputTypeComboBoxModel := Self.inputAutomationTypeJComboBox.getModel();
        inputTypeComboBoxModel.setSelectedItem(Self.keyActionScriptInputInterface.getInputRobotInterface().getName());
        Self.textJTextField.setText(Self.keyActionScriptInputInterface.getText());
        Self.delayJTextField.setText(IntToStr(Self.keyActionScriptInputInterface.getDelayBetweenKeys()));
        Self.timeJTextField.setText(IntToStr(Self.keyActionScriptInputInterface.getTime()));
        Self.keyActionScriptInputInterface.log();
end;
    

// throws Exception
procedure TKeyboardActionScriptInputJPanel.updateInputType;
var
  comboBoxModel_: TComboBoxModel;
  selectedItem: string;
begin
        comboBoxModel_ := Self.inputAutomationTypeJComboBox.getModel();
        selectedItem := TJava.UnboxString(TJava.ToObject(comboBoxModel_.getSelectedItem()));
        if not ((selectedItem = '')) then begin
            Self.keyActionScriptInputInterface.setInputRobotInterface(TInputRobotFactory.getInstance().get(selectedItem));
        end;
end;
    

function TKeyboardActionScriptInputJPanel.getSelectedKey: Integer;
var
  comboBoxModel_: TComboBoxModel;
  selectedItem: string;
begin
        comboBoxModel_ := Self.keyNameJComboBox.getModel();
        selectedItem := TJava.UnboxString(TJava.ToObject(comboBoxModel_.getSelectedItem()));
        if not ((selectedItem = '')) then begin
            Exit(Integer(TKeySingletonFactory.getHashtable().get(TJava.Box(selectedItem))));
        end;
        Exit(nil);
end;
    

procedure TKeyboardActionScriptInputJPanel.updateKeys;
var
  text: string;
begin
        text := Self.textJTextField.getText();
        Self.keyActionScriptInputInterface.setText(text);
end;
    

// throws Exception
procedure TKeyboardActionScriptInputJPanel.update;
begin
        Self.updateInputType();
        Self.updateKeys();
        Self.keyActionScriptInputInterface.setTime(TJava.IntValueOf(Self.timeJTextField.getText()));
        Self.keyActionScriptInputInterface.log();
end;
    

function TKeyboardActionScriptInputJPanel.getKeyActionJDialog: TJDialog;
begin
        Exit(Self.keyActionJDialog);
end;
    

procedure TKeyboardActionScriptInputJPanel.setKeyActionJDialog(keyActionJDialog: TJDialog);
begin
        Self.keyActionJDialog := keyActionJDialog;
end;
    

procedure TKeyboardActionScriptInputJPanel.initComponents;
var
  keyActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.keyActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.addKeyJLabel := TJLabel.Create();
        Self.keyNameJComboBox := TJComboBox.Create();
        Self.timeJTextField := TJTextField.Create();
        Self.holdTimeJLabel := TJLabel.Create();
        Self.inputAutomationTypeJComboBox := TJComboBox.Create();
        Self.inputTypeJLabel := TJLabel.Create();
        Self.delayJTextField := TJTextField.Create();
        Self.delayBetweenJLabel := TJLabel.Create();
        Self.testJLabel := TJLabel.Create();
        Self.textJTextField := TJTextField.Create();
        Self.pressJRadioButton := TJRadioButton.Create();
        Self.releaseJRadioButton := TJRadioButton.Create();
        Self.normalJRadioButton := TJRadioButton.Create();
        Self.simultaneousJRadioButton := TJRadioButton.Create();
        Self.sequenceJRadioButton := TJRadioButton.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.okJButton := TJButton.Create();
        Self.keyIntegerJComboBox := TJComboBox.Create();
        Self.keyActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.keyActionJDialog.setMinimumSize(TDimension.Create(255, 280));
        Self.titleJLabel.setHorizontalAlignment(Tjavax.swing.SwingConstants.CENTER);
        Self.titleJLabel.setText('Keyboard Input Options');
        Self.addKeyJLabel.setText('Add Key:');
        Self.keyNameJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.keyNameJComboBoxActionPerformed(evt);
end;
*));
        Self.timeJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.holdTimeJLabel.setText('Hold Time (ms):');
        Self.inputTypeJLabel.setText('Input Type:');
        Self.delayJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.delayBetweenJLabel.setText('Delay Between Keys (ms):');
        Self.testJLabel.setText('Text:');
        Self.textJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.pressJRadioButton.setText('Press');
        Self.pressJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.pressJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.pressJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.pressJRadioButtonActionPerformed(evt);
end;
*));
        Self.releaseJRadioButton.setText('Release');
        Self.releaseJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.releaseJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.releaseJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.releaseJRadioButtonActionPerformed(evt);
end;
*));
        Self.normalJRadioButton.setSelected(True);
        Self.normalJRadioButton.setText('Normal');
        Self.normalJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.normalJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.normalJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.normalJRadioButtonActionPerformed(evt);
end;
*));
        Self.simultaneousJRadioButton.setSelected(True);
        Self.simultaneousJRadioButton.setText('Simultaneous');
        Self.simultaneousJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.simultaneousJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.simultaneousJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.simultaneousJRadioButtonActionPerformed(evt);
end;
*));
        Self.sequenceJRadioButton.setText('Sequence');
        Self.sequenceJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.sequenceJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.sequenceJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.sequenceJRadioButtonActionPerformed(evt);
end;
*));
        Self.okJButton.setText('OK');
        Self.okJButton.setHorizontalTextPosition(Tjavax.swing.SwingConstants.CENTER);
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        Self.jPanel1.add(Self.okJButton);
        Self.keyIntegerJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.keyIntegerJComboBoxActionPerformed(evt);
end;
*));
        keyActionJDialogLayout := TGroupLayout.Create(Self.keyActionJDialog.getContentPane());
        Self.keyActionJDialog.getContentPane().setLayout(keyActionJDialogLayout);
        keyActionJDialogLayout.setHorizontalGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addComponent(Self.addKeyJLabel, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.inputTypeJLabel, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.inputAutomationTypeJComboBox, 0, 148, TShort.MAX_VALUE).addComponent(Self.textJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 148, TShort.MAX_VALUE).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.keyNameJComboBox, 0, 101, TShort.MAX_VALUE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.keyIntegerJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 41, Tjavax.swing.GroupLayout.PREFERRED_SIZE)))).addComponent(Self.testJLabel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 60, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.normalJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.pressJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.releaseJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 48, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, keyActionJDialogLayout.createSequentialGroup().addComponent(Self.holdTimeJLabel).addGap(22, 22, 22).addComponent(Self.timeJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 113, TShort.MAX_VALUE)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.delayBetweenJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 15, TShort.MAX_VALUE).addComponent(Self.delayJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 68, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.simultaneousJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.sequenceJRadioButton))).addContainerGap()).addComponent(Self.titleJLabel, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 229, TShort.MAX_VALUE).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 229, TShort.MAX_VALUE));
        keyActionJDialogLayout.setVerticalGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.inputTypeJLabel).addComponent(Self.inputAutomationTypeJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.addKeyJLabel).addComponent(Self.keyIntegerJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.keyNameJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.testJLabel).addComponent(Self.textJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.pressJRadioButton).addComponent(Self.normalJRadioButton).addComponent(Self.releaseJRadioButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.holdTimeJLabel).addComponent(Self.timeJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.delayBetweenJLabel).addComponent(Self.delayJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.simultaneousJRadioButton).addComponent(Self.sequenceJRadioButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap()));
        Self.setMinimumSize(TDimension.Create(100, 0));
        Self.keyActionJButton.setText('Edit');
        Self.keyActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.keyActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Key:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 49, TShort.MAX_VALUE).addComponent(Self.keyActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.keyActionJButton)));
end;
    

procedure TKeyboardActionScriptInputJPanel.prependText(integer_: Integer);
var
  newKey: string;
begin
        if (integer_) <> (0) then begin
            newKey := '&#' + integer_.toString() + ';';
            Self.textJTextField.setText(newKey + TJava.ToString(Self.textJTextField.getText()));
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.keyIntegerJComboBoxActionPerformed(evt: TActionEvent);
begin
        Self.keyIntegerJComboBox.getSelectedIndex();
        Self.keyNameJComboBox.setSelectedIndex(Self.keyIntegerJComboBox.getSelectedIndex());
end;
    

procedure TKeyboardActionScriptInputJPanel.sequenceJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.sequenceJRadioButton.isSelected() then begin
            Self.delayJTextField.setText(TCommonPhoneStrings.getInstance().ONE);
            Self.simultaneousJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.simultaneousJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.simultaneousJRadioButton.isSelected() then begin
            Self.delayJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
            Self.sequenceJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.keyNameJComboBoxActionPerformed(evt: TActionEvent);
var
  integer_: Integer;
begin
        integer_ := Self.getSelectedKey();
        Self.prependText(integer_);
        Self.keyIntegerJComboBox.setSelectedIndex(Self.keyNameJComboBox.getSelectedIndex());
end;
    

procedure TKeyboardActionScriptInputJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        try
            Self.update();
            Self.getKeyActionJDialog().setVisible(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'okButtonActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.keyActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getKeyActionJDialog().setVisible(True);
end;
    

procedure TKeyboardActionScriptInputJPanel.normalJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.normalJRadioButton.isSelected() then begin
            Self.keyActionScriptInputInterface.setNormal();
            Self.pressJRadioButton.setSelected(False);
            Self.releaseJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.releaseJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.releaseJRadioButton.isSelected() then begin
            Self.keyActionScriptInputInterface.setRelease(True);
            Self.keyActionScriptInputInterface.setPress(False);
            Self.pressJRadioButton.setSelected(False);
            Self.normalJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.pressJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.pressJRadioButton.isSelected() then begin
            Self.keyActionScriptInputInterface.setPress(True);
            Self.keyActionScriptInputInterface.setRelease(False);
            Self.releaseJRadioButton.setSelected(False);
            Self.normalJRadioButton.setSelected(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


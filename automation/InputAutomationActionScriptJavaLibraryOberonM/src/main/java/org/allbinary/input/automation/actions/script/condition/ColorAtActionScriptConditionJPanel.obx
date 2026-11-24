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
unit ColorAtActionScriptConditionJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, ColorAtActionScriptConditionInterface, JTextField, JLabel, JDialog, ActionEvent, JButton, JPanel;

type
  {AB:TYPES}
  TColorAtActionScriptConditionJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    colorAtActionScriptConditionInterface: IColorAtActionScriptConditionInterface;
    blueJLabel: TJLabel;
    colorAtActionJButton: TJButton;
    colorAtActionJDialog: TJDialog;
    colorAtXJTextField: TJTextField;
    colorAtYJTextField: TJTextField;
    colorRangeJLabel: TJLabel;
    greenJLabel: TJLabel;
    jLabel1: TJLabel;
    locationJLabel: TJLabel;
    maxBlueJTextField: TJTextField;
    maxGreenJTextField: TJTextField;
    maxJLabel: TJLabel;
    maxRedJTextField: TJTextField;
    minBlueJTextField: TJTextField;
    minGreenJTextField: TJTextField;
    minJLabel: TJLabel;
    minRedJTextField: TJTextField;
    okJButton: TJButton;
    redJLabel: TJLabel;
    titleJLabel: TJLabel;
    xJLabel: TJLabel;
    yJLabel: TJLabel;
    procedure InitFields;
        constructor Create(colorAtActionScriptConditionInterface_: IColorAtActionScriptConditionInterface);
        procedure set_;
        procedure update;
        function getColorAtXJTextField: TJTextField; virtual;
        procedure setColorAtXJTextField(colorAtXJTextField: TJTextField); virtual;
        function getColorAtYJTextField: TJTextField; virtual;
        procedure setColorAtYJTextField(colorAtYJTextField: TJTextField); virtual;
        function getMaxBlueJTextField: TJTextField; virtual;
        procedure setMaxBlueJTextField(maxBlueJTextField: TJTextField); virtual;
        function getMaxGreenJTextField: TJTextField; virtual;
        procedure setMaxGreenJTextField(maxGreenJTextField: TJTextField); virtual;
        function getMaxRedJTextField: TJTextField; virtual;
        procedure setMaxRedJTextField(maxRedJTextField: TJTextField); virtual;
        function getMinBlueJTextField: TJTextField; virtual;
        procedure setMinBlueJTextField(minBlueJTextField: TJTextField); virtual;
        function getMinGreenJTextField: TJTextField; virtual;
        procedure setMinGreenJTextField(minGreenJTextField: TJTextField); virtual;
        function getMinRedJTextField: TJTextField; virtual;
        procedure setMinRedJTextField(minRedJTextField: TJTextField); virtual;
        function getYJLabel: TJLabel; virtual;
        procedure setYJLabel(yJLabel: TJLabel); virtual;
        function getColorAtActionJDialog: TJDialog; virtual;
        procedure setColorAtActionJDialog(colorAtActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure colorAtActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout, ColorRangeInterface;


{AB:CODE}

procedure TColorAtActionScriptConditionJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TColorAtActionScriptConditionJPanel.Create(colorAtActionScriptConditionInterface_: IColorAtActionScriptConditionInterface);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.colorAtActionScriptConditionInterface := colorAtActionScriptConditionInterface_;
        Self.set_();
end;
    

procedure TColorAtActionScriptConditionJPanel.set_;
var
  colorRangeInterface_: IColorRangeInterface;
begin
        colorRangeInterface_ := Self.colorAtActionScriptConditionInterface.getColorRangeInterface();
        Self.getMinRedJTextField().setText(IntToStr(colorRangeInterface_.getMinRed()));
        Self.getMaxRedJTextField().setText(IntToStr(colorRangeInterface_.getMaxRed()));
        Self.getMinGreenJTextField().setText(IntToStr(colorRangeInterface_.getMinGreen()));
        Self.getMaxGreenJTextField().setText(IntToStr(colorRangeInterface_.getMaxGreen()));
        Self.getMinBlueJTextField().setText(IntToStr(colorRangeInterface_.getMinBlue()));
        Self.getMaxBlueJTextField().setText(IntToStr(colorRangeInterface_.getMaxBlue()));
        Self.getColorAtXJTextField().setText(IntToStr(Self.colorAtActionScriptConditionInterface.getPoint().x));
        Self.getColorAtYJTextField().setText(IntToStr(Self.colorAtActionScriptConditionInterface.getPoint().y));
        Self.colorAtActionScriptConditionInterface.log();
end;
    

procedure TColorAtActionScriptConditionJPanel.update;
var
  colorRangeInterface_: IColorRangeInterface;
  xString: string;
  yString: string;
begin
        colorRangeInterface_ := Self.colorAtActionScriptConditionInterface.getColorRangeInterface();
        colorRangeInterface_.setMinRed(TJava.IntValueOf(Self.getMinRedJTextField().getText()));
        colorRangeInterface_.setMaxRed(TJava.IntValueOf(Self.getMaxRedJTextField().getText()));
        colorRangeInterface_.setMinGreen(TJava.IntValueOf(Self.getMinGreenJTextField().getText()));
        colorRangeInterface_.setMaxGreen(TJava.IntValueOf(Self.getMaxGreenJTextField().getText()));
        colorRangeInterface_.setMinBlue(TJava.IntValueOf(Self.getMinBlueJTextField().getText()));
        colorRangeInterface_.setMaxBlue(TJava.IntValueOf(Self.getMaxBlueJTextField().getText()));
        xString := Self.getColorAtXJTextField().getText();
        if (not ((xString = ''))) and (TJava.IsNumber(xString)) then begin
            Self.colorAtActionScriptConditionInterface.getPoint().x := StrToInt(xString);
        end;
        yString := Self.getColorAtYJTextField().getText();
        if (not ((yString = ''))) and (TJava.IsNumber(yString)) then begin
            Self.colorAtActionScriptConditionInterface.getPoint().y := StrToInt(xString);
        end;
        Self.colorAtActionScriptConditionInterface.log();
end;
    

function TColorAtActionScriptConditionJPanel.getColorAtXJTextField: TJTextField;
begin
        Exit(Self.colorAtXJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setColorAtXJTextField(colorAtXJTextField: TJTextField);
begin
        Self.colorAtXJTextField := colorAtXJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getColorAtYJTextField: TJTextField;
begin
        Exit(Self.colorAtYJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setColorAtYJTextField(colorAtYJTextField: TJTextField);
begin
        Self.colorAtYJTextField := colorAtYJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMaxBlueJTextField: TJTextField;
begin
        Exit(Self.maxBlueJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMaxBlueJTextField(maxBlueJTextField: TJTextField);
begin
        Self.maxBlueJTextField := maxBlueJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMaxGreenJTextField: TJTextField;
begin
        Exit(Self.maxGreenJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMaxGreenJTextField(maxGreenJTextField: TJTextField);
begin
        Self.maxGreenJTextField := maxGreenJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMaxRedJTextField: TJTextField;
begin
        Exit(Self.maxRedJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMaxRedJTextField(maxRedJTextField: TJTextField);
begin
        Self.maxRedJTextField := maxRedJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMinBlueJTextField: TJTextField;
begin
        Exit(Self.minBlueJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMinBlueJTextField(minBlueJTextField: TJTextField);
begin
        Self.minBlueJTextField := minBlueJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMinGreenJTextField: TJTextField;
begin
        Exit(Self.minGreenJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMinGreenJTextField(minGreenJTextField: TJTextField);
begin
        Self.minGreenJTextField := minGreenJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMinRedJTextField: TJTextField;
begin
        Exit(Self.minRedJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMinRedJTextField(minRedJTextField: TJTextField);
begin
        Self.minRedJTextField := minRedJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getYJLabel: TJLabel;
begin
        Exit(Self.yJLabel);
end;
    

procedure TColorAtActionScriptConditionJPanel.setYJLabel(yJLabel: TJLabel);
begin
        Self.yJLabel := yJLabel;
end;
    

function TColorAtActionScriptConditionJPanel.getColorAtActionJDialog: TJDialog;
begin
        Exit(Self.colorAtActionJDialog);
end;
    

procedure TColorAtActionScriptConditionJPanel.setColorAtActionJDialog(colorAtActionJDialog: TJDialog);
begin
        Self.colorAtActionJDialog := colorAtActionJDialog;
end;
    

procedure TColorAtActionScriptConditionJPanel.initComponents;
var
  colorAtActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.colorAtActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.locationJLabel := TJLabel.Create();
        Self.colorAtXJTextField := TJTextField.Create();
        Self.xJLabel := TJLabel.Create();
        Self.yJLabel := TJLabel.Create();
        Self.colorAtYJTextField := TJTextField.Create();
        Self.colorRangeJLabel := TJLabel.Create();
        Self.redJLabel := TJLabel.Create();
        Self.minJLabel := TJLabel.Create();
        Self.maxJLabel := TJLabel.Create();
        Self.greenJLabel := TJLabel.Create();
        Self.blueJLabel := TJLabel.Create();
        Self.minRedJTextField := TJTextField.Create();
        Self.maxRedJTextField := TJTextField.Create();
        Self.maxGreenJTextField := TJTextField.Create();
        Self.minBlueJTextField := TJTextField.Create();
        Self.maxBlueJTextField := TJTextField.Create();
        Self.okJButton := TJButton.Create();
        Self.minGreenJTextField := TJTextField.Create();
        Self.colorAtActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.colorAtActionJDialog.setMinimumSize(TDimension.Create(350, 250));
        Self.titleJLabel.setText('              Color At Action Options            ');
        Self.locationJLabel.setText('Location:');
        Self.xJLabel.setText('X:');
        Self.yJLabel.setText('Y:');
        Self.colorRangeJLabel.setText('Color Range');
        Self.redJLabel.setText('Red:');
        Self.minJLabel.setText('Minimum');
        Self.maxJLabel.setText('Maximum');
        Self.greenJLabel.setText('Green:');
        Self.blueJLabel.setText('Blue:');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        colorAtActionJDialogLayout := TGroupLayout.Create(Self.colorAtActionJDialog.getContentPane());
        Self.colorAtActionJDialog.getContentPane().setLayout(colorAtActionJDialogLayout);
        colorAtActionJDialogLayout.setHorizontalGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.okJButton).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.blueJLabel).addComponent(Self.greenJLabel).addComponent(Self.redJLabel).addComponent(Self.colorRangeJLabel)).addGap(29, 29, 29)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(Self.locationJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.xJLabel).addGap(18, 18, 18))).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.minBlueJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE).addComponent(Self.minGreenJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE).addComponent(Self.minJLabel, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.minRedJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE).addComponent(Self.colorAtXJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE)).addGap(16, 16, 16))).addGap(6, 6, 6).addComponent(Self.yJLabel).addGap(24, 24, 24).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.maxJLabel, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, colorAtActionJDialogLayout.createSequentialGroup().addGap(1, 1, 1).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addComponent(Self.maxBlueJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.maxRedJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 43, TShort.MAX_VALUE).addComponent(Self.maxGreenJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 43, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addComponent(Self.colorAtYJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 44, TShort.MAX_VALUE)).addGap(22, 22, 22)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addGap(33, 33, 33)))));
        colorAtActionJDialogLayout.setVerticalGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.titleJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(15, 15, 15).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.xJLabel).addComponent(Self.locationJLabel).addComponent(Self.colorAtXJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.yJLabel)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.minJLabel).addComponent(Self.colorRangeJLabel)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.minRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.redJLabel)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.greenJLabel).addComponent(Self.minGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.blueJLabel).addComponent(Self.minBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 17, TShort.MAX_VALUE).addComponent(Self.okJButton)).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(14, 14, 14).addComponent(Self.colorAtYJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addContainerGap()));
        Self.setPreferredSize(TDimension.Create(100, 0));
        Self.colorAtActionJButton.setText('Edit');
        Self.colorAtActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.colorAtActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Color At:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 15, TShort.MAX_VALUE).addComponent(Self.colorAtActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.colorAtActionJButton)));
end;
    

procedure TColorAtActionScriptConditionJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        Self.update();
        Self.getColorAtActionJDialog().setVisible(False);
end;
    

procedure TColorAtActionScriptConditionJPanel.colorAtActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getColorAtActionJDialog().setVisible(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.image.gui
unit ResizeImageJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, CommonStrings, ActionEvent, JButton, JTextField, JComboBox, JLabel, JPanel;

type
  {AB:TYPES}
  TResizeImageJPanel = class(TJPanel, IImageProcessorInputCompositeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageProcessorInput: TImageProcessorInput;
    aboveJButton: TJButton;
    adjustFor16AboveJButton: TJButton;
    adjustFor16BelowJButton: TJButton;
    floatPercentJTextField: TJTextField;
    jComboBox1: TJComboBox<string>;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jTextField1: TJTextField;
    jTextField2: TJTextField;
    updateJButton: TJButton;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageProcessorInput_: TImageProcessorInput);
        procedure process; virtual;
        procedure update; virtual;
        procedure updateFor16Above; virtual;
        procedure updateFor16Below; virtual;
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput_: TImageProcessorInput); virtual;
        procedure initComponents;
        procedure aboveJButtonActionPerformed(evt: TActionEvent);
        procedure updateJButtonActionPerformed(evt: TActionEvent);
        procedure adjustFor16AboveJButtonActionPerformed(evt: TActionEvent);
        procedure adjustFor16BelowJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  DefaultComboBoxModel, ActionListener, Dimension, GroupLayout, FileWrapperUtil, ImagePersistanceUtil, ImageUtil;


{AB:CODE}

procedure TResizeImageJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TResizeImageJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TResizeImageJPanel.Create(imageProcessorInput_: TImageProcessorInput);
var
  numberStringArray: TArray<string>;
  index: Integer;
  araster: TRaster;
begin
        inherited Create();
        InitFields;
        Self.initComponents();
        Self.imageProcessorInput := imageProcessorInput_;
        numberStringArray := TJava.NewArray<string>(101);
        numberStringArray[0] := IntToStr(-1);
        for index := 1 to 100 - 1 do begin
            numberStringArray[index] := IntToStr(index);
        end;
        Self.jComboBox1.setModel(TDefaultComboBoxModel.Create(numberStringArray));
        araster := Self.imageProcessorInput.getBufferedImageArray()[0].getAlphaRaster();
        if (araster) = (nil) then begin
            WriteLn('there is no Alpha channel!!!!!!!!!');
        end else begin
            WriteLn('Alpha channel found !');
        end;
end;
    

procedure TResizeImageJPanel.process;
begin
        TThread.Create(True).start();
end;
    

procedure TResizeImageJPanel.update;
begin
        TThread.Create(True).start();
end;
    

procedure TResizeImageJPanel.updateFor16Above;
begin
        TThread.Create(True).start();
end;
    

procedure TResizeImageJPanel.updateFor16Below;
begin
        TThread.Create(True).start();
end;
    

function TResizeImageJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TResizeImageJPanel.setImageProcessorInput(imageProcessorInput_: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

procedure TResizeImageJPanel.initComponents;
var
  layout: TGroupLayout;
begin
        Self.jLabel1 := TJLabel.Create();
        Self.jComboBox1 := TJComboBox.Create();
        Self.aboveJButton := TJButton.Create();
        Self.jTextField1 := TJTextField.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.jTextField2 := TJTextField.Create();
        Self.updateJButton := TJButton.Create();
        Self.floatPercentJTextField := TJTextField.Create();
        Self.adjustFor16AboveJButton := TJButton.Create();
        Self.adjustFor16BelowJButton := TJButton.Create();
        Self.jLabel1.setText('Percent:');
        Self.jComboBox1.setModel(TDefaultComboBoxModel.Create(TArray<string>.Create('Item 1', 'Item 2', 'Item 3', 'Item 4')));
        Self.aboveJButton.setText('Process');
        Self.aboveJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.aboveJButtonActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('Width:');
        Self.jLabel3.setText('Height:');
        Self.updateJButton.setText('Update');
        Self.updateJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.updateJButtonActionPerformed(evt);
end;
*));
        Self.floatPercentJTextField.setText('-1.000000');
        Self.floatPercentJTextField.setMinimumSize(TDimension.Create(120, 22));
        Self.adjustFor16AboveJButton.setText('Adjust for 16 Above');
        Self.adjustFor16AboveJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.adjustFor16AboveJButtonActionPerformed(evt);
end;
*));
        Self.adjustFor16BelowJButton.setText('Adjust for 16 Below');
        Self.adjustFor16BelowJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.adjustFor16BelowJButtonActionPerformed(evt);
end;
*));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel1).addComponent(Self.jLabel2).addComponent(Self.jLabel3)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addComponent(Self.jComboBox1, 0, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.jTextField1).addComponent(Self.jTextField2)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.UNRELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.floatPercentJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.adjustFor16AboveJButton).addComponent(Self.adjustFor16BelowJButton)).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)).addGroup(layout.createSequentialGroup().addComponent(Self.updateJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.aboveJButton).addGap(0, 250, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.jComboBox1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.floatPercentJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jTextField1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel2).addComponent(Self.adjustFor16AboveJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel3).addComponent(Self.jTextField2, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.adjustFor16BelowJButton)).addGap(18, 18, 18).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.aboveJButton).addComponent(Self.updateJButton)).addContainerGap(175, TShort.MAX_VALUE)));
end;
    

procedure TResizeImageJPanel.aboveJButtonActionPerformed(evt: TActionEvent);
begin
        Self.process();
end;
    

procedure TResizeImageJPanel.updateJButtonActionPerformed(evt: TActionEvent);
begin
        Self.update();
end;
    

procedure TResizeImageJPanel.adjustFor16AboveJButtonActionPerformed(evt: TActionEvent);
begin
        Self.updateFor16Above();
end;
    

procedure TResizeImageJPanel.adjustFor16BelowJButtonActionPerformed(evt: TActionEvent);
begin
        Self.updateFor16Below();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


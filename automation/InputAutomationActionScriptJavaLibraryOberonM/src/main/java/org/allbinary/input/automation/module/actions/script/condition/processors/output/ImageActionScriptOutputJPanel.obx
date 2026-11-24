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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output
unit ImageActionScriptOutputJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, ImageActionScriptOutputInterface, JDialog, ActionEvent, JButton, JCheckBox, JList, JLabel, JScrollPane, JPanel;

type
  {AB:TYPES}
  TImageActionScriptOutputJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    capturedImageActionScriptOutputInterface: IImageActionScriptOutputInterface;
    capturedImageActionJButton: TJButton;
    capturedImageActionJDialog: TJDialog;
    displayJCheckBox: TJCheckBox;
    itemTypesJList: TJList;
    jLabel1: TJLabel;
    jScrollPane1: TJScrollPane;
    okJButton: TJButton;
    saveJCheckBox: TJCheckBox;
    titleJLabel: TJLabel;
    procedure InitFields;
        constructor Create(capturedImageActionScriptOutputInterface: IImageActionScriptOutputInterface);
        procedure set_;
        procedure update;
        procedure setImageTypeJlistModel;
        function getCapturedImageActionJDialog: TJDialog; virtual;
        procedure setCapturedImageActionJDialog(capturedImageActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure displayJCheckBoxActionPerformed(evt: TActionEvent);
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure capturedImageActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  ImageTypes, DefaultListModel, Dimension, ActionListener, Insets, AbstractListModel, GroupLayout, BasicArrayList, BasicArrayListD, InputImageType;


{AB:CODE}

procedure TImageActionScriptOutputJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TImageActionScriptOutputJPanel.Create(capturedImageActionScriptOutputInterface: IImageActionScriptOutputInterface);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.capturedImageActionScriptOutputInterface := capturedImageActionScriptOutputInterface;
        Self.set_();
end;
    

procedure TImageActionScriptOutputJPanel.set_;
var
  imageTypes_: TImageTypes;
  vector: TBasicArrayList;
  selectedArray: TArray<Integer>;
  size: Integer;
  imageType: TInputImageType;
  index: Integer;
begin
        Self.setImageTypeJlistModel();
        imageTypes_ := Self.capturedImageActionScriptOutputInterface.getImageTypes();
        vector := imageTypes_.getVector();
        selectedArray := TJava.NewArray<Integer>(vector.size());
        size := vector.size();
        for index := 0 to size - 1 do begin
            imageType := TInputImageType(TJava.ToObject(vector.get(index)));
            selectedArray[TJava.PostInc(index)] := imageType.getIndex();
        end;
        Self.itemTypesJList.setSelectedIndices(selectedArray);
        if Self.capturedImageActionScriptOutputInterface.isSaved() then begin
            Self.saveJCheckBox.setSelected(True);
        end;
        if Self.capturedImageActionScriptOutputInterface.isSaved() then begin
            Self.displayJCheckBox.setSelected(True);
        end;
        Self.capturedImageActionScriptOutputInterface.log();
end;
    

procedure TImageActionScriptOutputJPanel.update;
var
  anyType: TArray<TObject>;
  imageTypes_: TImageTypes;
begin
        anyType := Self.itemTypesJList.getSelectedValues();
        imageTypes_ := TImageTypes.valueOf(anyType);
        Self.capturedImageActionScriptOutputInterface.setImageTypes(imageTypes_);
        if Self.saveJCheckBox.isSelected() then begin
            Self.capturedImageActionScriptOutputInterface.setSaved(True);
        end else begin
            Self.capturedImageActionScriptOutputInterface.setSaved(False);
        end;
        if Self.displayJCheckBox.isSelected() then begin
            Self.capturedImageActionScriptOutputInterface.setDisplay(True);
        end else begin
            Self.capturedImageActionScriptOutputInterface.setDisplay(False);
        end;
        Self.capturedImageActionScriptOutputInterface.log();
end;
    

procedure TImageActionScriptOutputJPanel.setImageTypeJlistModel;
var
  defaultListModel_: TDefaultListModel;
  vector: TBasicArrayList;
  size: Integer;
  imageType: TInputImageType;
  index: Integer;
begin
        defaultListModel_ := TDefaultListModel.Create();
        vector := TInputImageType.getAllAsVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            imageType := TInputImageType(TJava.ToObject(vector.get(index)));
            defaultListModel_.addElement(imageType.getName());
        end;
        Self.itemTypesJList.setModel(defaultListModel_);
end;
    

function TImageActionScriptOutputJPanel.getCapturedImageActionJDialog: TJDialog;
begin
        Exit(Self.capturedImageActionJDialog);
end;
    

procedure TImageActionScriptOutputJPanel.setCapturedImageActionJDialog(capturedImageActionJDialog: TJDialog);
begin
        Self.capturedImageActionJDialog := capturedImageActionJDialog;
end;
    

procedure TImageActionScriptOutputJPanel.initComponents;
var
  capturedImageActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.capturedImageActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.okJButton := TJButton.Create();
        Self.saveJCheckBox := TJCheckBox.Create();
        Self.displayJCheckBox := TJCheckBox.Create();
        Self.jScrollPane1 := TJScrollPane.Create();
        Self.itemTypesJList := TJList.Create();
        Self.capturedImageActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.capturedImageActionJDialog.setMinimumSize(TDimension.Create(250, 250));
        Self.titleJLabel.setText('Image Output Options');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        Self.saveJCheckBox.setText('Save To File');
        Self.saveJCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.saveJCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.displayJCheckBox.setText('Display');
        Self.displayJCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.displayJCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.displayJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.displayJCheckBoxActionPerformed(evt);
end;
*));
        Self.itemTypesJList.setModel(TAbstractListModel.Create() (* Java anonymous class body: implement it as a named class
            Self.strings := TArray<string>.Create('Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5');
            

        function T.getSize: Integer;
begin
                Exit(System.Length(strings));
end;
            

        function T.getElementAt(i: Integer): TObject;
begin
                Exit(TJava.Box(strings[i]));
end;
*));
        Self.jScrollPane1.setViewportView(Self.itemTypesJList);
        capturedImageActionJDialogLayout := TGroupLayout.Create(Self.capturedImageActionJDialog.getContentPane());
        Self.capturedImageActionJDialog.getContentPane().setLayout(capturedImageActionJDialogLayout);
        capturedImageActionJDialogLayout.setHorizontalGroup(capturedImageActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGroup(capturedImageActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGap(61, 61, 61).addComponent(Self.titleJLabel)).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(capturedImageActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.displayJCheckBox).addComponent(Self.saveJCheckBox, Tjavax.swing.GroupLayout.Alignment.TRAILING)).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addGap(84, 84, 84).addComponent(Self.okJButton)))).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 216, TShort.MAX_VALUE))).addContainerGap()));
        capturedImageActionJDialogLayout.setVerticalGroup(capturedImageActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(capturedImageActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addGap(5, 5, 5).addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 105, TShort.MAX_VALUE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.saveJCheckBox).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.displayJCheckBox).addGap(9, 9, 9).addComponent(Self.okJButton).addContainerGap()));
        Self.setMinimumSize(TDimension.Create(100, 0));
        Self.capturedImageActionJButton.setText('Edit');
        Self.capturedImageActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.capturedImageActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Capture Image:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.capturedImageActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.capturedImageActionJButton)));
end;
    

procedure TImageActionScriptOutputJPanel.displayJCheckBoxActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TImageActionScriptOutputJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        Self.update();
        Self.getCapturedImageActionJDialog().setVisible(False);
end;
    

procedure TImageActionScriptOutputJPanel.capturedImageActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getCapturedImageActionJDialog().setVisible(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


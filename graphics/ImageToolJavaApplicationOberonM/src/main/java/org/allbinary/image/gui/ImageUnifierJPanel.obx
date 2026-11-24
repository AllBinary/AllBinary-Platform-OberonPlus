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
// package org.allbinary.image.gui
unit ImageUnifierJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, ImageStrings, ImageUnifierProperties, ImagesRatioUtil, CommonStrings, ActionEvent, KeyEvent, PropertyChangeEvent, JTextField, JButton, JList, JLabel, JPanel, JScrollPane, ImageIconUnique;

type
  {AB:TYPES}
  TImageUnifierJPanel = class(TJPanel, IImageProcessorInputCompositeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageStrings: TImageStrings;
    imagesRatioUtil: TImagesRatioUtil;
    imageProcessorInput: TImageProcessorInput;
    icon: TArray<TImageIconUnique>;
    imageUnifierProperties: TImageUnifierProperties;
    result_: TBufferedImage;
    isImageFillIn: Boolean;
    avgRatioJTextField: TJTextField;
    cellHeightJTextField: TJTextField;
    cellRatioJTextField: TJTextField;
    cellWidthJTextField: TJTextField;
    columnsJTextField: TJTextField;
    downJButton: TJButton;
    fudgeItJButton: TJButton;
    imageJList: TJList;
    jButton1: TJButton;
    jButton2: TJButton;
    jButtonOrder: TJButton;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jLabel4: TJLabel;
    jLabel5: TJLabel;
    jLabel6: TJLabel;
    jPanel1: TJPanel;
    jScrollPane1: TJScrollPane;
    jScrollPane2: TJScrollPane;
    rowsJTextField: TJTextField;
    upJButton: TJButton;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageProcessorInput_: TImageProcessorInput);
        procedure init; virtual;
        procedure updateImage; overload;
        procedure updateImageWithFudgedImages;
        procedure updateImage(tempBufferedImageArray: TArray<TBufferedImage>); overload;
        procedure updateOnPropertiesChange;
        procedure initComponents;
        procedure jButton2ActionPerformed(evt: TActionEvent);
        procedure columnsJTextFieldKeyPressed(evt: TKeyEvent);
        procedure columnsJTextFieldKeyTyped(evt: TKeyEvent);
        procedure columnsJTextFieldPropertyChange(evt: TPropertyChangeEvent);
        procedure fudgeItJButtonActionPerformed(evt: TActionEvent);
        procedure cellHeightJTextFieldActionPerformed(evt: TActionEvent);
        procedure cellWidthJTextFieldActionPerformed(evt: TActionEvent);
        procedure columnsJTextFieldActionPerformed(evt: TActionEvent);
        procedure rowsJTextFieldActionPerformed(evt: TActionEvent);
        procedure jButton1ActionPerformed(evt: TActionEvent);
        procedure downJButtonActionPerformed(evt: TActionEvent);
        procedure upJButtonActionPerformed(evt: TActionEvent);
        procedure jButtonOrderActionPerformed(evt: TActionEvent);
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput_: TImageProcessorInput); virtual;
  end;

implementation
uses
  DefaultListModel, ImageIcon, Icon, Dimension, ActionListener, PropertyChangeListener, KeyAdapter, GroupLayout, FileWrapperUtil, StringMaker, StringUtil, ImagePersistanceUtil, ImageUnifierCell, ImageUnifierUtil, ImageUtil, CommonPhoneStrings, CommonSeps;


{AB:CODE}

procedure TImageUnifierJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageStrings := TImageStrings.getInstance();
  Self.imagesRatioUtil := TImagesRatioUtil.getInstance();
  
  
  
  
  Self.isImageFillIn := True;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TImageUnifierJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageUnifierJPanel.Create(imageProcessorInput_: TImageProcessorInput);
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.setImageProcessorInput(imageProcessorInput_);
end;
    

procedure TImageUnifierJPanel.init;
var
  imageProcessorInput_: TImageProcessorInput;
  bufferedImageArray: TArray<TBufferedImage>;
  defaultListModel_: TDefaultListModel;
  width: Double;
  height: Double;
  newWidth: Integer;
  oldRatio: Double;
  newHeight: Integer;
  iconBufferedImage: TBufferedImage;
  index: Integer;
begin
        try
            imageProcessorInput_ := Self.getImageProcessorInput();
            bufferedImageArray := imageProcessorInput_.getBufferedImageArray();
            Self.icon := TJava.NewArray<TImageIconUnique>(System.Length(bufferedImageArray));
            defaultListModel_ := TDefaultListModel.Create();
            for index := 0 to System.Length(bufferedImageArray) - 1 do begin
                width := bufferedImageArray[index].getWidth();
                height := bufferedImageArray[index].getHeight();
                newWidth := 52;
                oldRatio := (width) / (height);
                newHeight := Integer(Trunc(((newWidth) / (oldRatio))));
                iconBufferedImage := TImageUtil.getInstance().createBufferedImage(bufferedImageArray[index], newWidth, newHeight, True);
                Self.icon[index] := TImageIconUnique.Create(iconBufferedImage, index);
                defaultListModel_.addElement(Self.icon[index]);
            end;
            Self.imageJList.setModel(defaultListModel_);
            Self.updateOnPropertiesChange();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            end;
        end;
end;
    

procedure TImageUnifierJPanel.updateImage;
var
  bufferedImageArray: TArray<TBufferedImage>;
  tempBufferedImageArray: TArray<TBufferedImage>;
  indexedImageIcon: TImageIconUnique;
  bufferedImage_: TBufferedImage;
  index: Integer;
  totalImages: Integer;
  averageRatio: Double;
  averageRatioString: string;
begin
        try
            bufferedImageArray := Self.getImageProcessorInput().getBufferedImageArray();
            tempBufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(bufferedImageArray));
            for index := 0 to System.Length(bufferedImageArray) - 1 do begin
                indexedImageIcon := TImageIconUnique(TJava.ToObject(Self.imageJList.getModel().getElementAt(index)));
                bufferedImage_ := TImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], Self.imageUnifierProperties.getImageUnifierCell().getWidth(), Self.imageUnifierProperties.getImageUnifierCell().getHeight(), False);
                tempBufferedImageArray[index] := bufferedImage_;
            end;
            totalImages := (Self.imageUnifierProperties.getRows()) * (Self.imageUnifierProperties.getColumns());
            averageRatio := Self.imagesRatioUtil.getAverage(tempBufferedImageArray, totalImages);
            averageRatioString := averageRatio.toString();
            if (System.Length(averageRatioString)) > (4) then begin
                averageRatioString := Copy(averageRatioString, (0) + 1, (4) - (0));
            end;
            Self.avgRatioJTextField.setText(averageRatioString);
            Self.fudgeItJButton.setEnabled(False);
            if not (Self.imagesRatioUtil.isEqual(tempBufferedImageArray, totalImages)) then begin
                if Self.isImageFillIn then begin
                    Self.fudgeItJButton.setEnabled(True);
                end;
            end;
            Self.updateImage(tempBufferedImageArray);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updateImage', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageUnifierJPanel.updateImageWithFudgedImages;
var
  bufferedImageArray: TArray<TBufferedImage>;
  tempBufferedImageArray: TArray<TBufferedImage>;
  indexedImageIcon: TImageIconUnique;
  bufferedImage_: TBufferedImage;
  index: Integer;
  totalImages: Integer;
  averageRatio: Double;
  fudgedBufferedImageArray: TArray<TBufferedImage>;
begin
        try
            bufferedImageArray := Self.getImageProcessorInput().getBufferedImageArray();
            tempBufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(bufferedImageArray));
            for index := 0 to System.Length(bufferedImageArray) - 1 do begin
                indexedImageIcon := TImageIconUnique(TJava.ToObject(Self.imageJList.getModel().getElementAt(index)));
                bufferedImage_ := TImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], Self.imageUnifierProperties.getImageUnifierCell().getWidth(), Self.imageUnifierProperties.getImageUnifierCell().getHeight(), False);
                tempBufferedImageArray[index] := bufferedImage_;
            end;
            totalImages := (Self.imageUnifierProperties.getRows()) * (Self.imageUnifierProperties.getColumns());
            averageRatio := Self.imagesRatioUtil.getAverage(tempBufferedImageArray, totalImages);
            fudgedBufferedImageArray := Self.imagesRatioUtil.fudge(tempBufferedImageArray, totalImages, averageRatio);
            Self.updateImage(fudgedBufferedImageArray);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updateImageWithFudgedImages', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageUnifierJPanel.updateImage(tempBufferedImageArray: TArray<TBufferedImage>);
var
  image: TIcon;
  label_: TJLabel;
begin
        Self.result_ := TImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, Self.imageUnifierProperties);
        image := TImageIcon.Create(Self.result_);
        label_ := TJLabel.Create(image);
        Self.jScrollPane2.getViewport().add(label_);
        Self.updateUI();
end;
    

procedure TImageUnifierJPanel.updateOnPropertiesChange;
var
  imageUnifierCell_: TImageUnifierCell;
  cellRatio: Double;
  cellRatioString: string;
begin
        if ((((Self.rowsJTextField.getText().length()) > (0)) and ((Self.columnsJTextField.getText().length()) > (0))) and ((Self.cellWidthJTextField.getText().length()) > (0))) and ((Self.cellHeightJTextField.getText().length()) > (0)) then begin
            Self.imageUnifierProperties := TImageUnifierProperties.Create();
            Self.imageUnifierProperties.setRows(Self.rowsJTextField.getText());
            Self.imageUnifierProperties.setColumns(Self.columnsJTextField.getText());
            imageUnifierCell_ := TImageUnifierCell.Create(Self.cellWidthJTextField.getText(), Self.cellHeightJTextField.getText());
            Self.imageUnifierProperties.setImageUnifierCell(imageUnifierCell_);
            cellRatio := (((1.0 * (imageUnifierCell_.getWidth()))) / (imageUnifierCell_.getHeight()));
            cellRatioString := cellRatio.toString();
            if (System.Length(cellRatioString)) > (4) then begin
                cellRatioString := Copy(cellRatioString, (0) + 1, (4) - (0));
            end;
            Self.cellRatioJTextField.setText(cellRatioString);
            Self.updateImage();
        end;
end;
    

procedure TImageUnifierJPanel.initComponents;
var
  commonPhoneStrings_: TCommonPhoneStrings;
  jPanel1Layout: TGroupLayout;
  layout: TGroupLayout;
begin
        commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
        Self.jScrollPane1 := TJScrollPane.Create();
        Self.imageJList := TJList.Create();
        Self.jScrollPane2 := TJScrollPane.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.jButton1 := TJButton.Create();
        Self.upJButton := TJButton.Create();
        Self.downJButton := TJButton.Create();
        Self.fudgeItJButton := TJButton.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.columnsJTextField := TJTextField.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.rowsJTextField := TJTextField.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.cellWidthJTextField := TJTextField.Create();
        Self.jLabel4 := TJLabel.Create();
        Self.cellHeightJTextField := TJTextField.Create();
        Self.jLabel5 := TJLabel.Create();
        Self.cellRatioJTextField := TJTextField.Create();
        Self.jLabel6 := TJLabel.Create();
        Self.avgRatioJTextField := TJTextField.Create();
        Self.jButton2 := TJButton.Create();
        Self.jButtonOrder := TJButton.Create();
        Self.setMinimumSize(TDimension.Create(500, 375));
        Self.setPreferredSize(TDimension.Create(0, 0));
        Self.imageJList.setMinimumSize(TDimension.Create(50, 0));
        Self.jScrollPane1.setViewportView(Self.imageJList);
        Self.jButton1.setText('Save');
        Self.jButton1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton1ActionPerformed(evt);
end;
*));
        Self.upJButton.setText('Up');
        Self.upJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.upJButtonActionPerformed(evt);
end;
*));
        Self.downJButton.setText('Down');
        Self.downJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.downJButtonActionPerformed(evt);
end;
*));
        Self.fudgeItJButton.setText('Fudge It!');
        Self.fudgeItJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.fudgeItJButtonActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('Columns:');
        Self.columnsJTextField.setText(commonPhoneStrings_.TWO);
        Self.columnsJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.columnsJTextFieldActionPerformed(evt);
end;
*));
        Self.columnsJTextField.addPropertyChangeListener(TPropertyChangeListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.propertyChange(evt: TPropertyChangeEvent);
begin
                Self.columnsJTextFieldPropertyChange(evt);
end;
*));
        Self.columnsJTextField.addKeyListener(TKeyAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.keyPressed(evt: TKeyEvent);
begin
                Self.columnsJTextFieldKeyPressed(evt);
end;
            

        procedure T.keyTyped(evt: TKeyEvent);
begin
                Self.columnsJTextFieldKeyTyped(evt);
end;
*));
        Self.jLabel1.setText('Rows:');
        Self.rowsJTextField.setText(commonPhoneStrings_.TWO);
        Self.rowsJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.rowsJTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel3.setText('Cell Width:');
        Self.cellWidthJTextField.setText('200');
        Self.cellWidthJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.cellWidthJTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel4.setText('Cell Height:');
        Self.cellHeightJTextField.setText('150');
        Self.cellHeightJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.cellHeightJTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel5.setText('Cell Ratio:');
        Self.cellRatioJTextField.setEditable(False);
        Self.jLabel6.setText('Avg Image Ratio:');
        Self.avgRatioJTextField.setEditable(False);
        Self.jButton2.setText(Self.commonStrings.UPDATE);
        Self.jButton2.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton2ActionPerformed(evt);
end;
*));
        Self.jButtonOrder.setText('Order');
        Self.jButtonOrder.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButtonOrderActionPerformed(evt);
end;
*));
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup().addContainerGap().addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.jButton1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.upJButton, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 71, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 10, TShort.MAX_VALUE).addComponent(Self.downJButton, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 70, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(Self.fudgeItJButton, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel3).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 99, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel4).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 96, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(Self.avgRatioJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.jLabel6, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.cellRatioJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.jLabel5, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.cellHeightJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.cellWidthJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.jButton2, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel2).addComponent(Self.jLabel1)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.rowsJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 103, TShort.MAX_VALUE).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.columnsJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 102, TShort.MAX_VALUE).addGap(1, 1, 1)))).addComponent(Self.jButtonOrder, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE)).addContainerGap()));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addContainerGap().addComponent(Self.jButton1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.upJButton).addComponent(Self.downJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jButtonOrder).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.fudgeItJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel2).addComponent(Self.columnsJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.rowsJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel3).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.cellWidthJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel4).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.cellHeightJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jButton2).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel5).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.cellRatioJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGap(7, 7, 7).addComponent(Self.jLabel6).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.avgRatioJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGap(66, 66, 66)));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 84, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jScrollPane2, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 527, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.Alignment.LEADING, 0, 445, TShort.MAX_VALUE).addComponent(Self.jScrollPane2, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 445, TShort.MAX_VALUE).addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 445, TShort.MAX_VALUE)).addContainerGap()));
end;
    

procedure TImageUnifierJPanel.jButton2ActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldKeyPressed(evt: TKeyEvent);
begin
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldKeyTyped(evt: TKeyEvent);
begin
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldPropertyChange(evt: TPropertyChangeEvent);
begin
end;
    

procedure TImageUnifierJPanel.fudgeItJButtonActionPerformed(evt: TActionEvent);
begin
        Self.updateImageWithFudgedImages();
end;
    

procedure TImageUnifierJPanel.cellHeightJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.cellWidthJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.rowsJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.jButton1ActionPerformed(evt: TActionEvent);
var
  fileArray: TArray<TFile>;
  file_: TFile;
  filePath: string;
  extensionIndex: Integer;
  outputFile: TFile;
begin
        try
            fileArray := Self.imageProcessorInput.getFiles();
            file_ := fileArray[0];
            filePath := file_.getAbsolutePath();
            extensionIndex := (Pos(TJava.ToString(Self.imageStrings.PNG_EXTENSION), filePath) - 1);
            filePath := TStringMaker.Create().append(Copy(filePath, (0) + 1, (extensionIndex) - (0))).append(TCommonSeps.getInstance().UNDERSCORE).appendint(Integer(Trunc(Self.imageUnifierProperties.getColumns()))).append('_By_').appendint(Integer(Trunc(Self.imageUnifierProperties.getRows()))).append('_Unified').append(Self.imageStrings.PNG_EXTENSION).toString();
            Self.logUtil.putF('New File Path: ' + filePath, TJava.Box(Self), TStringUtil.getInstance().EMPTY_STRING);
            outputFile := TFile.Create(filePath);
            TImagePersistanceUtil.getInstance().saveWithBatik(TFileWrapperUtil.wrapFile(outputFile), Self.result_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'jButton1ActionPerformed', TJava.Box(e));
            end;
        end;
end;
    

procedure TImageUnifierJPanel.downJButtonActionPerformed(evt: TActionEvent);
var
  index: Integer;
  defaultListModel_: TDefaultListModel;
  indexedImageIcon: TImageIconUnique;
begin
        index := Self.imageJList.getSelectedIndex();
        defaultListModel_ := TDefaultListModel(TJava.ToObject(Self.imageJList.getModel()));
        if ((index) >= (0)) and (((index) + (1)) < (defaultListModel_.size())) then begin
            indexedImageIcon := TImageIconUnique(TJava.ToObject(defaultListModel_.remove(index)));
            defaultListModel_.insertElementAt(indexedImageIcon, (index) + (1));
            Self.imageJList.setSelectedIndex((index) + (1));
            Self.updateImage();
        end;
end;
    

procedure TImageUnifierJPanel.upJButtonActionPerformed(evt: TActionEvent);
var
  index: Integer;
  defaultListModel_: TDefaultListModel;
  indexedImageIcon: TImageIconUnique;
begin
        index := Self.imageJList.getSelectedIndex();
        if (index) > (0) then begin
            defaultListModel_ := TDefaultListModel(TJava.ToObject(Self.imageJList.getModel()));
            indexedImageIcon := TImageIconUnique(TJava.ToObject(defaultListModel_.remove(index)));
            defaultListModel_.insertElementAt(indexedImageIcon, (index) - (1));
            Self.imageJList.setSelectedIndex((index) - (1));
            Self.updateImage();
        end;
end;
    

procedure TImageUnifierJPanel.jButtonOrderActionPerformed(evt: TActionEvent);
var
  defaultListModel_: TDefaultListModel;
  size: Integer;
  last: Integer;
  indexedImageIcon: TImageIconUnique;
  index: Integer;
begin
        defaultListModel_ := TDefaultListModel(TJava.ToObject(Self.imageJList.getModel()));
        size := defaultListModel_.size();
        last := (size) - (1);
        for index := last downto 0 do begin
            indexedImageIcon := TImageIconUnique(TJava.ToObject(defaultListModel_.remove(last)));
            defaultListModel_.insertElementAt(indexedImageIcon, (last) - (index));
        end;
        if (size) > (0) then begin
            Self.imageJList.setSelectedIndex(0);
            Self.updateImage();
        end;
end;
    

function TImageUnifierJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TImageUnifierJPanel.setImageProcessorInput(imageProcessorInput_: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput_;
        Self.init();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


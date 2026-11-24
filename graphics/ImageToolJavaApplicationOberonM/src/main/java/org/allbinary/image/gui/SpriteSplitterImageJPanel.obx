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
unit SpriteSplitterImageJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageProcessedVisitor, ImageProcessorInput, ImageStrings, CommonSeps, CommonStrings, ActionEvent, JButton, JTextField, JLabel, JPanel, JComboBox, JCheckBox;

type
  {AB:TYPES}
  TSpriteSplitterImageJPanel = class(TJPanel, IImageProcessedVisitor)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    imageStrings: TImageStrings;
    imageProcessorInput: TImageProcessorInput;
    result_: TBufferedImage;
    generateJButton: TJButton;
    heightReductionTextField: TJTextField;
    increaseHeightTextField: TJTextField;
    increaseWidthTextField: TJTextField;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jLabel4: TJLabel;
    jLabel5: TJLabel;
    jLabel6: TJLabel;
    jLabel7: TJLabel;
    jLabel8: TJLabel;
    jPanel1: TJPanel;
    jPanel2: TJPanel;
    spriteTypeJComboBox: TJComboBox<string>;
    totalAnimationsJComboBox: TJComboBox<string>;
    totalFramesJComboBox: TJComboBox<string>;
    widthReductionTextField: TJTextField;
    writeOverOriginalJCheckBox: TJCheckBox;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageProcessorInput_: TImageProcessorInput);
        procedure process; virtual;
        procedure initComponents;
        procedure writeOverOriginalJCheckBoxActionPerformed(evt: TActionEvent);
        procedure generateJButtonActionPerformed(evt: TActionEvent);
        procedure spriteTypeJComboBoxActionPerformed(evt: TActionEvent);
        procedure totalAnimationsJComboBoxActionPerformed(evt: TActionEvent);
        procedure totalFramesJComboBoxActionPerformed(evt: TActionEvent);
        procedure widthReductionTextFieldActionPerformed(evt: TActionEvent);
        procedure increaseWidthTextFieldActionPerformed(evt: TActionEvent);
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput_: TImageProcessorInput); virtual;
        procedure visit(generatedBufferedImage: TBufferedImage; name: string; index: Integer); virtual;
  end;

implementation
uses
  Graphics, DefaultComboBoxModel, ActionListener, GroupLayout, StringMaker, StringUtil, SpriteSplitterUtil, CommonPhoneStrings;


{AB:CODE}

procedure TSpriteSplitterImageJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.imageStrings := TImageStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TSpriteSplitterImageJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSpriteSplitterImageJPanel.Create(imageProcessorInput_: TImageProcessorInput);
begin
        inherited Create();
        InitFields;
        Self.initComponents();
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

procedure TSpriteSplitterImageJPanel.process;
begin
        TThread.Create(True).start();
end;
    

procedure TSpriteSplitterImageJPanel.initComponents;
var
  size: Integer;
  animationStringArray2: TArray<string>;
  index: Integer;
  animationStringArray: TArray<string>;
  jPanel1Layout: TGroupLayout;
  jPanel2Layout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.writeOverOriginalJCheckBox := TJCheckBox.Create();
        Self.widthReductionTextField := TJTextField.Create();
        Self.jLabel5 := TJLabel.Create();
        Self.jPanel1 := TJPanel.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.paint(graphics: TGraphics);
begin
                if (Self.result_) <> (nil) then begin
                    graphics.drawImage(Self.result_, 0, 0, Self.result_.getWidth(nil), Self.result_.getHeight(nil), nil);
                end;
end;
*);
        Self.jLabel4 := TJLabel.Create();
        Self.jLabel6 := TJLabel.Create();
        Self.heightReductionTextField := TJTextField.Create();
        Self.generateJButton := TJButton.Create();
        Self.jPanel2 := TJPanel.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.totalFramesJComboBox := TJComboBox.Create();
        size := 70;
        animationStringArray2 := TJava.NewArray<string>((size) - (1));
        for index := 1 to size - 1 do begin
            animationStringArray2[(index) - (1)] := IntToStr(index);
        end;
        Self.totalFramesJComboBox.setModel(TDefaultComboBoxModel.Create(animationStringArray2));
        Self.jLabel2 := TJLabel.Create();
        Self.totalAnimationsJComboBox := TJComboBox.Create();
        animationStringArray := TJava.NewArray<string>((size) - (1));
        for index := 1 to size - 1 do begin
            animationStringArray[(index) - (1)] := IntToStr(index);
        end;
        Self.totalAnimationsJComboBox.setModel(TDefaultComboBoxModel.Create(animationStringArray));
        Self.jLabel3 := TJLabel.Create();
        Self.spriteTypeJComboBox := TJComboBox.Create();
        Self.spriteTypeJComboBox.setModel(TDefaultComboBoxModel.Create(TArray<string>.Create(Torg.allbinary.media.image.SpriteSplitterUtil.getInstance().DIRECTIONAL_ANIMATIONS, Torg.allbinary.media.image.SpriteSplitterUtil.getInstance().HORIZONTAL_ANIMATIONS, Torg.allbinary.media.image.SpriteSplitterUtil.getInstance().HORIZONTAL_SPRITE)));
        Self.jLabel7 := TJLabel.Create();
        Self.increaseWidthTextField := TJTextField.Create();
        Self.jLabel8 := TJLabel.Create();
        Self.increaseHeightTextField := TJTextField.Create();
        Self.writeOverOriginalJCheckBox.setText('Write Over Original');
        Self.writeOverOriginalJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.writeOverOriginalJCheckBoxActionPerformed(evt);
end;
*));
        Self.widthReductionTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.widthReductionTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.widthReductionTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel5.setText('Less Width:');
        Self.jLabel4.setText('Results:');
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel4).addGap(0, 0, TShort.MAX_VALUE)));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel4).addGap(0, 184, TShort.MAX_VALUE)));
        Self.jLabel6.setText('Less Height:');
        Self.heightReductionTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.generateJButton.setText('Generate');
        Self.generateJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Row Total:');
        Self.totalFramesJComboBox.setSelectedIndex(1);
        Self.totalFramesJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.totalFramesJComboBoxActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('Column Total :');
        Self.totalAnimationsJComboBox.setSelectedIndex(3);
        Self.totalAnimationsJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.totalAnimationsJComboBoxActionPerformed(evt);
end;
*));
        Self.jLabel3.setText('Type:');
        Self.spriteTypeJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.spriteTypeJComboBoxActionPerformed(evt);
end;
*));
        jPanel2Layout := TGroupLayout.Create(Self.jPanel2);
        Self.jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup().addContainerGap().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.totalFramesJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 48, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel2).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.totalAnimationsJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 39, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel3).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.spriteTypeJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 172, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel2Layout.createSequentialGroup().addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.totalFramesJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel2).addComponent(Self.totalAnimationsJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel3).addComponent(Self.spriteTypeJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE))));
        Self.jLabel7.setText('More Width:');
        Self.increaseWidthTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.increaseWidthTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.increaseWidthTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel8.setText('More Height:');
        Self.increaseHeightTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jPanel2, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 415, TShort.MAX_VALUE).addGap(78, 78, 78)).addGroup(layout.createSequentialGroup().addContainerGap().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.writeOverOriginalJCheckBox).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.generateJButton)).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel5).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.widthReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 41, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel6).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.heightReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 46, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel7).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.increaseWidthTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 41, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel8).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.increaseHeightTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 46, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addGap(0, 0, TShort.MAX_VALUE))).addContainerGap()));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jPanel2, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel7).addComponent(Self.increaseWidthTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 22, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel8).addComponent(Self.increaseHeightTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel5).addComponent(Self.widthReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 22, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel6).addComponent(Self.heightReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.writeOverOriginalJCheckBox).addComponent(Self.generateJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
end;
    

procedure TSpriteSplitterImageJPanel.writeOverOriginalJCheckBoxActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TSpriteSplitterImageJPanel.generateJButtonActionPerformed(evt: TActionEvent);
begin
        Self.process();
end;
    

procedure TSpriteSplitterImageJPanel.spriteTypeJComboBoxActionPerformed(evt: TActionEvent);
var
  spriteSplitterUtil_: TSpriteSplitterUtil;
begin
        spriteSplitterUtil_ := TSpriteSplitterUtil.getInstance();
        Self.jLabel1.setText(spriteSplitterUtil_.ANIMATIONS_LABELS[Self.spriteTypeJComboBox.getSelectedIndex()]);
        Self.jLabel2.setText(spriteSplitterUtil_.ANIMATIONS_LABELS[(Self.spriteTypeJComboBox.getSelectedIndex()) + (1)]);
end;
    

procedure TSpriteSplitterImageJPanel.totalAnimationsJComboBoxActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TSpriteSplitterImageJPanel.totalFramesJComboBoxActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TSpriteSplitterImageJPanel.widthReductionTextFieldActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TSpriteSplitterImageJPanel.increaseWidthTextFieldActionPerformed(evt: TActionEvent);
begin
end;
    

function TSpriteSplitterImageJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TSpriteSplitterImageJPanel.setImageProcessorInput(imageProcessorInput_: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

// throws IOException
procedure TSpriteSplitterImageJPanel.visit(generatedBufferedImage: TBufferedImage; name: string; index: Integer);
var
  file_: TFile;
  filePath: string;
  extensionIndex: Integer;
  isWritten: Boolean;
begin
        Self.logUtil.putF(Self.commonStrings.VISIT, TJava.Box(Self), Self.commonStrings.VISIT);
        Self.result_ := generatedBufferedImage;
        Self.getParent().repaint();
        file_ := Self.imageProcessorInput.getFiles()[index];
        if not (Self.writeOverOriginalJCheckBox.isSelected()) then begin
            filePath := file_.getAbsolutePath();
            extensionIndex := (Pos(TJava.ToString(Self.imageStrings.PNG_EXTENSION), filePath) - 1);
            filePath := TStringMaker.Create().append(Copy(filePath, (0) + 1, (extensionIndex) - (0))).append(Self.commonSeps.UNDERSCORE).append(name).append(Self.imageStrings.PNG_EXTENSION).toString();
            file_ := TFile.Create(filePath);
        end;
        isWritten := TImageIO.write(TRenderedImage(TJava.ToObject(Self.result_)), Self.imageStrings.PNG, file_);
        Self.logUtil.putF(TStringMaker.Create().append('File: ').append(TStringUtil.getInstance().toString(file_)).append(' Wrote: ').appendboolean(isWritten).toString(), TJava.Box(Self), Self.commonStrings.RUN);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


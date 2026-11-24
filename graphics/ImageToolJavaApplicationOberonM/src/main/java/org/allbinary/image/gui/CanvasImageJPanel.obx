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
unit CanvasImageJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageProcessedVisitor, ImageProcessorInput, ImageStrings, CommonSeps, CommonStrings, ActionEvent, JButton, JTextField, JLabel, JPanel, JCheckBox;

type
  {AB:TYPES}
  TCanvasImageJPanel = class(TJPanel, IImageProcessedVisitor)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    imageStrings: TImageStrings;
    imageProcessorInput: TImageProcessorInput;
    result_: TBufferedImage;
    generateJButton: TJButton;
    heightReductionTextField: TJTextField;
    heightReductionTextField1: TJTextField;
    jLabel4: TJLabel;
    jLabel5: TJLabel;
    jLabel6: TJLabel;
    jLabel7: TJLabel;
    jLabel8: TJLabel;
    jPanel1: TJPanel;
    jPanel2: TJPanel;
    widthReductionTextField: TJTextField;
    widthReductionTextField1: TJTextField;
    writeOverOriginalJCheckBox: TJCheckBox;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageProcessorInput_: TImageProcessorInput);
        procedure process; virtual;
        procedure initComponents;
        procedure writeOverOriginalJCheckBoxActionPerformed(evt: TActionEvent);
        procedure generateJButtonActionPerformed(evt: TActionEvent);
        procedure widthReductionTextFieldActionPerformed(evt: TActionEvent);
        procedure widthReductionTextField1ActionPerformed(evt: TActionEvent);
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput_: TImageProcessorInput); virtual;
        procedure visit(generatedBufferedImage: TBufferedImage; name: string; index: Integer); virtual;
  end;

implementation
uses
  Graphics, ActionListener, GroupLayout, StringMaker, StringUtil, CanvasExpandUtil, CanvasTrimUtil, CommonPhoneStrings;


{AB:CODE}

procedure TCanvasImageJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.imageStrings := TImageStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TCanvasImageJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCanvasImageJPanel.Create(imageProcessorInput_: TImageProcessorInput);
begin
        inherited Create();
        InitFields;
        Self.initComponents();
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

procedure TCanvasImageJPanel.process;
begin
        TThread.Create(True).start();
end;
    

procedure TCanvasImageJPanel.initComponents;
var
  jPanel1Layout: TGroupLayout;
  jPanel2Layout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.writeOverOriginalJCheckBox := TJCheckBox.Create();
        Self.jPanel1 := TJPanel.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.paint(graphics: TGraphics);
begin
                if (Self.result_) <> (nil) then begin
                    graphics.drawImage(Self.result_, 0, 0, Self.result_.getWidth(nil), Self.result_.getHeight(nil), nil);
                end;
end;
*);
        Self.generateJButton := TJButton.Create();
        Self.jLabel4 := TJLabel.Create();
        Self.jPanel2 := TJPanel.Create();
        Self.jLabel5 := TJLabel.Create();
        Self.widthReductionTextField := TJTextField.Create();
        Self.jLabel6 := TJLabel.Create();
        Self.heightReductionTextField := TJTextField.Create();
        Self.widthReductionTextField1 := TJTextField.Create();
        Self.jLabel7 := TJLabel.Create();
        Self.jLabel8 := TJLabel.Create();
        Self.heightReductionTextField1 := TJTextField.Create();
        Self.writeOverOriginalJCheckBox.setSelected(True);
        Self.writeOverOriginalJCheckBox.setText('Write Over Original');
        Self.writeOverOriginalJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.writeOverOriginalJCheckBoxActionPerformed(evt);
end;
*));
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 0, TShort.MAX_VALUE));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 196, TShort.MAX_VALUE));
        Self.generateJButton.setText('Generate');
        Self.generateJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateJButtonActionPerformed(evt);
end;
*));
        Self.jLabel4.setText('Results:');
        Self.jLabel5.setText('Right:');
        Self.widthReductionTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.widthReductionTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.widthReductionTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel6.setText('Bottom');
        Self.heightReductionTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.widthReductionTextField1.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.widthReductionTextField1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.widthReductionTextField1ActionPerformed(evt);
end;
*));
        Self.jLabel7.setText('Top');
        Self.jLabel8.setText('Left:');
        Self.heightReductionTextField1.setText(TCommonPhoneStrings.getInstance().ZERO);
        jPanel2Layout := TGroupLayout.Create(Self.jPanel2);
        Self.jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel2Layout.createSequentialGroup().addContainerGap().addComponent(Self.jLabel8).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.widthReductionTextField1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 41, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel5).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.widthReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 41, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel7).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.heightReductionTextField1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 46, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel6).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.heightReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 46, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(140, TShort.MAX_VALUE)));
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup().addGap(0, 16, TShort.MAX_VALUE).addGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel6).addComponent(Self.heightReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel8).addComponent(Self.widthReductionTextField1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 22, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.jLabel7).addComponent(Self.heightReductionTextField1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(jPanel2Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel5).addComponent(Self.widthReductionTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 22, Tjavax.swing.GroupLayout.PREFERRED_SIZE)))));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jPanel2, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addGap(78, 78, 78)).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)).addGroup(layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel4).addGroup(layout.createSequentialGroup().addComponent(Self.writeOverOriginalJCheckBox).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.generateJButton))).addGap(0, 0, TShort.MAX_VALUE))).addContainerGap()));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jPanel2, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.generateJButton).addComponent(Self.writeOverOriginalJCheckBox)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel4).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
end;
    

procedure TCanvasImageJPanel.writeOverOriginalJCheckBoxActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TCanvasImageJPanel.generateJButtonActionPerformed(evt: TActionEvent);
begin
        Self.process();
end;
    

procedure TCanvasImageJPanel.widthReductionTextFieldActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TCanvasImageJPanel.widthReductionTextField1ActionPerformed(evt: TActionEvent);
begin
end;
    

function TCanvasImageJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TCanvasImageJPanel.setImageProcessorInput(imageProcessorInput_: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

// throws IOException
procedure TCanvasImageJPanel.visit(generatedBufferedImage: TBufferedImage; name: string; index: Integer);
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


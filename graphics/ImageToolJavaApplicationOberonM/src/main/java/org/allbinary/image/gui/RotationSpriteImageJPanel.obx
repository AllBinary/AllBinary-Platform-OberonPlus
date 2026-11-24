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
unit RotationSpriteImageJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, ImageStrings, CommonStrings, ActionEvent, JButton, JLabel, JPanel, JComboBox, JCheckBox;

type
  {AB:TYPES}
  TRotationSpriteImageJPanel = class(TJPanel, IImageProcessorInputCompositeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageStrings: TImageStrings;
    imageProcessorInput: TImageProcessorInput;
    result_: TBufferedImage;
    generateJButton: TJButton;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jPanel1: TJPanel;
    jPanel2: TJPanel;
    jPanel3: TJPanel;
    totalAngleJComboBox: TJComboBox;
    totalFramesJComboBox: TJComboBox;
    writeOverOriginalJCheckBox: TJCheckBox;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageProcessorInput_: TImageProcessorInput);
        procedure process; virtual;
        procedure initComponents;
        procedure generateJButtonActionPerformed(evt: TActionEvent);
        procedure totalAngleJComboBoxActionPerformed(evt: TActionEvent);
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput_: TImageProcessorInput); virtual;
  end;

implementation
uses
  Graphics, GroupLayout, DefaultComboBoxModel, ActionListener, StringMaker, ImageJ2SERotationUtil, CommonPhoneStrings, CommonSeps;


{AB:CODE}

procedure TRotationSpriteImageJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageStrings := TImageStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TRotationSpriteImageJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRotationSpriteImageJPanel.Create(imageProcessorInput_: TImageProcessorInput);
begin
        inherited Create();
        InitFields;
        Self.initComponents();
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

procedure TRotationSpriteImageJPanel.process;
begin
        TThread.Create(True).start();
end;
    

procedure TRotationSpriteImageJPanel.initComponents;
var
  jPanel1Layout: TGroupLayout;
  jPanel2Layout: TGroupLayout;
  jPanel3Layout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.jPanel1 := TJPanel.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.paint(graphics: TGraphics);
begin
                if (Self.result_) <> (nil) then begin
                    graphics.drawImage(Self.result_, 0, 0, Self.result_.getWidth(nil), Self.result_.getHeight(nil), nil);
                end;
end;
*);
        Self.jPanel2 := TJPanel.Create();
        Self.totalFramesJComboBox := TJComboBox.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.generateJButton := TJButton.Create();
        Self.totalAngleJComboBox := TJComboBox.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.writeOverOriginalJCheckBox := TJCheckBox.Create();
        Self.jPanel3 := TJPanel.Create();
        Self.jLabel2 := TJLabel.Create();
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(0, 436, TShort.MAX_VALUE));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(0, 227, TShort.MAX_VALUE));
        Self.totalFramesJComboBox.setModel(TDefaultComboBoxModel.Create(TArray<string>.Create(TCommonPhoneStrings.getInstance().FOUR, TCommonPhoneStrings.getInstance().NINE, '18', '20', '36')));
        Self.jLabel1.setText('Total Frames:');
        Self.generateJButton.setText('Generate');
        Self.generateJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateJButtonActionPerformed(evt);
end;
*));
        Self.totalAngleJComboBox.setModel(TDefaultComboBoxModel.Create(TArray<string>.Create('360', '90')));
        Self.totalAngleJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.totalAngleJComboBoxActionPerformed(evt);
end;
*));
        Self.jLabel3.setText('Total Angle:');
        Self.writeOverOriginalJCheckBox.setText('Write Over Original');
        jPanel2Layout := TGroupLayout.Create(Self.jPanel2);
        Self.jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(jPanel2Layout.createSequentialGroup().add(8, 8, 8).add(Self.jLabel1).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.totalFramesJComboBox, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.jLabel3).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.totalAngleJComboBox, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.writeOverOriginalJCheckBox).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.generateJButton).addContainerGap(Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(jPanel2Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.jLabel1).add(Self.totalFramesJComboBox, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.generateJButton).add(Self.totalAngleJComboBox, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.jLabel3).add(Self.writeOverOriginalJCheckBox)));
        Self.jLabel2.setText('Results:');
        jPanel3Layout := TGroupLayout.Create(Self.jPanel3);
        Self.jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(jPanel3Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(jPanel3Layout.createSequentialGroup().add(Self.jLabel2).addContainerGap(377, TShort.MAX_VALUE)));
        jPanel3Layout.setVerticalGroup(jPanel3Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Self.jLabel2));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Torg.jdesktop.layout.GroupLayout.TRAILING, Self.jPanel2, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).add(layout.createSequentialGroup().addContainerGap().add(Self.jPanel3, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addContainerGap()).add(Self.jPanel1, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE));
        layout.setVerticalGroup(layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(layout.createSequentialGroup().add(Self.jPanel2, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.UNRELATED).add(Self.jPanel3, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.jPanel1, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
end;
    

procedure TRotationSpriteImageJPanel.generateJButtonActionPerformed(evt: TActionEvent);
begin
        Self.process();
end;
    

procedure TRotationSpriteImageJPanel.totalAngleJComboBoxActionPerformed(evt: TActionEvent);
begin
end;
    

function TRotationSpriteImageJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TRotationSpriteImageJPanel.setImageProcessorInput(imageProcessorInput_: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


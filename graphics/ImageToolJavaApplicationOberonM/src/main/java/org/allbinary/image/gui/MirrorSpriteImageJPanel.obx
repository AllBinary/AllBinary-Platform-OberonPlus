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
unit MirrorSpriteImageJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, ImageStrings, CommonStrings, ActionEvent, JButton, JCheckBox, JLabel, JLayeredPane, JPanel;

type
  {AB:TYPES}
  TMirrorSpriteImageJPanel = class(TJPanel, IImageProcessorInputCompositeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageStrings: TImageStrings;
    imageProcessorInput: TImageProcessorInput;
    result_: TBufferedImage;
    generateJButton: TJButton;
    horizontalJCheckBox: TJCheckBox;
    imageHeightIsFrameSizeJCheckBox: TJCheckBox;
    jLabel2: TJLabel;
    jLayeredPane1: TJLayeredPane;
    jPanel1: TJPanel;
    jPanel2: TJPanel;
    jPanel3: TJPanel;
    verticleJCheckBox: TJCheckBox;
    writeOverOriginalJCheckBox: TJCheckBox;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageProcessorInput_: TImageProcessorInput);
        procedure process; virtual;
        procedure initComponents;
        procedure generateJButtonActionPerformed(evt: TActionEvent);
        procedure imageHeightIsFrameSizeJCheckBoxActionPerformed(evt: TActionEvent);
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput_: TImageProcessorInput); virtual;
  end;

implementation
uses
  Graphics, GroupLayout, ActionListener, BufferedImageUtil2, MirrorImageUtil;


{AB:CODE}

procedure TMirrorSpriteImageJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageStrings := TImageStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TMirrorSpriteImageJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMirrorSpriteImageJPanel.Create(imageProcessorInput_: TImageProcessorInput);
begin
        inherited Create();
        InitFields;
        Self.logUtil.putF('Starting', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

procedure TMirrorSpriteImageJPanel.process;
begin
        TThread.Create(True).start();
end;
    

procedure TMirrorSpriteImageJPanel.initComponents;
var
  jPanel1Layout: TGroupLayout;
  jPanel2Layout: TGroupLayout;
  jPanel3Layout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.jLayeredPane1 := TJLayeredPane.Create();
        Self.jPanel1 := TJPanel.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.paint(graphics: TGraphics);
begin
                if (Self.result_) <> (nil) then begin
                    graphics.drawImage(Self.result_, 0, 0, Self.result_.getWidth(nil), Self.result_.getHeight(nil), nil);
                end;
end;
*);
        Self.jPanel2 := TJPanel.Create();
        Self.imageHeightIsFrameSizeJCheckBox := TJCheckBox.Create();
        Self.horizontalJCheckBox := TJCheckBox.Create();
        Self.verticleJCheckBox := TJCheckBox.Create();
        Self.writeOverOriginalJCheckBox := TJCheckBox.Create();
        Self.generateJButton := TJButton.Create();
        Self.jPanel3 := TJPanel.Create();
        Self.jLabel2 := TJLabel.Create();
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(0, 507, TShort.MAX_VALUE));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(0, 230, TShort.MAX_VALUE));
        Self.imageHeightIsFrameSizeJCheckBox.setSelected(True);
        Self.imageHeightIsFrameSizeJCheckBox.setText('Image Height Is Frame Size');
        Self.imageHeightIsFrameSizeJCheckBox.setEnabled(False);
        Self.imageHeightIsFrameSizeJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.imageHeightIsFrameSizeJCheckBoxActionPerformed(evt);
end;
*));
        Self.horizontalJCheckBox.setSelected(True);
        Self.horizontalJCheckBox.setText('Horizontal');
        Self.horizontalJCheckBox.setEnabled(False);
        Self.verticleJCheckBox.setText('Verticle');
        Self.verticleJCheckBox.setEnabled(False);
        Self.writeOverOriginalJCheckBox.setText('Write Over Original');
        Self.generateJButton.setText('Generate');
        Self.generateJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateJButtonActionPerformed(evt);
end;
*));
        jPanel2Layout := TGroupLayout.Create(Self.jPanel2);
        Self.jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(jPanel2Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(jPanel2Layout.createSequentialGroup().addContainerGap(Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).add(Self.verticleJCheckBox).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.UNRELATED).add(Self.horizontalJCheckBox).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.imageHeightIsFrameSizeJCheckBox).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.writeOverOriginalJCheckBox).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.generateJButton)));
        jPanel2Layout.setVerticalGroup(jPanel2Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(jPanel2Layout.createSequentialGroup().add(jPanel2Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.imageHeightIsFrameSizeJCheckBox, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).add(Self.horizontalJCheckBox).add(Self.verticleJCheckBox).add(Self.writeOverOriginalJCheckBox).add(Self.generateJButton, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 25, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE)).addContainerGap()));
        Self.jLabel2.setText('Results:');
        jPanel3Layout := TGroupLayout.Create(Self.jPanel3);
        Self.jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(jPanel3Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(jPanel3Layout.createSequentialGroup().add(Self.jLabel2).addContainerGap(448, TShort.MAX_VALUE)));
        jPanel3Layout.setVerticalGroup(jPanel3Layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Self.jLabel2));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Torg.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup().addContainerGap().add(Self.jPanel3, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addContainerGap()).add(Self.jPanel1, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).add(layout.createSequentialGroup().add(Self.jPanel2, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addContainerGap(Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(layout.createSequentialGroup().add(Self.jPanel2, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 25, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.jPanel3, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(Self.jPanel1, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
end;
    

procedure TMirrorSpriteImageJPanel.generateJButtonActionPerformed(evt: TActionEvent);
begin
        Self.process();
end;
    

procedure TMirrorSpriteImageJPanel.imageHeightIsFrameSizeJCheckBoxActionPerformed(evt: TActionEvent);
begin
end;
    

function TMirrorSpriteImageJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TMirrorSpriteImageJPanel.setImageProcessorInput(imageProcessorInput_: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


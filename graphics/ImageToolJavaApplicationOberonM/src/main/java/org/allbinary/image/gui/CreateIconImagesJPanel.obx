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
unit CreateIconImagesJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, CommonStrings, ActionEvent, JButton, JPanel;

type
  {AB:TYPES}
  TCreateIconImagesJPanel = class(TJPanel, IImageProcessorInputCompositeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageProcessorInput: TImageProcessorInput;
    aboveJButton: TJButton;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageProcessorInput_: TImageProcessorInput);
        procedure process; virtual;
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput_: TImageProcessorInput); virtual;
        procedure initComponents;
        procedure aboveJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  ActionListener, GroupLayout, CanvasStrings, AbFile, StringMaker, ImagePersistanceUtil, ImageUtil, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TCreateIconImagesJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TCreateIconImagesJPanel.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCreateIconImagesJPanel.Create(imageProcessorInput_: TImageProcessorInput);
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
        araster := Self.imageProcessorInput.getBufferedImageArray()[0].getAlphaRaster();
        if (araster) = (nil) then begin
            WriteLn('there is no Alpha channel!!!!!!!!!');
        end else begin
            WriteLn('Alpha channel found !');
        end;
end;
    

procedure TCreateIconImagesJPanel.process;
begin
        TThread.Create(True).start();
end;
    

function TCreateIconImagesJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TCreateIconImagesJPanel.setImageProcessorInput(imageProcessorInput_: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput_;
end;
    

procedure TCreateIconImagesJPanel.initComponents;
var
  layout: TGroupLayout;
begin
        Self.aboveJButton := TJButton.Create();
        Self.aboveJButton.setText('Process');
        Self.aboveJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.aboveJButtonActionPerformed(evt);
end;
*));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.aboveJButton).addGap(0, 335, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addContainerGap().addComponent(Self.aboveJButton).addContainerGap(286, TShort.MAX_VALUE)));
end;
    

procedure TCreateIconImagesJPanel.aboveJButtonActionPerformed(evt: TActionEvent);
begin
        Self.process();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


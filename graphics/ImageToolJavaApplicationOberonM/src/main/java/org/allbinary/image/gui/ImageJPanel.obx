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
unit ImageJPanel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CanvasStrings, LogUtil, CommonStrings, Graphics, JPanel;

type
  {AB:TYPES}
  TImageJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    canvasStrings: TCanvasStrings;
    isDrawn: Boolean;
    bufferedImage: TBufferedImage;
    procedure InitFields;
        constructor Create(bufferedImage_: TBufferedImage);
        procedure paint(graphics_: TGraphics); virtual;
        procedure initComponents;
  end;

implementation
uses
  GroupLayout;


{AB:CODE}

procedure TImageJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.canvasStrings := TCanvasStrings.getInstance();
  Self.isDrawn := False;
  
end;
    

constructor TImageJPanel.Create(bufferedImage_: TBufferedImage);
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.bufferedImage := bufferedImage_;
        Self.setSize(Self.bufferedImage.getWidth(nil), Self.bufferedImage.getHeight(nil));
end;
    

procedure TImageJPanel.paint(graphics_: TGraphics);
begin
        if not (Self.isDrawn) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.canvasStrings.PAINT);
            graphics_.drawImage(Self.bufferedImage, 0, 0, Self.bufferedImage.getWidth(nil), Self.bufferedImage.getHeight(nil), nil);
            Self.isDrawn := True;
        end;
end;
    

procedure TImageJPanel.initComponents;
var
  layout: TGroupLayout;
begin
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 400, TShort.MAX_VALUE));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 300, TShort.MAX_VALUE));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


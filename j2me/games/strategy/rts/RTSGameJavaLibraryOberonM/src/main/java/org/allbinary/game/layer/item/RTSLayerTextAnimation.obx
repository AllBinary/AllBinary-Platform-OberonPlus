{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.item
unit RTSLayerTextAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, Animation, MyFontProcessor, UpdateMyFontInterface;

type
  {AB:TYPES}
  TRTSLayerTextAnimation = class(TAnimation, IUpdateMyFontInterface)
  public
    image: TImage;
    text: string;
    myFontProcessor: TMyFontProcessor;
    fontHeight: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(text: string; image_: TImage);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation
uses
  Font, UpdateMyFontProcessor;


{AB:CODE}

procedure TRTSLayerTextAnimation.InitFields;
begin
  
  
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.fontHeight := 0;
end;

function TRTSLayerTextAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRTSLayerTextAnimation.Create(text: string; image_: TImage);
begin
    inherited Create;
    InitFields;
        Self.text := text;
        Self.image := image_;
end;
    

procedure TRTSLayerTextAnimation.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TRTSLayerTextAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  adjustedCostY: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        inherited paintXY(graphics_, x, y);
        adjustedCostY := (Self.image.getHeight()) - (Self.fontHeight);
        graphics_.drawString(Self.text, x, (y) + (adjustedCostY), 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


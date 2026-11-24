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
// package org.allbinary.game.paint
unit FullScreenPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, DisplayInfoSingleton, MyFontProcessor, UpdateMyFontInterface, Paintable;

type
  {AB:TYPES}
  // SwtToJ2ME
  TFullScreenPaintable = class(TPaintable, IUpdateMyFontInterface)
  public
    displayInfo: TDisplayInfoSingleton;
    myFontProcessor: TMyFontProcessor;
    FULLSCREEN_TEXT: string;
    anchor: Integer;
    Y: Integer;
    beginWidth: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        class function getInstance: TFullScreenPaintable; static;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, Anchor, UpdateMyFontProcessor;


{AB:CODE}

procedure TFullScreenPaintable.InitFields;
begin
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.FULLSCREEN_TEXT := 'F11 - Toggle Fullscreen';
  Self.anchor := TAnchor.TOP_LEFT;
  
  
end;

function TFullScreenPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TFullScreenPaintable.getInstance: TFullScreenPaintable;
begin
        Exit(TFullScreenPaintable.Create());
end;
    

constructor TFullScreenPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TFullScreenPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.Y := (4) * (font_.getHeight());
        Self.beginWidth := (TJava.SignedRightShift(font_.stringWidth(Self.FULLSCREEN_TEXT), 1));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TFullScreenPaintable.paint(graphics_: TGraphics);
var
  halfWidth: Integer;
  height: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        halfWidth := Self.displayInfo.getLastHalfWidth();
        height := Self.displayInfo.getLastHeight();
        graphics_.drawString(Self.FULLSCREEN_TEXT, (halfWidth) - (Self.beginWidth), (height) - (Self.Y), Self.anchor);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.game.layer.hud.basic
unit VelocityWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicHud, BasicColor, PrimitiveLongUtil;

type
  {AB:TYPES}
  TVelocityWidget = class(TBasicHud)
  public
    KILOMETERS_PER_HOUR_STR: TArray<WideChar>;
    totalChars: Integer;
    velocity: Integer;
    maxVelocity: Integer;
    string_: TArray<WideChar>;
    totalDigits: Integer;
    powerOfTenVelocity: Integer;
    primitiveLongUtil: TPrimitiveLongUtil;
    offset: Integer;
    offset2: Integer;
    procedure InitFields;
        constructor Create(powerOfTenVelocity: Integer; location: Integer; direction: Integer; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); override;
        function get: Integer; virtual;
        procedure add(value: Integer); virtual;
        procedure set_(value: Integer); virtual;
        procedure reduce(value: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, OpenGLFeatureUtil, MyFontProcessor, MathUtil, PrimitiveLongSingleton;


{AB:CODE}

procedure TVelocityWidget.InitFields;
begin
  Self.KILOMETERS_PER_HOUR_STR := TArray<WideChar>.Create(' ', 'k', 'm', '/', 'h');
  Self.totalChars := System.Length(Self.KILOMETERS_PER_HOUR_STR);
  
  
  Self.string_ := TPrimitiveLongSingleton.getInstance().ZERO;
  Self.totalDigits := 1;
  
  
  Self.offset := 0;
  Self.offset2 := 0;
end;
    

constructor TVelocityWidget.Create(powerOfTenVelocity: Integer; location: Integer; direction: Integer; basicColor_: TBasicColor);
begin
        inherited Create(location, direction, 2, basicColor_);
        InitFields;
        Self.powerOfTenVelocity := powerOfTenVelocity;
        Self.maxVelocity := powerOfTenVelocity;
        Self.velocity := 0;
        Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(powerOfTenVelocity);
        Self.updateMaxHeight := 14;
end;
    

procedure TVelocityWidget.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.updateMaxWidth := (font_.getSize()) * ((((5) + (TMathUtil.getInstance().getTotalDigits(Self.powerOfTenVelocity))) + (1)));
        inherited updateMeasurement(graphics_);
        Self.offset := (TMyFontProcessor.defaultStringWidth(font_, Self.primitiveLongUtil.getMaxDigits())) + (TMyFontProcessor.defaultStringWidth(font_, 2));
        Self.offset2 := ((Self.offset) - (TMyFontProcessor.defaultStringWidth(font_, Self.totalDigits))) - (TMyFontProcessor.defaultStringWidth(font_, 2));
end;
    

function TVelocityWidget.get: Integer;
begin
        Exit(Self.velocity);
end;
    

procedure TVelocityWidget.add(value: Integer);
begin
        Self.set_((Self.velocity) + (value));
end;
    

procedure TVelocityWidget.set_(value: Integer);
var
  lastVelocity: Integer;
begin
        lastVelocity := Self.velocity;
        Self.velocity := value;
        if (Self.velocity) > (Self.maxVelocity) then begin
            Self.velocity := 0;
        end;
        if (lastVelocity) <> (Self.velocity) then begin
            Self.string_ := Self.primitiveLongUtil.getCharArray((Self.velocity) * (18));
            if TOpenGLFeatureUtil.getInstance().isAnyThreed() then begin
                Self.totalDigits := (Self.primitiveLongUtil.getCurrentTotalDigits()) + (1);
            end else begin
                Self.totalDigits := Self.primitiveLongUtil.getCurrentTotalDigits();
            end;
            Self.myFontProcessor := Self.updateMyFontProcessor;
        end;
end;
    

procedure TVelocityWidget.reduce(value: Integer);
begin
        Self.set_((Self.velocity) - (value));
end;
    

procedure TVelocityWidget.paint(graphics_: TGraphics);
begin
        inherited paintDXY(graphics_, Self.string_, 0, Self.totalDigits, Self.KILOMETERS_PER_HOUR_STR, 0, Self.totalChars, Self.offset2, Self.offset);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


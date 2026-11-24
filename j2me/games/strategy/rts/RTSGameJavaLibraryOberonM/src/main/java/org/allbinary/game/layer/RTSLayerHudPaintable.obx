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
// package org.allbinary.game.layer
unit RTSLayerHudPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, CollidableDestroyableDamageableLayer, UpdateMyFontInterface, RTSLayer, SelectionHudPaintable;

type
  {AB:TYPES}
  TRTSLayerHudPaintable = class(TSelectionHudPaintable, IUpdateMyFontInterface)
  public
    weaponProperties: TArray<string>;
    rtsLayer: TCollidableDestroyableDamageableLayer;
    costY: Integer;
    costY1: Integer;
    fontHeight: Integer;
    class var instance: TRTSLayerHudPaintable;
    procedure InitFields;
    function JavaObject: TObject;
        class function getInstance: TRTSLayerHudPaintable; static;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure updateSelectionInfo; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure setRtsLayer(rtsLayer_: TRTSLayer); virtual;
        function getRtsLayer: TCollidableDestroyableDamageableLayer;
  end;

implementation
uses
  Font, StringUtil, AndroidUtil, BasicWeaponPart;


{AB:CODE}

procedure TRTSLayerHudPaintable.InitFields;
begin
  Self.weaponProperties := TStringUtil.getInstance().getArrayInstance();
  Self.rtsLayer := TCollidableDestroyableDamageableLayer.getNullInstance();
  
  
  
end;

function TRTSLayerHudPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TRTSLayerHudPaintable.getInstance: TRTSLayerHudPaintable;
begin
        Exit(TRTSLayerHudPaintable.instance);
end;
    

constructor TRTSLayerHudPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TRTSLayerHudPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        inherited updateMeasurement(graphics_);
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        Self.costY1 := ((Self.y) + (((((System.Length(Self.weaponProperties)) + (1))) * (Self.fontHeight))));
        if not (TAndroidUtil.isAndroid()) then begin
            Self.costY := Self.costY1;
        end else begin
            Self.costY := ((Self.y) + (((((System.Length(Self.weaponProperties)) + (2))) * (Self.fontHeight))));
        end;
end;
    

procedure TRTSLayerHudPaintable.updateSelectionInfo;
var
  partInterface: TBasicWeaponPart;
begin
        Self.setName(Self.getRtsLayer().getName());
        partInterface := TBasicWeaponPart(TJava.ToObject(Self.getRtsLayer().getPartInterfaceArray()[0]));
        Self.weaponProperties := partInterface.getWeaponProperties().toStringArray();
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure TRTSLayerHudPaintable.paint(graphics_: TGraphics);
var
  size: Integer;
  index: Integer;
begin
        inherited paint(graphics_);
        size := System.Length(Self.weaponProperties);
        for index := 0 to size - 1 do begin
            graphics_.drawString(Self.weaponProperties[index], Self.textX, (Self.y) + (((((index) + (1))) * (Self.fontHeight))), 0);
        end;
end;
    

procedure TRTSLayerHudPaintable.setRtsLayer(rtsLayer_: TRTSLayer);
begin
        Self.rtsLayer := rtsLayer_;
end;
    

function TRTSLayerHudPaintable.getRtsLayer: TCollidableDestroyableDamageableLayer;
begin
        Exit(Self.rtsLayer);
end;

initialization
  {AB:INITIALIZATION}
  TRTSLayerHudPaintable.instance := TRTSLayerHudPaintable.Create();
  {AB:END}

end.


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
unit UpgradableRTSLayerHudPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, CollidableDestroyableDamageableLayer, RTSLayerCompositePaintable, RTSLayer, SelectionHudPaintable;

type
  {AB:TYPES}
  TUpgradableRTSLayerHudPaintable = class(TSelectionHudPaintable)
  public
    PERCENT: string;
    rtsLayer: TCollidableDestroyableDamageableLayer;
    costY: Integer;
    costY1: Integer;
    percentCompleteX2: Integer;
    rtsLayerCompositePaintableLateInit: TRTSLayerCompositePaintable;
    charHeight: Integer;
    charWidth: Integer;
    percentComplete: Integer;
    percentCompleteX: Integer;
    percentCompleteArray: TArray<WideChar>;
    currentTotalDigits: Integer;
    class var instance: TUpgradableRTSLayerHudPaintable;
    procedure InitFields;
        class function getInstance: TUpgradableRTSLayerHudPaintable; static;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); override;
        procedure update; override;
        procedure updateSelectionInfo; override;
        procedure updateInfo; override;
        procedure paint(graphics_: TGraphics); override;
        procedure setRtsLayer(rtsLayer_: TRTSLayer); virtual;
        function getRtsLayer: TCollidableDestroyableDamageableLayer; virtual;
  end;

implementation
uses
  UpgradableWideRTSLayerPaintable, Font, CharArrayFactory, DisplayInfoSingleton, MyFontProcessor, CommonButtons;


{AB:CODE}

procedure TUpgradableRTSLayerHudPaintable.InitFields;
begin
  Self.PERCENT := '%';
  Self.rtsLayer := TCollidableDestroyableDamageableLayer.getNullInstance();
  
  
  
  
  
  
  
  
  Self.percentCompleteArray := TCharArrayFactory.getInstance().getZeroCharArray();
  
end;
    

class function TUpgradableRTSLayerHudPaintable.getInstance: TUpgradableRTSLayerHudPaintable;
begin
        Exit(TUpgradableRTSLayerHudPaintable.instance);
end;
    

constructor TUpgradableRTSLayerHudPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUpgradableRTSLayerHudPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        inherited updateMeasurement(graphics_);
        font_ := graphics_.getFont();
        Self.charHeight := font_.getHeight();
        Self.charWidth := TMyFontProcessor.defaultCharWidth(font_);
end;
    

procedure TUpgradableRTSLayerHudPaintable.update;
var
  commonButtons_: TCommonButtons;
  displayInfoSingleton_: TDisplayInfoSingleton;
begin
        inherited update();
        commonButtons_ := TCommonButtons.getInstance();
        Self.costY := ((Self.y) + (commonButtons_.STANDARD_BUTTON_SIZE));
        Self.costY1 := (((Self.y) + (commonButtons_.STANDARD_BUTTON_SIZE)) - (Self.charHeight));
        Self.percentCompleteX2 := ((Self.imageX) + (commonButtons_.STANDARD_BUTTON_SIZE)) - (Self.charWidth);
        displayInfoSingleton_ := TDisplayInfoSingleton.getInstance();
        if (displayInfoSingleton_.getLastWidth()) > (320) then begin
            Self.rtsLayerCompositePaintableLateInit := TUpgradableWideRTSLayerPaintable.Create(Self);
        end else begin
            Self.rtsLayerCompositePaintableLateInit := TRTSLayerCompositePaintable.Create(Self);
        end;
end;
    

procedure TUpgradableRTSLayerHudPaintable.updateSelectionInfo;
var
  rtsLayer_: TRTSLayer;
begin
        rtsLayer_ := TRTSLayer(TJava.ToObject(Self.getRtsLayer()));
        Self.rtsLayerCompositePaintableLateInit.update(rtsLayer_);
        Self.setAnimationInterface(rtsLayer_.getVerticleBuildAnimationInterface());
        Self.setName(rtsLayer_.getName());
end;
    

procedure TUpgradableRTSLayerHudPaintable.updateInfo;
var
  rtsLayer_: TRTSLayer;
begin
        rtsLayer_ := TRTSLayer(TJava.ToObject(Self.getRtsLayer()));
        Self.percentComplete := rtsLayer_.getPercentComplete();
        if (Self.percentComplete) < (10) then begin
            Self.percentCompleteX := 32;
        end else if (Self.percentComplete) < (100) then begin
            Self.percentCompleteX := 24;
        end else begin
            Self.percentCompleteX := 16;
        end;
        Self.percentCompleteArray := Self.getPrimitiveLongUtil().getCharArray(Self.percentComplete);
        Self.currentTotalDigits := Self.getPrimitiveLongUtil().getCurrentTotalDigits();
end;
    

procedure TUpgradableRTSLayerHudPaintable.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
        Self.rtsLayerCompositePaintableLateInit.paint(graphics_);
        graphics_.drawChars(Self.percentCompleteArray, 0, Self.currentTotalDigits, (Self.imageX) + (Self.percentCompleteX), Self.costY, 0);
        graphics_.drawString(Self.PERCENT, Self.percentCompleteX2, Self.costY, 0);
        Self.getAnimationInterface().paintXY(graphics_, Self.imageX, Self.y);
end;
    

procedure TUpgradableRTSLayerHudPaintable.setRtsLayer(rtsLayer_: TRTSLayer);
begin
        Self.rtsLayer := rtsLayer_;
end;
    

function TUpgradableRTSLayerHudPaintable.getRtsLayer: TCollidableDestroyableDamageableLayer;
begin
        Exit(Self.rtsLayer);
end;

initialization
  {AB:INITIALIZATION}
  TUpgradableRTSLayerHudPaintable.instance := TUpgradableRTSLayerHudPaintable.Create();
  {AB:END}

end.


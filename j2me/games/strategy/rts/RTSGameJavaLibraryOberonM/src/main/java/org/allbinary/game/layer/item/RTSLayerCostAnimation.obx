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
unit RTSLayerCostAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, CostLayerInterfaceFactoryInterface, TechEventListenerInterface, LogUtil, Animation, MyFontProcessor, UpdateMyFontInterface, AllBinaryEventObject, PrimitiveLongUtil;

type
  {AB:TYPES}
  TRTSLayerCostAnimation = class(TAnimation, ITechEventListenerInterface, IUpdateMyFontInterface)
  public
    logUtil: TLogUtil;
    primitiveLongUtil: TPrimitiveLongUtil;
    DOLLAR: string;
    image: TImage;
    layerInterfaceFactoryInterface: ICostLayerInterfaceFactoryInterface;
    myFontProcessor: TMyFontProcessor;
    costString: TArray<WideChar>;
    len: Integer;
    adjustedCostX: Integer;
    fontHeight: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(image_: TImage; layerInterfaceFactoryInterface: ICostLayerInterfaceFactoryInterface);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure onEvent(event: TAllBinaryEventObject); virtual;
        procedure onTechEvent(event: TAllBinaryEventObject); virtual;
        procedure update; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation
uses
  Font, CommonStrings, ForcedLogUtil, UpdateMyFontProcessor, NullUtil, EventStrings;


{AB:CODE}

procedure TRTSLayerCostAnimation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(10000);
  Self.DOLLAR := '$';
  
  
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.costString := TNullUtil.getInstance().NULL_CHAR_ARRAY;
  
  
  Self.fontHeight := 0;
end;

function TRTSLayerCostAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRTSLayerCostAnimation.Create(image_: TImage; layerInterfaceFactoryInterface: ICostLayerInterfaceFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.image := image_;
        Self.layerInterfaceFactoryInterface := layerInterfaceFactoryInterface;
        Self.update();
end;
    

procedure TRTSLayerCostAnimation.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        Self.adjustedCostX := font_.stringWidth(Self.DOLLAR);
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TRTSLayerCostAnimation.onEvent(event: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TRTSLayerCostAnimation.onTechEvent(event: TAllBinaryEventObject);
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.update();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'onTechEvent', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TRTSLayerCostAnimation.update;
begin
        Self.len := 0;
        Self.costString := Self.primitiveLongUtil.getCharArray(Self.layerInterfaceFactoryInterface.getCost());
        Self.len := Self.primitiveLongUtil.getCurrentTotalDigits();
end;
    

procedure TRTSLayerCostAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  adjustedCostY: Integer;
  xa: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        inherited paintXY(graphics_, x, y);
        adjustedCostY := (Self.image.getHeight()) - (Self.fontHeight);
        xa := (x) + (2);
        graphics_.drawString(Self.DOLLAR, xa, (y) + (adjustedCostY), 0);
        graphics_.drawChars(Self.costString, 0, Self.len, (x) + (Self.adjustedCostX), (y) + (adjustedCostY), 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit TechnologyRTSInterfaceImageItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, ABCustomImageItem, BasicColor, MyFontProcessor, UpdateMyFontInterface, PrimitiveLongUtil, RTSInterface;

type
  {AB:TYPES}
  TTechnologyRTSInterfaceImageItem = class(TABCustomImageItem, IUpdateMyFontInterface)
  public
    rtsInterface: IRTSInterface;
    primitiveLongUtil: TPrimitiveLongUtil;
    LEVEL: string;
    COST: string;
    DOLLAR: string;
    myFontProcessor: TMyFontProcessor;
    costString: TArray<WideChar>;
    costLength: Integer;
    levelString: TArray<WideChar>;
    levelLength: Integer;
    adjustedCostLabelY: Integer;
    adjustedCostX: Integer;
    adjustedCostY: Integer;
    adjustedLevelX: Integer;
    adjustedLevelY: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; img: TImage; layout: Integer; altText: string; basicColor_: TBasicColor; rtsInterface_: IRTSInterface);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function getRtsInterface: IRTSInterface; virtual;
        procedure update; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation
uses
  Font, NullImage, CharArrayFactory, UpdateMyFontProcessor;


{AB:CODE}

procedure TTechnologyRTSInterfaceImageItem.InitFields;
begin
  
  Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(10000);
  Self.LEVEL := 'Level';
  Self.COST := 'Cost';
  Self.DOLLAR := '$';
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.costString := TCharArrayFactory.getInstance().getZeroCharArray();
  
  Self.levelString := TCharArrayFactory.getInstance().getZeroCharArray();
  
  
  
  
  
  
end;

function TTechnologyRTSInterfaceImageItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTechnologyRTSInterfaceImageItem.Create(label_: string; img: TImage; layout: Integer; altText: string; basicColor_: TBasicColor; rtsInterface_: IRTSInterface);
begin
        inherited Create(label_, img, layout, altText, basicColor_, 0);
        InitFields;
        Self.rtsInterface := rtsInterface_;
        Self.update();
end;
    

procedure TTechnologyRTSInterfaceImageItem.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  fontHeight: Integer;
  imageHeight: Integer;
  image_: TImage;
begin
        font_ := graphics_.getFont();
        fontHeight := font_.getHeight();
        imageHeight := 0;
        image_ := Self.getImage();
        if (image_) <> (TNullImage.NULL_IMAGE) then begin
            imageHeight := image_.getHeight();
        end;
        Self.adjustedCostLabelY := ((-Self.yOffset) + (imageHeight)) - (((3) * (fontHeight)));
        Self.adjustedCostY := ((-Self.yOffset) + (imageHeight)) - (((2) * (fontHeight)));
        Self.adjustedCostX := (2) + (((System.Length(Self.DOLLAR)) * (((fontHeight) - (1)))));
        Self.adjustedLevelY := ((-Self.yOffset) + (imageHeight)) - (fontHeight);
        Self.adjustedLevelX := (2) + (((System.Length(Self.LEVEL)) * (((fontHeight) - (1)))));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

function TTechnologyRTSInterfaceImageItem.getRtsInterface: IRTSInterface;
begin
        Exit(Self.rtsInterface);
end;
    

procedure TTechnologyRTSInterfaceImageItem.update;
begin
        Self.costString := Self.primitiveLongUtil.getCharArray(Self.getRtsInterface().getUpgradeCost());
        Self.levelString := Self.primitiveLongUtil.getCharArray(Self.getRtsInterface().getLevel());
end;
    

procedure TTechnologyRTSInterfaceImageItem.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  xa: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        inherited paintXY(graphics_, x, y);
        xa := (x) + (2);
        graphics_.drawString(Self.COST, xa, (y) + (Self.adjustedCostLabelY), 0);
        graphics_.drawString(Self.DOLLAR, xa, (y) + (Self.adjustedCostY), 0);
        graphics_.drawChars(Self.costString, 0, Self.costLength, (x) + (Self.adjustedCostX), (y) + (Self.adjustedCostY), 0);
        graphics_.drawString(Self.LEVEL, xa, (y) + (Self.adjustedLevelY), 0);
        graphics_.drawChars(Self.levelString, 0, Self.levelLength, (x) + (Self.adjustedLevelX), (y) + (Self.adjustedLevelY), 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


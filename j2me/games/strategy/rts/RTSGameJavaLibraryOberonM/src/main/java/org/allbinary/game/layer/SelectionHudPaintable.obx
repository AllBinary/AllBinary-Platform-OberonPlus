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
unit SelectionHudPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor, MyFontProcessor, UpdateMyFontInterface, InitUpdatePaintable, PrimitiveLongUtil;

type
  {AB:TYPES}
  TSelectionHudPaintable = class(TInitUpdatePaintable, IUpdateMyFontInterface)
  public
    y: Integer;
    primitiveLongUtil: TPrimitiveLongUtil;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    x: Integer;
    textX: Integer;
    imageX: Integer;
    basicColor: TBasicColor;
    color: Integer;
    width: Integer;
    height: Integer;
    name: string;
    animationInterface: TAnimation;
    backgroundColor: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure update; virtual;
        procedure updateSelectionInfo; virtual;
        procedure updateInfo; virtual;
        function getPrimitiveLongUtil: TPrimitiveLongUtil; virtual;
        procedure setAnimationInterface(animationInterface: TAnimation); virtual;
        function getAnimationInterface: TAnimation; virtual;
        procedure setName(name: string); virtual;
        function getName: string; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setColor(color: Integer); virtual;
        function getColor: Integer; virtual;
        function getWidth: Integer; virtual;
        procedure setHeight(height: Integer); virtual;
        function getHeight: Integer; virtual;
        function getX: Integer; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Font, StringUtil, NullAnimationFactory, BasicColorFactory, DisplayInfoSingleton, UpdateMyFontProcessor, CommonButtons, TouchButtonLocationHelper;


{AB:CODE}

procedure TSelectionHudPaintable.InitFields;
begin
  Self.y := (TCommonButtons.getInstance().STANDARD_BUTTON_SIZE) + (17);
  
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  
  
  
  Self.basicColor := TBasicColorFactory.getInstance().BLACK;
  
  
  
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
  Self.animationInterface := TNullAnimationFactory.getFactoryInstance().getInstance(0);
  Self.backgroundColor := TBasicColorFactory.getInstance().GREY.intValue();
end;

function TSelectionHudPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSelectionHudPaintable.Create;
begin
    inherited Create;
    InitFields;
        Self.update();
        Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(10000);
end;
    

procedure TSelectionHudPaintable.updateMeasurement(graphics_: TGraphics);
var
  commonButtons_: TCommonButtons;
  font_: TFont;
begin
        commonButtons_ := TCommonButtons.getInstance();
        font_ := graphics_.getFont();
        Self.setHeight((commonButtons_.STANDARD_BUTTON_SIZE) + (font_.getHeight()));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TSelectionHudPaintable.update;
var
  commonButtons_: TCommonButtons;
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  displayInfoSingleton_: TDisplayInfoSingleton;
begin
        commonButtons_ := TCommonButtons.getInstance();
        touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
        displayInfoSingleton_ := TDisplayInfoSingleton.getInstance();
        Self.x := (commonButtons_.STANDARD_BUTTON_SIZE) + (touchButtonLocationHelper_.getColumnsRemainderHalf());
        Self.textX := (Self.getX()) + (4);
        Self.width := (displayInfoSingleton_.getLastWidth()) - ((Self.getX()) * (2));
        Self.imageX := ((Self.getWidth()) + (touchButtonLocationHelper_.getColumnsRemainderHalf())) - (10);
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure TSelectionHudPaintable.updateSelectionInfo;
begin
end;
    

procedure TSelectionHudPaintable.updateInfo;
begin
end;
    

function TSelectionHudPaintable.getPrimitiveLongUtil: TPrimitiveLongUtil;
begin
        Exit(Self.primitiveLongUtil);
end;
    

procedure TSelectionHudPaintable.setAnimationInterface(animationInterface: TAnimation);
begin
        Self.animationInterface := animationInterface;
end;
    

function TSelectionHudPaintable.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

procedure TSelectionHudPaintable.setName(name: string);
begin
        Self.name := name;
end;
    

function TSelectionHudPaintable.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TSelectionHudPaintable.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
        Self.setColor(basicColor_.intValue());
end;
    

function TSelectionHudPaintable.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

procedure TSelectionHudPaintable.setColor(color: Integer);
begin
        Self.color := color;
end;
    

function TSelectionHudPaintable.getColor: Integer;
begin
        Exit(Self.color);
end;
    

function TSelectionHudPaintable.getWidth: Integer;
begin
        Exit(Self.width);
end;
    

procedure TSelectionHudPaintable.setHeight(height: Integer);
begin
        Self.height := height;
end;
    

function TSelectionHudPaintable.getHeight: Integer;
begin
        Exit(Self.height);
end;
    

function TSelectionHudPaintable.getX: Integer;
begin
        Exit(Self.x);
end;
    

procedure TSelectionHudPaintable.paint(graphics_: TGraphics);
begin
        Self.myFontProcessor.process(graphics_);
        graphics_.setColor(Self.backgroundColor);
        graphics_.drawRect(Self.getX(), Self.y, Self.getWidth(), Self.getHeight());
        graphics_.setColor(Self.getColor());
        graphics_.drawString(Self.getName(), Self.textX, Self.y, 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


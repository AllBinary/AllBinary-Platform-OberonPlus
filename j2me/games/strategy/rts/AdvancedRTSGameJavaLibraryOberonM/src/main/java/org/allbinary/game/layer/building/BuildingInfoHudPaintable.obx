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
// package org.allbinary.game.layer.building
unit BuildingInfoHudPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, NumberStringHud, SelectionHudPaintable, LogUtil, PathFindingLayerInterface, BasicColor;

type
  {AB:TYPES}
  TBuildingInfoHudPaintable = class(TSelectionHudPaintable)
  public
    logUtil: TLogUtil;
    HEALTH: string;
    productivityHud: TNumberStringHud;
    efficiencyHud: TNumberStringHud;
    healthHud: TNumberStringHud;
    maxHealthHud: TNumberStringHud;
    rtsLayer: IPathFindingLayerInterface;
    currentHealth: Integer;
    class var instance: TBuildingInfoHudPaintable;
    procedure InitFields;
        class function getInstance: TBuildingInfoHudPaintable; static;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); override;
        procedure setBasicColorP(basicColor_: TBasicColor); override;
        procedure paint(graphics_: TGraphics); override;
        procedure updateSelectionInfo; override;
        procedure setRtsLayer(rtsLayer: IPathFindingLayerInterface); virtual;
  end;

implementation
uses
  BuildingLayer, Font, NumberStringHudFactory, CommonStrings, BasicHudFactory, NullPathFindingLayer, MyFontProcessor, MathUtil;


{AB:CODE}

procedure TBuildingInfoHudPaintable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.HEALTH := 'Health:';
  
  
  
  
  Self.rtsLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
  Self.currentHealth := 0;
end;
    

class function TBuildingInfoHudPaintable.getInstance: TBuildingInfoHudPaintable;
begin
        Exit(TBuildingInfoHudPaintable.instance);
end;
    

constructor TBuildingInfoHudPaintable.Create;
var
  numberStringHudFactory_: TNumberStringHudFactory;
  productivityHud: TNumberStringHud;
  efficiencyHud: TNumberStringHud;
  healthHud: TNumberStringHud;
  maxHealthHud: TNumberStringHud;
  index: Integer;
  basicHudFactory_: TBasicHudFactory;
  basicColor_: TBasicColor;
  textX: Integer;
  y: Integer;
  firstIndex: Integer;
  secondIndex: Integer;
  HEALTH: string;
  thirdIndex: Integer;
  totalLength: Integer;
  fourthIndex: Integer;
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        numberStringHudFactory_ := TNumberStringHudFactory.getInstance();
        productivityHud := numberStringHudFactory_.NULL_NUMBER_STRING_HUD;
        efficiencyHud := numberStringHudFactory_.NULL_NUMBER_STRING_HUD;
        healthHud := numberStringHudFactory_.NULL_NUMBER_STRING_HUD;
        maxHealthHud := numberStringHudFactory_.NULL_NUMBER_STRING_HUD;
        try
            index := 0;
            basicHudFactory_ := TBasicHudFactory.getInstance();
            basicColor_ := Self.getBasicColorP();
            textX := Self.textX;
            y := Self.y;
            firstIndex := index;
            { Java local class ProductivityNumberStringHud: move it to the unit }
            productivityHud := TProductivityNumberStringHud.Create();
            Inc(index);
            secondIndex := index;
            { Java local class EfficiencyNumberStringHud: move it to the unit }
            efficiencyHud := TEfficiencyNumberStringHud.Create();
            Inc(index);
            HEALTH := Self.HEALTH;
            thirdIndex := index;
            { Java local class HealthNumberStringHud: move it to the unit }
            totalLength := (System.Length(HEALTH)) + (1);
            healthHud := THealthNumberStringHud.Create();
            fourthIndex := index;
            { Java local class MaxHealthNumberStringHud: move it to the unit }
            maxHealthHud := TMaxHealthNumberStringHud.Create();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
        Self.productivityHud := productivityHud;
        Self.efficiencyHud := efficiencyHud;
        Self.healthHud := healthHud;
        Self.maxHealthHud := maxHealthHud;
end;
    

procedure TBuildingInfoHudPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  totalLength: Integer;
begin
        font_ := graphics_.getFont();
        totalLength := (System.Length(Self.HEALTH)) + (TMathUtil.getInstance().getTotalDigits(Self.currentHealth));
        Self.maxHealthHud.setX((Self.textX) + (TMyFontProcessor.defaultStringWidth(font_, totalLength)));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TBuildingInfoHudPaintable.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
        Self.productivityHud.setBasicColorP(basicColor_);
        Self.efficiencyHud.setBasicColorP(basicColor_);
        Self.healthHud.setBasicColorP(basicColor_);
        Self.maxHealthHud.setBasicColorP(basicColor_);
end;
    

procedure TBuildingInfoHudPaintable.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
        Self.myFontProcessor.process(graphics_);
        Self.productivityHud.paint(graphics_);
        Self.efficiencyHud.paint(graphics_);
        Self.healthHud.paint(graphics_);
        Self.maxHealthHud.paint(graphics_);
        Self.getAnimationInterface().paintXY(graphics_, Self.imageX, Self.y);
end;
    

procedure TBuildingInfoHudPaintable.updateSelectionInfo;
var
  buildingLayer_: TBuildingLayer;
begin
        buildingLayer_ := TBuildingLayer(TJava.ToObject(Self.rtsLayer));
        Self.setName(buildingLayer_.getName());
        Self.setAnimationInterface(buildingLayer_.getVerticleBuildAnimationInterface());
        Self.productivityHud.set_(buildingLayer_.getProductivity());
        Self.efficiencyHud.set_(TJava.Divide(buildingLayer_.getEfficiency(), 100));
        Self.currentHealth := buildingLayer_.getHealthInterface().getHealth();
        Self.healthHud.set_(Self.currentHealth);
        Self.myFontProcessor := Self.updateMyFontProcessor;
        Self.maxHealthHud.set_(buildingLayer_.getHealthInterface().getMaxHealth());
end;
    

procedure TBuildingInfoHudPaintable.setRtsLayer(rtsLayer: IPathFindingLayerInterface);
begin
        Self.rtsLayer := rtsLayer;
end;

initialization
  {AB:INITIALIZATION}
  TBuildingInfoHudPaintable.instance := TBuildingInfoHudPaintable.Create();
  {AB:END}

end.


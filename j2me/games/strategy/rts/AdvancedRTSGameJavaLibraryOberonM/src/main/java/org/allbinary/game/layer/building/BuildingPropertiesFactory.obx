{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.building
unit BuildingPropertiesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DamageFloaters, TrackingEvent, Paintable, ABHashtable, BuildingLayer;

type
  {AB:TYPES}
  TBuildingPropertiesFactory = class(TObject)
  public
    damageFloatersPaintableInterface: TPaintable;
    class var instance: TBuildingPropertiesFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBuildingPropertiesFactory; static;
        function getEfficiencyPerLevel(buildingLayer_: TBuildingLayer): Integer; virtual;
        function getDamageFloaters(buildingLayer_: TBuildingLayer): TDamageFloaters; virtual;
        function getHealthBar(buildingLayer_: TBuildingLayer): TPaintable; virtual;
        function getHashtable: TABHashtable<TObject, TObject>; virtual;
        function getTrackingEvent(buildingLayer_: TBuildingLayer): TTrackingEvent; virtual;
  end;

implementation
uses
  PtsDamageFloaters, Features, GameFeatureFactory, BasicHudFactory, HealthBar, HealthBarTwodAnimation, NullPaintable, AllBinaryLayer, StdUtil;


{AB:CODE}

procedure TBuildingPropertiesFactory.InitFields;
begin
  Self.damageFloatersPaintableInterface := TNullPaintable.getInstance();
end;

constructor TBuildingPropertiesFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBuildingPropertiesFactory.getInstance: TBuildingPropertiesFactory;
begin
        Exit(TBuildingPropertiesFactory.instance);
end;
    

function TBuildingPropertiesFactory.getEfficiencyPerLevel(buildingLayer_: TBuildingLayer): Integer;
begin
        Exit(((10000) div (buildingLayer_.getMaxLevel())) + ((10000) mod (buildingLayer_.getMaxLevel())));
end;
    

function TBuildingPropertiesFactory.getDamageFloaters(buildingLayer_: TBuildingLayer): TDamageFloaters;
var
  damageFloaters_: TDamageFloaters;
begin
        damageFloaters_ := TDamageFloaters.getInstance();
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().DAMAGE_FLOATERS) then begin
            damageFloaters_ := TPtsDamageFloaters.Create(buildingLayer_);
            Self.damageFloatersPaintableInterface := damageFloaters_;
        end else begin
            damageFloaters_ := TDamageFloaters.Create();
        end;
        Exit(damageFloaters_);
end;
    

// throws Exception
function TBuildingPropertiesFactory.getHealthBar(buildingLayer_: TBuildingLayer): TPaintable;
var
  healthBar_: TPaintable;
begin
        healthBar_ := TNullPaintable.getInstance();
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().HEALTH_BARS) then begin
            healthBar_ := THealthBar.Create(buildingLayer_, buildingLayer_.getHealthInterface(), THealthBarTwodAnimation.Create(TAllBinaryLayer(TJava.ToObject(buildingLayer_)), TBasicHudFactory.getInstance().BOTTOMLEFT), -1);
        end;
        Exit(healthBar_);
end;
    

function TBuildingPropertiesFactory.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().createHashtable());
end;
    

function TBuildingPropertiesFactory.getTrackingEvent(buildingLayer_: TBuildingLayer): TTrackingEvent;
begin
        Exit(TTrackingEvent.Create(TJava.Box(buildingLayer_)));
end;

initialization
  {AB:INITIALIZATION}
  TBuildingPropertiesFactory.instance := TBuildingPropertiesFactory.Create();
  {AB:END}

end.


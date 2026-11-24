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
unit SimulatedBuildingPropertiesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DamageFloaters, TrackingEvent, Paintable, ABHashtable, BuildingLayer, BuildingPropertiesFactory;

type
  {AB:TYPES}
  TSimulatedBuildingPropertiesFactory = class(TBuildingPropertiesFactory)
  public
    class var instanceC: TSimulatedBuildingPropertiesFactory;
    constructor Create;
        class function getInstance: TSimulatedBuildingPropertiesFactory; static;
        function getEfficiencyPerLevel(buildingLayer_: TBuildingLayer): Integer; override;
        function getDamageFloaters(buildingLayer_: TBuildingLayer): TDamageFloaters; override;
        function getHealthBar(buildingLayer_: TBuildingLayer): TPaintable; override;
        function getHashtable: TABHashtable<TObject, TObject>; override;
        function getTrackingEvent(buildingLayer_: TBuildingLayer): TTrackingEvent; override;
  end;

implementation
uses
  TrackingEventHandler, NullPaintable, StdUtil;


{AB:CODE}

constructor TSimulatedBuildingPropertiesFactory.Create;
begin
  inherited Create;
end;
    

class function TSimulatedBuildingPropertiesFactory.getInstance: TSimulatedBuildingPropertiesFactory;
begin
        Exit(TSimulatedBuildingPropertiesFactory.instanceC);
end;
    

function TSimulatedBuildingPropertiesFactory.getEfficiencyPerLevel(buildingLayer_: TBuildingLayer): Integer;
begin
        Exit(0);
end;
    

function TSimulatedBuildingPropertiesFactory.getDamageFloaters(buildingLayer_: TBuildingLayer): TDamageFloaters;
var
  damageFloaters_: TDamageFloaters;
begin
        damageFloaters_ := TDamageFloaters.getInstance();
        Self.damageFloatersPaintableInterface := damageFloaters_;
        Exit(damageFloaters_);
end;
    

// throws Exception
function TSimulatedBuildingPropertiesFactory.getHealthBar(buildingLayer_: TBuildingLayer): TPaintable;
begin
        Exit(TNullPaintable.getInstance());
end;
    

function TSimulatedBuildingPropertiesFactory.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;
    

function TSimulatedBuildingPropertiesFactory.getTrackingEvent(buildingLayer_: TBuildingLayer): TTrackingEvent;
begin
        Exit(TTrackingEvent.Create(TJava.Box(TTrackingEventHandler.getInstance())));
end;

initialization
  {AB:INITIALIZATION}
  TSimulatedBuildingPropertiesFactory.instanceC := TSimulatedBuildingPropertiesFactory.Create();
  {AB:END}

end.


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
unit AdvancedPlayerOwnedRTSLayers;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, RTSLayer, AllBinaryGameLayer, PlayerOwnedRTSLayers;

type
  {AB:TYPES}
  TAdvancedPlayerOwnedRTSLayers = class(TPlayerOwnedRTSLayers)
  public
    unitsList: TBasicArrayList;
    waypointsList: TBasicArrayList;
    buildingList: TBasicArrayList;
    baseList: TBasicArrayList;
    garrisonList: TBasicArrayList;
    houseList: TBasicArrayList;
    labList: TBasicArrayList;
    factoryList: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        procedure addUnit(rtsLayer_: TRTSLayer); virtual;
        procedure addWaypoint(rtsLayer_: TRTSLayer); virtual;
        procedure addBase(rtsLayer_: TRTSLayer); virtual;
        procedure addGarrison(rtsLayer_: TRTSLayer); virtual;
        procedure addHouse(rtsLayer_: TRTSLayer); virtual;
        procedure addLab(rtsLayer_: TRTSLayer); virtual;
        procedure addFactory(rtsLayer_: TRTSLayer); virtual;
        procedure removeUnit(gameLayer: TAllBinaryGameLayer); virtual;
        procedure removeWaypoint(gameLayer: TAllBinaryGameLayer); virtual;
        function getUnitsList: TBasicArrayList; virtual;
        function getWaypointsList: TBasicArrayList; virtual;
        function getBaseList: TBasicArrayList; virtual;
        function getGarrisonList: TBasicArrayList; virtual;
        function getHouseList: TBasicArrayList; virtual;
        function getLabList: TBasicArrayList; virtual;
        function getFactoryList: TBasicArrayList; virtual;
        function getTotalBuildings: Integer; virtual;
        procedure removeBuilding(layerInterface: TAllBinaryGameLayer); virtual;
        function toString: string; override;
        function getBuildingList: TBasicArrayList; virtual;
  end;

implementation
uses
  StringMaker, BasicArrayListD;


{AB:CODE}

procedure TAdvancedPlayerOwnedRTSLayers.InitFields;
begin
  Self.unitsList := TBasicArrayListD.Create();
  Self.waypointsList := TBasicArrayListD.Create();
  Self.buildingList := TBasicArrayListD.Create();
  Self.baseList := TBasicArrayListD.Create();
  Self.garrisonList := TBasicArrayListD.Create();
  Self.houseList := TBasicArrayListD.Create();
  Self.labList := TBasicArrayListD.Create();
  Self.factoryList := TBasicArrayListD.Create();
end;

constructor TAdvancedPlayerOwnedRTSLayers.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.addUnit(rtsLayer_: TRTSLayer);
begin
        Self.unitsList.add(TJava.Box(rtsLayer_));
        Self.rtsLayerList.add(rtsLayer_);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.addWaypoint(rtsLayer_: TRTSLayer);
begin
        Self.waypointsList.add(TJava.Box(rtsLayer_));
        Self.rtsLayerList.add(rtsLayer_);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.addBase(rtsLayer_: TRTSLayer);
begin
        Self.baseList.add(TJava.Box(rtsLayer_));
        Self.buildingList.add(TJava.Box(rtsLayer_));
        Self.rtsLayerList.add(rtsLayer_);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.addGarrison(rtsLayer_: TRTSLayer);
begin
        Self.garrisonList.add(TJava.Box(rtsLayer_));
        Self.buildingList.add(TJava.Box(rtsLayer_));
        Self.rtsLayerList.add(rtsLayer_);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.addHouse(rtsLayer_: TRTSLayer);
begin
        Self.houseList.add(TJava.Box(rtsLayer_));
        Self.buildingList.add(TJava.Box(rtsLayer_));
        Self.rtsLayerList.add(rtsLayer_);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.addLab(rtsLayer_: TRTSLayer);
begin
        Self.labList.add(TJava.Box(rtsLayer_));
        Self.buildingList.add(TJava.Box(rtsLayer_));
        Self.rtsLayerList.add(rtsLayer_);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.addFactory(rtsLayer_: TRTSLayer);
begin
        Self.factoryList.add(TJava.Box(rtsLayer_));
        Self.buildingList.add(TJava.Box(rtsLayer_));
        Self.rtsLayerList.add(rtsLayer_);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.removeUnit(gameLayer: TAllBinaryGameLayer);
begin
        Self.unitsList.remove(gameLayer);
        Self.rtsLayerList.remove(gameLayer);
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.removeWaypoint(gameLayer: TAllBinaryGameLayer);
begin
        Self.waypointsList.remove(gameLayer);
        Self.rtsLayerList.remove(gameLayer);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getUnitsList: TBasicArrayList;
begin
        Exit(Self.unitsList);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getWaypointsList: TBasicArrayList;
begin
        Exit(Self.waypointsList);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getBaseList: TBasicArrayList;
begin
        Exit(Self.baseList);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getGarrisonList: TBasicArrayList;
begin
        Exit(Self.garrisonList);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getHouseList: TBasicArrayList;
begin
        Exit(Self.houseList);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getLabList: TBasicArrayList;
begin
        Exit(Self.labList);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getFactoryList: TBasicArrayList;
begin
        Exit(Self.factoryList);
end;
    

function TAdvancedPlayerOwnedRTSLayers.getTotalBuildings: Integer;
begin
        Exit(((((Self.baseList.size()) + (Self.garrisonList.size())) + (Self.houseList.size())) + (Self.labList.size())) + (Self.factoryList.size()));
end;
    

procedure TAdvancedPlayerOwnedRTSLayers.removeBuilding(layerInterface: TAllBinaryGameLayer);
begin
        Self.buildingList.add(TJava.Box(layerInterface));
        if Self.getBaseList().remove(layerInterface) then begin
            Self.rtsLayerList.remove(layerInterface);
        end else if Self.getFactoryList().remove(layerInterface) then begin
            Self.rtsLayerList.remove(layerInterface);
        end else if Self.getGarrisonList().remove(layerInterface) then begin
            Self.rtsLayerList.remove(layerInterface);
        end else if Self.getLabList().remove(layerInterface) then begin
            Self.rtsLayerList.remove(layerInterface);
        end else if Self.getHouseList().remove(layerInterface) then begin
            Self.rtsLayerList.remove(layerInterface);
        end;
end;
    

function TAdvancedPlayerOwnedRTSLayers.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(' Bases: ');
        stringBuffer.appendint(Self.getBaseList().size());
        stringBuffer.append(' Factory: ');
        stringBuffer.appendint(Self.getFactoryList().size());
        stringBuffer.append(' Garrison: ');
        stringBuffer.appendint(Self.getGarrisonList().size());
        stringBuffer.append(' Labs: ');
        stringBuffer.appendint(Self.getLabList().size());
        stringBuffer.append(' Houses: ');
        stringBuffer.appendint(Self.getHouseList().size());
        stringBuffer.append(' Waypoints: ');
        stringBuffer.appendint(Self.getWaypointsList().size());
        stringBuffer.append(' Units: ');
        stringBuffer.appendint(Self.getUnitsList().size());
        Exit(stringBuffer.toString());
end;
    

function TAdvancedPlayerOwnedRTSLayers.getBuildingList: TBasicArrayList;
begin
        Exit(Self.buildingList);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


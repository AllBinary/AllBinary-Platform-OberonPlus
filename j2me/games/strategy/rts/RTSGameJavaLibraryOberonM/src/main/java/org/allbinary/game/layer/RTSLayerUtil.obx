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
unit RTSLayerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GroupCommonFactory, BasicArrayList, LogUtil, WeaponProperties, BaseRaceTrackGeographicMap, ABHashtable, RTSLayer;

type
  {AB:TYPES}
  TRTSLayerUtil = class(TObject)
  public
    logUtil: TLogUtil;
    groupCommonFactory: TGroupCommonFactory;
    MAX_RELOAD_TIME: Int64;
    class var instance: TRTSLayerUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRTSLayerUtil; static;
        function createWeaponProperties(weaponProperties_: TWeaponProperties; currentLevel: Integer; lastLevel: Integer): TWeaponProperties;
        procedure downgrade(rtsLayer_: TRTSLayer); virtual;
        procedure upgrade(rtsLayer_: TRTSLayer); virtual;
        function getCostExponential(cost: Int64): Int64; virtual;
        function getWeaponPropertiesCost(weaponProperties_: TWeaponProperties): Integer;
        function getCost(rtsLayer_: TRTSLayer): Integer; virtual;
        function getDowngradeCost(rtsLayer_: TRTSLayer): Integer; virtual;
        function getUpgradeCost(rtsLayer_: TRTSLayer): Integer; virtual;
        procedure destroyAndClear(list: TBasicArrayList);
        function createFakeRTSLayerHashtable(baseRaceTrackGeographicMap_: TBaseRaceTrackGeographicMap): TABHashtable<TObject, TObject>;
  end;

implementation
uses
  FakeLayerManager, AllBinaryGameLayerManager, DirectionFactory, GameInfo, BasicGroupFactory, PartInterface, BasicWeaponPart, StdUtil, StringMaker, BasicGeographicMap;


{AB:CODE}

procedure TRTSLayerUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.groupCommonFactory := TGroupCommonFactory.getInstance();
  Self.MAX_RELOAD_TIME := (Int64(High(Integer))) div (100000);
end;

constructor TRTSLayerUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRTSLayerUtil.getInstance: TRTSLayerUtil;
begin
        Exit(TRTSLayerUtil.instance);
end;
    

function TRTSLayerUtil.createWeaponProperties(weaponProperties_: TWeaponProperties; currentLevel: Integer; lastLevel: Integer): TWeaponProperties;
var
  reloadTime: Int64;
  newWeaponProperties: TWeaponProperties;
begin
        reloadTime := weaponProperties_.getReloadTime();
        if (lastLevel) > (currentLevel) then begin
            reloadTime := (reloadTime) + (50);
        end else if (lastLevel) < (currentLevel) then begin
            reloadTime := (reloadTime) - (50);
        end;
        newWeaponProperties := TWeaponProperties.Create(reloadTime, weaponProperties_.getTargetingTime(), weaponProperties_.getSpeed().getUnscaled(), (TJava.Divide(weaponProperties_.getDamage(), lastLevel)) * (currentLevel), weaponProperties_.getDissipation());
        Exit(newWeaponProperties);
end;
    

procedure TRTSLayerUtil.downgrade(rtsLayer_: TRTSLayer);
var
  partInterfaceArray: TArray<IPartInterface>;
  size: Integer;
  partInterface: TBasicWeaponPart;
  index: Integer;
begin
        rtsLayer_.setLevel((rtsLayer_.getLevel()) - (1));
        partInterfaceArray := rtsLayer_.getPartInterfaceArray();
        size := System.Length(partInterfaceArray);
        
        index := size;
        while (TJava.PreDec(index)) >= (0) do begin
            partInterface := TBasicWeaponPart(TJava.ToObject(partInterfaceArray[index]));
            partInterface.setWeaponProperties(Self.createWeaponProperties(partInterface.getWeaponProperties(), rtsLayer_.getLevel(), (rtsLayer_.getLevel()) + (1)));
        end;
        rtsLayer_.select();
end;
    

procedure TRTSLayerUtil.upgrade(rtsLayer_: TRTSLayer);
var
  partInterfaceArray: TArray<IPartInterface>;
  size: Integer;
  partInterface: TBasicWeaponPart;
  index: Integer;
begin
        rtsLayer_.setLevel((rtsLayer_.getLevel()) + (1));
        partInterfaceArray := rtsLayer_.getPartInterfaceArray();
        size := System.Length(partInterfaceArray);
        
        index := size;
        while (TJava.PreDec(index)) >= (0) do begin
            partInterface := TBasicWeaponPart(TJava.ToObject(partInterfaceArray[index]));
            partInterface.setWeaponProperties(Self.createWeaponProperties(partInterface.getWeaponProperties(), rtsLayer_.getLevel(), (rtsLayer_.getLevel()) - (1)));
        end;
        rtsLayer_.select();
end;
    

function TRTSLayerUtil.getCostExponential(cost: Int64): Int64;
begin
        Exit((((((cost) * (cost)) * (cost))) div (((cost) * (1000)))));
end;
    

function TRTSLayerUtil.getWeaponPropertiesCost(weaponProperties_: TWeaponProperties): Integer;
var
  cost: Int64;
begin
        cost := (((weaponProperties_.getDamage()) + (weaponProperties_.getRange())) + ((TJava.SignedRightShift((TJava.Divide(Self.MAX_RELOAD_TIME, weaponProperties_.getReloadTime())), 1))));
        cost := Self.getCostExponential(cost);
        Exit(Integer(cost));
end;
    

function TRTSLayerUtil.getCost(rtsLayer_: TRTSLayer): Integer;
var
  total: Integer;
  partInterfaceArray: TArray<IPartInterface>;
  size: Integer;
  partInterface: TBasicWeaponPart;
  weaponProperties_: TWeaponProperties;
  index: Integer;
begin
        total := 0;
        partInterfaceArray := rtsLayer_.getPartInterfaceArray();
        size := System.Length(partInterfaceArray);
        
        
        for index := (size) - (1) downto 0 do begin
            partInterface := TBasicWeaponPart(TJava.ToObject(partInterfaceArray[index]));
            weaponProperties_ := partInterface.getWeaponProperties();
            total := (total) + (Self.getWeaponPropertiesCost(weaponProperties_));
        end;
        Exit(total);
end;
    

function TRTSLayerUtil.getDowngradeCost(rtsLayer_: TRTSLayer): Integer;
var
  partInterfaceArray: TArray<IPartInterface>;
  size: Integer;
  downgradeCost: Integer;
  partInterface: TBasicWeaponPart;
  weaponProperties_: TWeaponProperties;
  downgradeWeaponCost: Integer;
  currentWeaponCost: Integer;
  index: Integer;
begin
        partInterfaceArray := rtsLayer_.getPartInterfaceArray();
        size := System.Length(partInterfaceArray);
        downgradeCost := 0;
        
        
        
        
        for index := (size) - (1) downto 0 do begin
            partInterface := TBasicWeaponPart(TJava.ToObject(partInterfaceArray[index]));
            weaponProperties_ := partInterface.getWeaponProperties();
            downgradeWeaponCost := Self.getWeaponPropertiesCost(Self.createWeaponProperties(weaponProperties_, (rtsLayer_.getLevel()) - (1), rtsLayer_.getLevel()));
            currentWeaponCost := Self.getWeaponPropertiesCost(weaponProperties_);
            downgradeCost := (downgradeCost) + (((currentWeaponCost) - (downgradeWeaponCost)));
        end;
        downgradeCost := ((downgradeCost) * (9)) div (10);
        Self.logUtil.putF(TStringMaker.Create().append('Total Cost: ').appendint(downgradeCost).toString(), TJava.Box(Self), 'getDowngradeCost');
        Exit(downgradeCost);
end;
    

function TRTSLayerUtil.getUpgradeCost(rtsLayer_: TRTSLayer): Integer;
var
  upgradeCost: Integer;
  partInterfaceArray: TArray<IPartInterface>;
  size: Integer;
  partInterface: TBasicWeaponPart;
  weaponProperties_: TWeaponProperties;
  upgradedWeaponCost: Integer;
  currentWeaponCost: Integer;
  index: Integer;
begin
        upgradeCost := 0;
        partInterfaceArray := rtsLayer_.getPartInterfaceArray();
        size := System.Length(partInterfaceArray);
        
        
        
        
        for index := (size) - (1) downto 0 do begin
            partInterface := TBasicWeaponPart(TJava.ToObject(partInterfaceArray[index]));
            weaponProperties_ := partInterface.getWeaponProperties();
            upgradedWeaponCost := Self.getWeaponPropertiesCost(Self.createWeaponProperties(weaponProperties_, (rtsLayer_.getLevel()) + (1), rtsLayer_.getLevel()));
            currentWeaponCost := Self.getWeaponPropertiesCost(weaponProperties_);
            upgradeCost := (upgradeCost) + (((upgradedWeaponCost) - (currentWeaponCost)));
        end;
        Self.logUtil.putF(TStringMaker.Create().append('Total Cost: ').appendint(upgradeCost).toString(), TJava.Box(Self), 'getUpgradeCost');
        Exit(upgradeCost);
end;
    

// throws Exception
procedure TRTSLayerUtil.destroyAndClear(list: TBasicArrayList);
var
  rtsLayer_: TRTSLayer;
  index: Integer;
begin
        
        for index := (list.size()) - (1) downto 0 do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(list.get(index)));
            rtsLayer_.setDestroyed(True);
        end;
        list.clear();
end;
    

function TRTSLayerUtil.createFakeRTSLayerHashtable(baseRaceTrackGeographicMap_: TBaseRaceTrackGeographicMap): TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
  layerManager: TFakeLayerManager;
begin
        hashtable := TStdUtil.getInstance().createHashtable();
        layerManager := TFakeLayerManager.Create(TGameInfo.NONE);
        layerManager.setGeographicMapInterface(TArray<TBasicGeographicMap>.Create(baseRaceTrackGeographicMap_));
        hashtable.put(TJava.Box(TAllBinaryGameLayerManager.ID), TJava.Box(layerManager));
        hashtable.put(TJava.Box(TDirectionFactory.getInstance().NAME), TJava.Box(TDirectionFactory.getInstance().LEFT));
        hashtable.put(TJava.Box(Self.groupCommonFactory.ID), TJava.Box(TBasicGroupFactory.getInstance().NONE_ARRAY));
        Exit(hashtable);
end;

initialization
  {AB:INITIALIZATION}
  TRTSLayerUtil.instance := TRTSLayerUtil.Create();
  {AB:END}

end.


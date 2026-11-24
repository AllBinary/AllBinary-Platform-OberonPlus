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
// package org.allbinary.game.layer.unit
unit UnitWaypointBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AdvancedRTSGameLayer, RTSLayerEvent, SensorAction, WaypointBehaviorBase, BuildingLayer, CollidableDestroyableDamageableLayer, WaypointEventListenerInterface, AllBinaryLayer, AllBinaryEventObject, GeographicMapCellHistory, GeographicMapCellPosition, CommonSeps, TimeDelayHelper, BasicArrayList, UnitWaypointStrings, UnitLayer;

type
  {AB:TYPES}
  TUnitWaypointBehavior = class(TWaypointBehaviorBase, IWaypointEventListenerInterface)
  public
    commonSeps: TCommonSeps;
    unitWaypointStrings: TUnitWaypointStrings;
    longWeaponRange: Integer;
    sensorAction: TSensorAction;
    completeTimeDelayHelper: TTimeDelayHelper;
    currentGeographicMapCellHistoryP: TGeographicMapCellHistory;
    lastPathGeographicMapCellPosition: TGeographicMapCellPosition;
    currentPathGeographicMapCellPosition: TGeographicMapCellPosition;
    FAKE_WAYPOINT_LAYER: TCollidableDestroyableDamageableLayer;
    targetList: TBasicArrayList;
    possibleTargetList: TBasicArrayList;
    associatedAdvancedRTSGameLayer: TUnitLayer;
    moving: Boolean;
    movingFromStopped: Boolean;
    waypointPathsListP: TBasicArrayList;
    currentTargetDistance: Integer;
    currentTargetLayerInterfaceP: TCollidableDestroyableDamageableLayer;
    trackingWaypoint: Boolean;
    repeatedToLong: TTimeDelayHelper;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(associatedAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TCollidableDestroyableDamageableLayer);
        procedure initRange(weaponRange: Integer); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onWaypointEvent(event: TRTSLayerEvent); virtual;
        procedure addWaypointFromUser(advancedRTSGameLayer_: TAdvancedRTSGameLayer); virtual;
        procedure addWaypointFromBuilding(advancedRTSGameLayer_: TAdvancedRTSGameLayer);
        function isWaypointListEmptyOrOnlyTargets: Boolean; virtual;
        function insertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean; virtual;
        procedure move; virtual;
        procedure setRandomGeographicMapCellHistory(pathsList: TBasicArrayList); virtual;
        procedure setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList); virtual;
        function canInsertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean; virtual;
        procedure addBuildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition); virtual;
        procedure moveAwayFromBuilding(buildingLayer_: TBuildingLayer); virtual;
        function needToMove: Boolean; virtual;
        function getMovementLogicAsString: string; virtual;
        function isMovingFromStopped: Boolean; virtual;
        procedure setMovingFromStopped(movingFromStopped: Boolean); virtual;
        procedure setWaypointPathsList(waypointPathsList: TBasicArrayList); virtual;
        function getWaypointPathsList: TBasicArrayList; virtual;
        function isMoving: Boolean; virtual;
        procedure setMoving(moving: Boolean); virtual;
        function isTrackingWaypoint: Boolean; virtual;
        function getPossibleTargetList: TBasicArrayList; virtual;
        procedure setLastPathGeographicMapCellPosition(lastPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getLastPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setCurrentPathGeographicMapCellPosition(currentPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setSensorAction(sensorAction_: TSensorAction); virtual;
        function getSensorAction: TSensorAction; virtual;
        procedure setCurrentTargetLayerInterface(currentTargetLayerInterface: TCollidableDestroyableDamageableLayer); virtual;
        function getCurrentTargetLayerInterface: TCollidableDestroyableDamageableLayer; virtual;
        procedure setCurrentTargetDistance(currentTargetDistance: Integer); virtual;
        function getCurrentTargetDistance: Integer; virtual;
        function getCompleteTimeDelayHelper: TTimeDelayHelper; virtual;
        function getCurrentGeographicMapCellHistory: TGeographicMapCellHistory; virtual;
        procedure setTrackingWaypoint(trackingWaypoint: Boolean); virtual;
  end;

implementation
uses
  PrimaryWaypointHelper, SensorActionFactory, BasicColorFactory, ForcedLogUtil, StringMaker, StringUtil, EventStrings, SimpleGeographicMapCellPositionFactory, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TUnitWaypointBehavior.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
  Self.unitWaypointStrings := TUnitWaypointStrings.getInstance();
  Self.longWeaponRange := 0;
  Self.sensorAction := TSensorActionFactory.getInstance().ATTACK;
  
  
  Self.lastPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.currentPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  
  
  
  
  Self.moving := False;
  Self.movingFromStopped := False;
  Self.waypointPathsListP := TBasicArrayListUtil.getInstance().getImmutableInstance();
  Self.currentTargetDistance := High(Integer);
  Self.currentTargetLayerInterfaceP := TCollidableDestroyableDamageableLayer.getNullInstance();
  
  Self.repeatedToLong := TTimeDelayHelper.Create(22000);
end;

function TUnitWaypointBehavior.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUnitWaypointBehavior.Create(associatedAdvancedRTSGameLayer: TUnitLayer; fakeWaypoint: TCollidableDestroyableDamageableLayer);
begin
    inherited Create;
    InitFields;
        Self.associatedAdvancedRTSGameLayer := associatedAdvancedRTSGameLayer;
        Self.completeTimeDelayHelper := TTimeDelayHelper.Create(30000);
        Self.targetList := TBasicArrayListD.Create();
        Self.possibleTargetList := TBasicArrayListD.Create();
        Self.setWaypointPathsList(TBasicArrayListUtil.getInstance().getImmutableInstance());
        Self.currentGeographicMapCellHistoryP := TGeographicMapCellHistory.Create();
        Self.FAKE_WAYPOINT_LAYER := fakeWaypoint;
end;
    

procedure TUnitWaypointBehavior.initRange(weaponRange: Integer);
begin
        Self.longWeaponRange := (weaponRange) div (2);
end;
    

procedure TUnitWaypointBehavior.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TUnitWaypointBehavior.onWaypointEvent(event: TRTSLayerEvent);
var
  advancedRTSGameLayer_: TAdvancedRTSGameLayer;
begin
        advancedRTSGameLayer_ := TAdvancedRTSGameLayer(TJava.ToObject(event.getRtsLayer()));
        Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.onWaypointEvent(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer_);
        if Self.associatedAdvancedRTSGameLayer.isSelected() then begin
            Self.addWaypointFromUser(advancedRTSGameLayer_);
        end else if advancedRTSGameLayer_.shouldAddWaypointFromBuilding() then begin
            Self.addWaypointFromBuilding(advancedRTSGameLayer_);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior.addWaypointFromUser(advancedRTSGameLayer_: TAdvancedRTSGameLayer);
begin
end;
    

// throws Exception
procedure TUnitWaypointBehavior.addWaypointFromBuilding(advancedRTSGameLayer_: TAdvancedRTSGameLayer);
begin
        if ((advancedRTSGameLayer_) = (TPrimaryWaypointHelper.getInstance().getWaypointLayer())) or ((advancedRTSGameLayer_.getParentLayer()) = (Self.associatedAdvancedRTSGameLayer.getParentLayer())) then begin
            if not (Self.targetList.contains(TJava.Box(advancedRTSGameLayer_))) then begin
                Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuilding(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer_);
                if advancedRTSGameLayer_.isDestroyed() then begin
                    raise SysUtils.Exception.Create('Trying to add a dead: ' + TJava.ToString(advancedRTSGameLayer_));
                end;
                Self.targetList.add(TJava.Box(advancedRTSGameLayer_));
                Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuildingList(Self.associatedAdvancedRTSGameLayer, advancedRTSGameLayer_, Self.targetList);
            end;
        end;
end;
    

function TUnitWaypointBehavior.isWaypointListEmptyOrOnlyTargets: Boolean;
begin
        Exit(False);
end;
    

// throws Exception
function TUnitWaypointBehavior.insertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean;
begin
        if Self.canInsertWaypoint(index, rtsLayer) then begin
            Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypoint(Self.associatedAdvancedRTSGameLayer, index, rtsLayer, Self.getName());
            if rtsLayer.isDestroyed() then begin
                raise SysUtils.Exception.Create('Trying to add a dead: ' + TJava.ToString(rtsLayer));
            end;
            Self.targetList.addAt(index, TJava.Box(rtsLayer));
            Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypointList(Self.associatedAdvancedRTSGameLayer, index, rtsLayer, Self.getName(), Self.targetList);
            Exit(True);
        end;
        Exit(False);
end;
    

procedure TUnitWaypointBehavior.move;
begin
        if Self.isMoving() then begin
            Self.setMovingFromStopped(False);
        end else begin
            Self.setMovingFromStopped(True);
        end;
        Self.setMoving(False);
end;
    

// throws Exception
procedure TUnitWaypointBehavior.setRandomGeographicMapCellHistory(pathsList: TBasicArrayList);
var
  size: Integer;
  geographicMapCellPositionBasicArrayList: TBasicArrayList;
begin
        size := pathsList.size();
        Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.setRandomGeographicMapCellHistoryList(Self.associatedAdvancedRTSGameLayer, pathsList);
        if (size) > (0) then begin
            geographicMapCellPositionBasicArrayList := TBasicArrayList(TJava.ToObject(TBasicArrayListUtil.getInstance().getRandom(pathsList)));
            Self.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList);
        end;
end;
    

// throws Exception
procedure TUnitWaypointBehavior.setGeographicMapCellHistoryPath(geographicMapCellPositionBasicArrayList: TBasicArrayList);
begin
        Self.lastPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        if Self.associatedAdvancedRTSGameLayer.showMoreCaptionStates then begin
            Self.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper().update(Self.unitWaypointStrings.PATHING, TBasicColorFactory.getInstance().GREEN);
        end;
        Self.currentGeographicMapCellHistoryP.init();
        Self.associatedAdvancedRTSGameLayer.init(Self.currentGeographicMapCellHistoryP, geographicMapCellPositionBasicArrayList);
        Self.setTrackingWaypoint(True);
        Self.getCompleteTimeDelayHelper().setStartTimeTNT();
end;
    

function TUnitWaypointBehavior.canInsertWaypoint(index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer): Boolean;
begin
        if (Self.targetList.size()) > (4) then begin
        end else if Self.targetList.contains(TJava.Box(rtsLayer)) then begin
        end else begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
procedure TUnitWaypointBehavior.addBuildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition);
begin
end;
    

// throws Exception
procedure TUnitWaypointBehavior.moveAwayFromBuilding(buildingLayer_: TBuildingLayer);
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  list: TBasicArrayList;
  pathsList: TBasicArrayList;
begin
        geographicMapCellPosition_ := Self.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition();
        list := buildingLayer_.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList();
        if list.contains(TJava.Box(geographicMapCellPosition_)) then begin
            if Self.insertWaypoint(0, Self.FAKE_WAYPOINT_LAYER) then begin
                Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.moveAwayFromBuilding(Self.associatedAdvancedRTSGameLayer);
                Self.setCurrentTargetLayerInterface(TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.FAKE_WAYPOINT_LAYER)));
                pathsList := buildingLayer_.getMoveOutOfBuildAreaPath(geographicMapCellPosition_);
                Self.associatedAdvancedRTSGameLayer.setClosestGeographicMapCellHistory(pathsList);
            end;
        end;
end;
    

function TUnitWaypointBehavior.needToMove: Boolean;
var
  message: string;
begin
        Self.associatedAdvancedRTSGameLayer.waypointLogHelperP.needToMove(Self.associatedAdvancedRTSGameLayer, Self);
        if ((Self.isTrackingWaypoint()) or ((Self.sensorAction) = (TSensorActionFactory.getInstance().EVADE))) or ((((Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and ((Self.getCurrentTargetDistance()) >= ((Self.longWeaponRange) + (Self.currentTargetLayerInterfaceP.getHalfHeight()))))) then begin
            Self.repeatedToLong.setStartTimeTNT();
            Exit(True);
        end;
        if Self.repeatedToLong.isTimeTNT() then begin
            message := 'Repeating too long: ' + TJava.ToString(Self.getMovementLogicAsString());
            TForcedLogUtil.log(message, TJava.Box(Self.associatedAdvancedRTSGameLayer));
        end;
        Exit(False);
end;
    

function TUnitWaypointBehavior.getMovementLogicAsString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('isTrackingWaypoint: ');
        stringBuffer.appendboolean(Self.isTrackingWaypoint());
        stringBuffer.append(' sensorAction: ');
        stringBuffer.append(Self.sensorAction.name);
        stringBuffer.append(' getCurrentTargetLayerInterface: ');
        stringBuffer.append(TStringUtil.getInstance().toString(Self.currentTargetLayerInterfaceP));
        if (Self.currentTargetLayerInterfaceP) <> (TCollidableDestroyableDamageableLayer.getNullInstance()) then begin
            stringBuffer.append(' Target Range: ');
            stringBuffer.appendint(Self.getCurrentTargetDistance());
            stringBuffer.append(' >= ');
            stringBuffer.appendint(Integer(Trunc((Self.longWeaponRange) + (Self.currentTargetLayerInterfaceP.getHalfHeight()))));
        end;
        Exit(stringBuffer.toString());
end;
    

function TUnitWaypointBehavior.isMovingFromStopped: Boolean;
begin
        Exit(Self.movingFromStopped);
end;
    

procedure TUnitWaypointBehavior.setMovingFromStopped(movingFromStopped: Boolean);
begin
        Self.movingFromStopped := movingFromStopped;
end;
    

procedure TUnitWaypointBehavior.setWaypointPathsList(waypointPathsList: TBasicArrayList);
begin
        Self.waypointPathsListP := waypointPathsList;
end;
    

function TUnitWaypointBehavior.getWaypointPathsList: TBasicArrayList;
begin
        Exit(Self.waypointPathsListP);
end;
    

function TUnitWaypointBehavior.isMoving: Boolean;
begin
        Exit(Self.moving);
end;
    

procedure TUnitWaypointBehavior.setMoving(moving: Boolean);
begin
        Self.moving := moving;
end;
    

function TUnitWaypointBehavior.isTrackingWaypoint: Boolean;
begin
        Exit(Self.trackingWaypoint);
end;
    

function TUnitWaypointBehavior.getPossibleTargetList: TBasicArrayList;
begin
        Exit(Self.possibleTargetList);
end;
    

procedure TUnitWaypointBehavior.setLastPathGeographicMapCellPosition(lastPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.lastPathGeographicMapCellPosition := lastPathGeographicMapCellPosition;
end;
    

function TUnitWaypointBehavior.getLastPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.lastPathGeographicMapCellPosition);
end;
    

procedure TUnitWaypointBehavior.setCurrentPathGeographicMapCellPosition(currentPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.currentPathGeographicMapCellPosition := currentPathGeographicMapCellPosition;
end;
    

function TUnitWaypointBehavior.getCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.currentPathGeographicMapCellPosition);
end;
    

procedure TUnitWaypointBehavior.setSensorAction(sensorAction_: TSensorAction);
begin
        Self.sensorAction := sensorAction_;
end;
    

function TUnitWaypointBehavior.getSensorAction: TSensorAction;
begin
        Exit(Self.sensorAction);
end;
    

procedure TUnitWaypointBehavior.setCurrentTargetLayerInterface(currentTargetLayerInterface: TCollidableDestroyableDamageableLayer);
begin
        Self.currentTargetLayerInterfaceP := currentTargetLayerInterface;
end;
    

function TUnitWaypointBehavior.getCurrentTargetLayerInterface: TCollidableDestroyableDamageableLayer;
begin
        Exit(Self.currentTargetLayerInterfaceP);
end;
    

procedure TUnitWaypointBehavior.setCurrentTargetDistance(currentTargetDistance: Integer);
begin
        Self.currentTargetDistance := currentTargetDistance;
end;
    

function TUnitWaypointBehavior.getCurrentTargetDistance: Integer;
begin
        Exit(Self.currentTargetDistance);
end;
    

function TUnitWaypointBehavior.getCompleteTimeDelayHelper: TTimeDelayHelper;
begin
        Exit(Self.completeTimeDelayHelper);
end;
    

function TUnitWaypointBehavior.getCurrentGeographicMapCellHistory: TGeographicMapCellHistory;
begin
        Exit(Self.currentGeographicMapCellHistoryP);
end;
    

procedure TUnitWaypointBehavior.setTrackingWaypoint(trackingWaypoint: Boolean);
begin
        Self.trackingWaypoint := trackingWaypoint;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


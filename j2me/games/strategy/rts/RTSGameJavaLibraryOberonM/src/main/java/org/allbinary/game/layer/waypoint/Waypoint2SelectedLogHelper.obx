{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.waypoint
unit Waypoint2SelectedLogHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PathFindingLayerInterface, WaypointBehaviorBase, LogUtil, CommonSeps, StringUtil, PositionStrings, GeographicMapCellPosition, BasicArrayList, Waypoint2LogHelper;

type
  {AB:TYPES}
  TWaypoint2SelectedLogHelper = class(TWaypoint2LogHelper)
  public
    logUtil: TLogUtil;
    commonSeps: TCommonSeps;
    positionStrings: TPositionStrings;
    stringUtil: TStringUtil;
    ENEMY_POSSIBLE_TARGET: string;
    CLOSE_RANGE: string;
    SENSOR_RANGE: string;
    ONLY_TARGETS: string;
    SHORTER_THAN_CURRENT_TARGET_DISTANCE: string;
    CURRENT_TARGET_DESTROYED: string;
    CURRENT_TARGET_NOT_AVAILABLE: string;
    PROCESS_POSSIBLE_TARGET: string;
    class var instanceC: TWaypoint2SelectedLogHelper;
    procedure InitFields;
    constructor Create;
        class function getInstance: TWaypoint2LogHelper; static;
        procedure initRange(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; closeRange: Integer; sensorRange: Integer); override;
        procedure processPossibleTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer; isShorterThanCurrentTargetDistance: Boolean; isCurrentTargetDestroyed: Boolean); override;
        procedure processSetTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer); override;
        procedure processPossibleTargetCloser(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer); override;
        procedure setTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer); override;
        procedure setTargetPath(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure setTargetPathIgnoreNewPath(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase); override;
        procedure processWaypoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; targetLayer: IPathFindingLayerInterface; size: Integer); override;
        procedure processWaypointTracked(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase); override;
        procedure processWaypointTrackedVisit(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; geographicMapCellPosition_: TGeographicMapCellPosition); override;
        procedure processWaypointTrackedWithoutProgress(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; reason: string); override;
        procedure wander(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure targetDestroyed(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure processTargeting(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; dx: Integer; dy: Integer); override;
        procedure processTargetingNonWayPoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; dx: Integer; dy: Integer); override;
        procedure removeWaypoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; unitWaypointBehavior2: TWaypointBehaviorBase; waypointLayer: IPathFindingLayerInterface; reason: string); override;
        procedure removeWaypointList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; unitWaypointBehavior2: TWaypointBehaviorBase; list: TBasicArrayList); override;
        procedure removeWaypointClear(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure clearTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure addWaypointFromUser(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure targetMovedSoRetarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
  end;

implementation
uses
  CollidableDestroyableDamageableLayer, StringMaker;


{AB:CODE}

procedure TWaypoint2SelectedLogHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.positionStrings := TPositionStrings.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.ENEMY_POSSIBLE_TARGET := ' Enemy Possible Target: ';
  Self.CLOSE_RANGE := 'closeRange: ';
  Self.SENSOR_RANGE := ' sensorRange: ';
  Self.ONLY_TARGETS := ' Only Targets: ';
  Self.SHORTER_THAN_CURRENT_TARGET_DISTANCE := ' isShorterThanCurrentTargetDistance: ';
  Self.CURRENT_TARGET_DESTROYED := ' isCurrentTargetDestroyed: ';
  Self.CURRENT_TARGET_NOT_AVAILABLE := ' isCurrentTargetNotAvailable: ';
  Self.PROCESS_POSSIBLE_TARGET := 'selected: processPossibleTarget1';
end;

constructor TWaypoint2SelectedLogHelper.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TWaypoint2SelectedLogHelper.getInstance: TWaypoint2LogHelper;
begin
        Exit(TWaypoint2SelectedLogHelper.instanceC);
end;
    

procedure TWaypoint2SelectedLogHelper.initRange(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; closeRange: Integer; sensorRange: Integer);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.CLOSE_RANGE);
        stringBuffer.appendint(closeRange);
        stringBuffer.append(Self.SENSOR_RANGE);
        stringBuffer.appendint(sensorRange);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: initRange');
end;
    

procedure TWaypoint2SelectedLogHelper.processPossibleTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer; isShorterThanCurrentTargetDistance: Boolean; isCurrentTargetDestroyed: Boolean);
var
  stringBuffer: TStringMaker;
begin
        if (waypointBehaviorBase_.isWaypointListEmptyOrOnlyTargets()) and (waypointBehaviorBase_.isInSensorRange(TCollidableDestroyableDamageableLayer(TJava.ToObject(layerInterface)), anotherTargetDistance)) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
            stringBuffer.append(Self.ONLY_TARGETS);
            stringBuffer.appendboolean(waypointBehaviorBase_.isWaypointListEmptyOrOnlyTargets());
            stringBuffer.append(Self.SHORTER_THAN_CURRENT_TARGET_DISTANCE);
            stringBuffer.appendboolean(isShorterThanCurrentTargetDistance);
            stringBuffer.append(Self.CURRENT_TARGET_DESTROYED);
            stringBuffer.appendboolean(isCurrentTargetDestroyed);
            stringBuffer.append(Self.CURRENT_TARGET_NOT_AVAILABLE);
            stringBuffer.appendboolean((TJava.IsNull(waypointBehaviorBase_.getCurrentTargetLayerInterface())));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.PROCESS_POSSIBLE_TARGET);
        end;
end;
    

procedure TWaypoint2SelectedLogHelper.processSetTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(waypointBehaviorBase_.getCurrentTargetingStateString());
        stringBuffer.append(Self.ENEMY_POSSIBLE_TARGET);
        stringBuffer.append(layerInterface.getName());
        stringBuffer.append(' anotherTargetDistance: ');
        stringBuffer.appendint(anotherTargetDistance);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: processPossibleTarget2');
end;
    

procedure TWaypoint2SelectedLogHelper.processPossibleTargetCloser(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(waypointBehaviorBase_.getCurrentTargetingStateString());
        stringBuffer.append(Self.ENEMY_POSSIBLE_TARGET);
        stringBuffer.append(layerInterface.getName());
        stringBuffer.append(' anotherTargetDistance: ');
        stringBuffer.appendint(anotherTargetDistance);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: processPossibleTarget3');
end;
    

procedure TWaypoint2SelectedLogHelper.setTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(waypointBehaviorBase_.getName());
        stringBuffer.append(' targeting: ');
        stringBuffer.append(layerInterface.getName());
        stringBuffer.append(' at: ');
        stringBuffer.appendint(anotherTargetDistance);
        stringBuffer.append(' instead of: ');
        stringBuffer.append(waypointBehaviorBase_.getCurrentTargetingStateString());
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: setTarget');
end;
    

procedure TWaypoint2SelectedLogHelper.setTargetPath(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF('Target Destroyed', TJava.Box(Self), 'selected: setTargetPath');
end;
    

procedure TWaypoint2SelectedLogHelper.setTargetPathIgnoreNewPath(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' Set Path To Target: ');
        stringBuffer.append(waypointBehaviorBase_.getCurrentTargetLayerInterface().getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.stringUtil.toString(waypointBehaviorBase_.getCurrentTargetLayerInterface()));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: setTargetPath');
end;
    

procedure TWaypoint2SelectedLogHelper.processWaypoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase; targetLayer: IPathFindingLayerInterface; size: Integer);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' Size: ');
        stringBuffer.appendint(size);
        stringBuffer.append(' Waypoint: ');
        stringBuffer.append(targetLayer.getName());
        stringBuffer.append(' Target: ');
        stringBuffer.append(Self.stringUtil.toString(waypointBehaviorBase_.getCurrentTargetLayerInterface()));
        stringBuffer.append(' isTrackingWaypoint: ');
        stringBuffer.appendboolean(waypointBehaviorBase_.isTrackingWaypoint());
        stringBuffer.append(' WaypointOverridesAttacking: ');
        stringBuffer.appendboolean(waypointBehaviorBase_.isWaypointOverridesAttacking());
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: processWaypoint');
end;
    

procedure TWaypoint2SelectedLogHelper.processWaypointTracked(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; waypointBehaviorBase_: TWaypointBehaviorBase);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' currentPathGeographicMapCellPosition: ');
        stringBuffer.append(Self.stringUtil.toString(waypointBehaviorBase_.getCurrentPathGeographicMapCellPosition()));
        stringBuffer.append(' nextUnvisitedPathGeographicMapCellPosition: ');
        stringBuffer.append(Self.stringUtil.toString(waypointBehaviorBase_.getNextUnvisitedPathGeographicMapCellPosition()));
        stringBuffer.append(' Tracked: ');
        stringBuffer.append(Self.stringUtil.toString(waypointBehaviorBase_.getCurrentGeographicMapCellHistory().getTracked()));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: processWaypoint');
end;
    

procedure TWaypoint2SelectedLogHelper.processWaypointTrackedVisit(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; geographicMapCellPosition_: TGeographicMapCellPosition);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' Visited: ');
        stringBuffer.append(Self.stringUtil.toString(geographicMapCellPosition_));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: processWaypoint');
end;
    

procedure TWaypoint2SelectedLogHelper.processWaypointTrackedWithoutProgress(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; reason: string);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(reason).toString(), TJava.Box(Self), 'turnTo');
end;
    

procedure TWaypoint2SelectedLogHelper.wander(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(associatedAdvancedRTSGameLayer.getName(), TJava.Box(Self), 'wander');
end;
    

procedure TWaypoint2SelectedLogHelper.targetDestroyed(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' Target Destroyed').toString(), TJava.Box(Self), 'selected: processTargeting');
end;
    

procedure TWaypoint2SelectedLogHelper.processTargeting(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; dx: Integer; dy: Integer);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.positionStrings.DX_LABEL);
        stringBuffer.appendint(dx);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.positionStrings.DY_LABEL);
        stringBuffer.appendint(dy);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: processTargeting');
end;
    

procedure TWaypoint2SelectedLogHelper.processTargetingNonWayPoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; dx: Integer; dy: Integer);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' Targeting Non Waypoint ');
        stringBuffer.append(Self.positionStrings.DX_LABEL);
        stringBuffer.appendint(dx);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.positionStrings.DY_LABEL);
        stringBuffer.appendint(dy);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: processTargeting');
end;
    

procedure TWaypoint2SelectedLogHelper.removeWaypoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; unitWaypointBehavior2: TWaypointBehaviorBase; waypointLayer: IPathFindingLayerInterface; reason: string);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(unitWaypointBehavior2.getName());
        stringBuffer.append(' remove: ');
        stringBuffer.append(waypointLayer.getName());
        stringBuffer.append(' because: ');
        stringBuffer.append(reason);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: removeWaypoint');
end;
    

procedure TWaypoint2SelectedLogHelper.removeWaypointList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; unitWaypointBehavior2: TWaypointBehaviorBase; list: TBasicArrayList);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(unitWaypointBehavior2.getName());
        stringBuffer.append(' Waypoints: ');
        stringBuffer.append(Self.stringUtil.toString(list));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: removeWaypoint');
end;
    

procedure TWaypoint2SelectedLogHelper.removeWaypointClear(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' Clearing removed waypoint').toString(), TJava.Box(Self), 'selected: removeWaypoint');
end;
    

procedure TWaypoint2SelectedLogHelper.clearTarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' Cleared Target').toString(), TJava.Box(Self), 'selected: clearTarget');
end;
    

procedure TWaypoint2SelectedLogHelper.addWaypointFromUser(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' Adding Waypoint to Selected: ');
        stringBuffer.append(advancedRTSGameLayer.getName());
        if not TJava.IsNull(advancedRTSGameLayer.getParentLayer()) then begin
            stringBuffer.append(' With Parent: ');
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName());
        end;
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: onWaypointEvent');
end;
    

procedure TWaypoint2SelectedLogHelper.targetMovedSoRetarget(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' - target moved so retargeting').toString(), TJava.Box(Self), 'turnTo');
end;

initialization
  {AB:INITIALIZATION}
  TWaypoint2SelectedLogHelper.instanceC := TWaypoint2SelectedLogHelper.Create();
  {AB:END}

end.


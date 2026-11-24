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
unit WaypointBehaviorBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableDestroyableDamageableLayer, WaypointBase, BasicArrayList, TickableInterface, AllBinaryLayerManager, GeographicMapCellHistory, GeographicMapCellPosition, PathFindingLayerInterface, NamedInterface;

type
  {AB:TYPES}
  TWaypointBehaviorBase = class(TInterfacedObject, ITickableInterface, INamedInterface)
  public
    ownedWaypointList: TBasicArrayList;
    waypointOverridesAttacking: Boolean;
    waypoint: TWaypointBase;
    steeringVisitorList: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getName: string; virtual;
        function isRunning: Boolean; virtual;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        function getOwnedWaypointList: TBasicArrayList; virtual;
        function getWaypoint: TWaypointBase; virtual;
        procedure setWaypoint(waypoint: TWaypointBase); virtual;
        function getSteeringVisitorList: TBasicArrayList; virtual;
        function getMovementLogicAsString: string; virtual;
        function isWaypointListEmptyOrOnlyTargets: Boolean; virtual;
        function isInSensorRange(layerInterface: TCollidableDestroyableDamageableLayer; targetDistance: Integer): Boolean; virtual;
        function getCurrentTargetLayerInterface: TCollidableDestroyableDamageableLayer; virtual;
        function getCurrentTargetingStateString: string; virtual;
        function isTrackingWaypoint: Boolean; virtual;
        function getCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function getCurrentGeographicMapCellHistory: TGeographicMapCellHistory; virtual;
        function isWaypointOverridesAttacking: Boolean; virtual;
        function getNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function needToMove: Boolean; virtual;
        procedure setWaypointPathsList(waypointPathsList: TBasicArrayList); virtual;
        function getWaypointPathsList: TBasicArrayList; virtual;
        procedure setTarget(layerInterface: IPathFindingLayerInterface); virtual;
        procedure setTargetWithDistance(layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer); virtual;
        procedure clearTarget; virtual;
        procedure updatePathOnTargetMove(reason: string); virtual;
  end;

implementation
uses
  BasicArrayListD, BasicArrayListS;


{AB:CODE}

procedure TWaypointBehaviorBase.InitFields;
begin
  
  Self.waypointOverridesAttacking := True;
  Self.waypoint := TWaypointBase.NULL_WAYPOINT_BASE;
  Self.steeringVisitorList := TBasicArrayListD.Create();
end;

function TWaypointBehaviorBase.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWaypointBehaviorBase.Create;
begin
    inherited Create;
    InitFields;
        Self.ownedWaypointList := TBasicArrayListS.Create(1);
end;
    

function TWaypointBehaviorBase.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

function TWaypointBehaviorBase.isRunning: Boolean;
begin
        Exit(False);
end;
    

// throws Exception
procedure TWaypointBehaviorBase.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
end;
    

function TWaypointBehaviorBase.getOwnedWaypointList: TBasicArrayList;
begin
        Exit(Self.ownedWaypointList);
end;
    

function TWaypointBehaviorBase.getWaypoint: TWaypointBase;
begin
        Exit(Self.waypoint);
end;
    

procedure TWaypointBehaviorBase.setWaypoint(waypoint: TWaypointBase);
begin
        Self.waypoint := waypoint;
end;
    

function TWaypointBehaviorBase.getSteeringVisitorList: TBasicArrayList;
begin
        Exit(Self.steeringVisitorList);
end;
    

function TWaypointBehaviorBase.getMovementLogicAsString: string;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.isWaypointListEmptyOrOnlyTargets: Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.isInSensorRange(layerInterface: TCollidableDestroyableDamageableLayer; targetDistance: Integer): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.getCurrentTargetLayerInterface: TCollidableDestroyableDamageableLayer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.getCurrentTargetingStateString: string;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.isTrackingWaypoint: Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.getCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.getCurrentGeographicMapCellHistory: TGeographicMapCellHistory;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.isWaypointOverridesAttacking: Boolean;
begin
        Exit(Self.waypointOverridesAttacking);
end;
    

function TWaypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.needToMove: Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TWaypointBehaviorBase.setWaypointPathsList(waypointPathsList: TBasicArrayList);
begin
        raise SysUtils.Exception.Create('');
end;
    

function TWaypointBehaviorBase.getWaypointPathsList: TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TWaypointBehaviorBase.setTarget(layerInterface: IPathFindingLayerInterface);
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TWaypointBehaviorBase.setTargetWithDistance(layerInterface: IPathFindingLayerInterface; anotherTargetDistance: Integer);
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TWaypointBehaviorBase.clearTarget;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TWaypointBehaviorBase.updatePathOnTargetMove(reason: string);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit WaypointBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayerManager, PathFindingLayerInterface, AllBinaryEventObject, EventListenerInterface, Sound, GeographicMapCellPosition, MultipassState, PathFindingInfo, BasicArrayList;

type
  {AB:TYPES}
  TWaypointBase = class(TInterfacedObject, IEventListenerInterface)
  public
    connectedWaypointList: TBasicArrayList;
    sound: TSound;
    allBinaryGameLayerManagerP: TAllBinaryGameLayerManager;
    class var NULL_WAYPOINT_BASE: TWaypointBase;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(sound_: TSound);
        function getSound: TSound; virtual;
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        function getConnectedWaypointList: TBasicArrayList; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        function getPathFindingInfo(geographicMapCellPosition_: TGeographicMapCellPosition): TPathFindingInfo; virtual;
        function getPathsList(geographicMapCellPosition_: TGeographicMapCellPosition; pathFindingInfo_: TPathFindingInfo; multipassState_: TMultipassState): TBasicArrayList; virtual;
        function getPathsListRunnable(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList; virtual;
        function getPathsListFromCacheOnly(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList; virtual;
        procedure visit(unitLayer: IPathFindingLayerInterface); virtual;
        procedure reset; virtual;
        function getType: Integer; virtual;
  end;

implementation
uses
  ForcedLogUtil, EventStrings, NoSound, BasicArrayListD;


{AB:CODE}

procedure TWaypointBase.InitFields;
begin
  Self.connectedWaypointList := TBasicArrayListD.Create();
  
  Self.allBinaryGameLayerManagerP := TAllBinaryGameLayerManager.getNullInstance();
end;

function TWaypointBase.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWaypointBase.Create(sound_: TSound);
begin
    inherited Create;
    InitFields;
        Self.sound := sound_;
end;
    

function TWaypointBase.getSound: TSound;
begin
        Exit(Self.sound);
end;
    

// throws Exception
procedure TWaypointBase.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        Self.allBinaryGameLayerManagerP := allBinaryGameLayerManager_;
end;
    

function TWaypointBase.getConnectedWaypointList: TBasicArrayList;
begin
        Exit(Self.connectedWaypointList);
end;
    

procedure TWaypointBase.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
function TWaypointBase.getPathFindingInfo(geographicMapCellPosition_: TGeographicMapCellPosition): TPathFindingInfo;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TWaypointBase.getPathsList(geographicMapCellPosition_: TGeographicMapCellPosition; pathFindingInfo_: TPathFindingInfo; multipassState_: TMultipassState): TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TWaypointBase.getPathsListRunnable(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TWaypointBase.getPathsListFromCacheOnly(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TWaypointBase.visit(unitLayer: IPathFindingLayerInterface);
begin
end;
    

procedure TWaypointBase.reset;
begin
end;
    

function TWaypointBase.getType: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  TWaypointBase.NULL_WAYPOINT_BASE := TWaypointBase.Create(TNoSound.getInstance());
  {AB:END}

end.


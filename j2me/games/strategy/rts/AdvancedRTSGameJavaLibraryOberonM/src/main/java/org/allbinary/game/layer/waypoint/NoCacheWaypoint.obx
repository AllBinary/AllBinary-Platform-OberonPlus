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
// package org.allbinary.game.layer.waypoint
unit NoCacheWaypoint;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayerManager, PathFindingLayerInterface, RTSLayerEvent, BuildingEventListenerInterface, AllBinaryEventObject, Sound, GeographicMapCellPosition, BasicArrayList, WaypointBase;

type
  {AB:TYPES}
  TNoCacheWaypoint = class(TWaypointBase, IBuildingEventListenerInterface)
  public
    ownerLayer: IPathFindingLayerInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(ownerLayer: IPathFindingLayerInterface; sound_: TSound);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        procedure releaseCachedPaths; virtual;
        function getPathsListFromCacheOnly(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList; virtual;
        function getPathsListRunnable(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList; virtual;
        function getEndGeographicMapCellPosition(startGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        function createPaths(startGeographicMapCellPosition: TGeographicMapCellPosition): TBasicArrayList;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onBuildingEvent(event: TRTSLayerEvent); virtual;
        procedure reset; virtual;
        procedure visit(unitLayer: IPathFindingLayerInterface); virtual;
  end;

implementation
uses
  CollidableDestroyableDamageableLayer, UnitWaypointBehavior, PathFindingInfoFactory, ForcedLogUtil, EventStrings, BasicGeographicMap, GeographicMapCellTypeFactory, GeographicMapCompositeInterface, CustomMapGenerator, RaceTrackGeographicMap, PathFindingInfo, PathGenerator, BasicArrayListUtil;


{AB:CODE}

procedure TNoCacheWaypoint.InitFields;
begin
  
end;

function TNoCacheWaypoint.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNoCacheWaypoint.Create(ownerLayer: IPathFindingLayerInterface; sound_: TSound);
begin
        inherited Create(sound_);
        InitFields;
        Self.ownerLayer := ownerLayer;
end;
    

// throws Exception
procedure TNoCacheWaypoint.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
end;
    

procedure TNoCacheWaypoint.releaseCachedPaths;
begin
end;
    

// throws Exception
function TNoCacheWaypoint.getPathsListFromCacheOnly(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
begin
        Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
end;
    

// throws Exception
function TNoCacheWaypoint.getPathsListRunnable(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
begin
        Exit(Self.createPaths(geographicMapCellPosition_));
end;
    

// throws Exception
function TNoCacheWaypoint.getEndGeographicMapCellPosition(startGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
var
  endList: TBasicArrayList;
  endGeographicMapCellPosition: TGeographicMapCellPosition;
  index: Integer;
begin
        endList := Self.ownerLayer.getEndGeographicMapCellPositionList();
        endGeographicMapCellPosition := TGeographicMapCellPosition(TJava.ToObject(TBasicArrayListUtil.getInstance().getRandom(endList)));
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then begin
            for index := (endList.size()) - (1) downto 0 do begin
                endGeographicMapCellPosition := TGeographicMapCellPosition(TJava.ToObject(endList.get(index)));
                if (startGeographicMapCellPosition) <> (endGeographicMapCellPosition) then begin
                    Break;
                end;
            end;
        end;
        Exit(endGeographicMapCellPosition);
end;
    

// throws Exception
function TNoCacheWaypoint.createPaths(startGeographicMapCellPosition: TGeographicMapCellPosition): TBasicArrayList;
var
  endGeographicMapCellPosition: TGeographicMapCellPosition;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  raceTrackGeographicMap_: TRaceTrackGeographicMap;
  raceTrackGeographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
  customMapGenerator_: TCustomMapGenerator;
  customMapArray: TArray<TArray<Integer>>;
  pathFindingInfo_: TPathFindingInfo;
  list: TBasicArrayList;
begin
        endGeographicMapCellPosition := Self.getEndGeographicMapCellPosition(startGeographicMapCellPosition);
        if (endGeographicMapCellPosition) = (nil) then begin
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
        end;
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then begin
            if Self.ownerLayer.shouldHandleStartSameAsEnd() then begin
                Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end else begin
                raise SysUtils.Exception.Create('Start should not be End: ' + TJava.ToString(endGeographicMapCellPosition));
            end;
        end;
        geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        raceTrackGeographicMap_ := TRaceTrackGeographicMap(TJava.ToObject(geographicMapInterface));
        raceTrackGeographicMapCellTypeFactory := raceTrackGeographicMap_.getGeographicMapCellTypeFactory();
        customMapGenerator_ := TCustomMapGenerator(TJava.ToObject(raceTrackGeographicMap_.getCustomMapGenerator()));
        customMapGenerator_.copyMapIntoCustomMap();
        customMapArray := customMapGenerator_.getCustomMapArray();
        customMapArray[startGeographicMapCellPosition.getRow()][startGeographicMapCellPosition.getColumn()] := raceTrackGeographicMapCellTypeFactory.getStartType();
        customMapArray[endGeographicMapCellPosition.getRow()][endGeographicMapCellPosition.getColumn()] := raceTrackGeographicMapCellTypeFactory.getEndType();
        pathFindingInfo_ := TPathFindingInfoFactory.getInstance().getInstancePathFindingInfo(raceTrackGeographicMap_, customMapArray);
        list := TPathGenerator.getInstance().getInstanceNoCache(geographicMapInterface, pathFindingInfo_, 2);
        if (list.size()) < (1) then begin
            raise SysUtils.Exception.Create('Path may have been cleared by clearing caching');
        end;
        Exit(list);
end;
    

procedure TNoCacheWaypoint.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TNoCacheWaypoint.onBuildingEvent(event: TRTSLayerEvent);
begin
end;
    

procedure TNoCacheWaypoint.reset;
begin
        Self.getConnectedWaypointList().clear();
end;
    

// throws Exception
procedure TNoCacheWaypoint.visit(unitLayer: IPathFindingLayerInterface);
var
  size: Integer;
  unitWaypointBehavior_: TUnitWaypointBehavior;
  rtsLayer: TCollidableDestroyableDamageableLayer;
begin
        if (unitLayer.getGroupInterface()[0]) <> (Self.ownerLayer.getGroupInterface()[0]) then begin
            Exit;
        end;
        size := Self.getConnectedWaypointList().size();
        if (size) > (0) then begin
            unitWaypointBehavior_ := TUnitWaypointBehavior(TJava.ToObject(unitLayer.getWaypointBehavior()));
            while (Self.getConnectedWaypointList().size()) > (0) do begin
                rtsLayer := TCollidableDestroyableDamageableLayer(TJava.ToObject(Self.getConnectedWaypointList().get(0)));
                if rtsLayer.isDestroyed() then begin
                    Self.getConnectedWaypointList().remove(rtsLayer);
                end else begin
                    unitLayer.handleCost(Self.ownerLayer);
                    unitWaypointBehavior_.insertWaypoint(0, rtsLayer);
                    Break;
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


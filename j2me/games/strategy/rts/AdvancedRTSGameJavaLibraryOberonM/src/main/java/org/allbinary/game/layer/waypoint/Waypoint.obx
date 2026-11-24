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
unit Waypoint;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayerManager, PathFindingLayerInterface, RTSLayerEvent, BuildingEventListenerInterface, LogUtil, AllBinaryEventObject, Sound, GeographicMapCellPosition, BasicArrayList, BasicArrayListUtil, WaypointBase;

type
  {AB:TYPES}
  TWaypoint = class(TWaypointBase, IBuildingEventListenerInterface)
  public
    logUtil: TLogUtil;
    basicArrayListUtil: TBasicArrayListUtil;
    ownerLayer: IPathFindingLayerInterface;
    endList: TBasicArrayList;
    paths: TArray<TArray<TBasicArrayList>>;
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
        procedure clearPaths;
        procedure reset; virtual;
        procedure visit(unitLayer: IPathFindingLayerInterface); virtual;
  end;

implementation
uses
  AllBinaryTiledLayer, CollidableDestroyableDamageableLayer, UnitWaypointBehavior, PathFindingInfoFactory, ForcedLogUtil, EventStrings, BasicGeographicMap, GeographicMapCellTypeFactory, GeographicMapCompositeInterface, CustomMapGenerator, RaceTrackGeographicMap, BasicGeographicMapExtractedPathsCacheFactory, PathFindingInfo, PathGenerator;


{AB:CODE}

procedure TWaypoint.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  
  Self.endList := Self.basicArrayListUtil.getImmutableInstance();
  Self.paths := Self.basicArrayListUtil.NULL_ARRAY_OF_ARRAY;
end;

function TWaypoint.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWaypoint.Create(ownerLayer: IPathFindingLayerInterface; sound_: TSound);
begin
        inherited Create(sound_);
        InitFields;
        Self.ownerLayer := ownerLayer;
end;
    

// throws Exception
procedure TWaypoint.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  tiledLayer: TAllBinaryTiledLayer;
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
        geographicMapCompositeInterface_ := (TJava.ToObject(allBinaryGameLayerManager_) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        if (Self.paths) <> (Self.basicArrayListUtil.NULL_ARRAY_OF_ARRAY) then begin
            raise SysUtils.Exception.Create('');
        end;
        Self.endList := Self.ownerLayer.getEndGeographicMapCellPositionList();
        Self.paths := TJava.NewArray2<TBasicArrayList>(tiledLayer.getColumns(), tiledLayer.getRows());
        Self.clearPaths();
end;
    

procedure TWaypoint.releaseCachedPaths;
var
  pathsList: TBasicArrayList;
  rowIndex: Integer;
  columnIndex: Integer;
begin
        columnIndex := System.Length(Self.paths);
        while (TJava.PreDec(columnIndex)) >= (0) do begin
            rowIndex := System.Length(Self.paths);
            while (TJava.PreDec(rowIndex)) >= (0) do begin
                pathsList := Self.paths[columnIndex][rowIndex];
                if (pathsList) <> (Self.basicArrayListUtil.getImmutableInstance()) then begin
                    TBasicGeographicMapExtractedPathsCacheFactory.getInstance().release(pathsList);
                end;
            end;
        end;
end;
    

// throws Exception
function TWaypoint.getPathsListFromCacheOnly(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
begin
        Exit(Self.paths[geographicMapCellPosition_.getColumn()][geographicMapCellPosition_.getRow()]);
end;
    

// throws Exception
function TWaypoint.getPathsListRunnable(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
var
  pathsList: TBasicArrayList;
begin
        pathsList := Self.paths[geographicMapCellPosition_.getColumn()][geographicMapCellPosition_.getRow()];
        if (pathsList) = (Self.basicArrayListUtil.getImmutableInstance()) then begin
            pathsList := Self.createPaths(geographicMapCellPosition_);
            Self.paths[geographicMapCellPosition_.getColumn()][geographicMapCellPosition_.getRow()] := pathsList;
        end;
        Exit(pathsList);
end;
    

function TWaypoint.getEndGeographicMapCellPosition(startGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
var
  endGeographicMapCellPosition: TGeographicMapCellPosition;
  index: Integer;
begin
        endGeographicMapCellPosition := TGeographicMapCellPosition(TJava.ToObject(Self.basicArrayListUtil.getRandom(Self.endList)));
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then begin
            for index := (Self.endList.size()) - (1) downto 0 do begin
                endGeographicMapCellPosition := TGeographicMapCellPosition(TJava.ToObject(Self.endList.get(index)));
                if (startGeographicMapCellPosition) <> (endGeographicMapCellPosition) then begin
                    Break;
                end;
            end;
        end;
        Exit(endGeographicMapCellPosition);
end;
    

// throws Exception
function TWaypoint.createPaths(startGeographicMapCellPosition: TGeographicMapCellPosition): TBasicArrayList;
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
        if (Self.endList.size()) = (0) then begin
            Exit(Self.basicArrayListUtil.getImmutableInstance());
        end;
        endGeographicMapCellPosition := Self.getEndGeographicMapCellPosition(startGeographicMapCellPosition);
        if (endGeographicMapCellPosition) = (nil) then begin
            Exit(Self.basicArrayListUtil.getImmutableInstance());
        end;
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then begin
            if Self.ownerLayer.shouldHandleStartSameAsEnd() then begin
                Exit(Self.basicArrayListUtil.getImmutableInstance());
            end else begin
                raise SysUtils.Exception.Create('Start should not be End: ' + IntToStr(Self.endList.size()));
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
    

procedure TWaypoint.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TWaypoint.onBuildingEvent(event: TRTSLayerEvent);
begin
        Self.clearPaths();
end;
    

procedure TWaypoint.clearPaths;
var
  rowIndex: Integer;
  columnIndex: Integer;
begin
        columnIndex := System.Length(Self.paths);
        while (TJava.PreDec(columnIndex)) >= (0) do begin
            rowIndex := System.Length(Self.paths);
            while (TJava.PreDec(rowIndex)) >= (0) do begin
                Self.paths[columnIndex][rowIndex] := Self.basicArrayListUtil.getImmutableInstance();
            end;
        end;
end;
    

procedure TWaypoint.reset;
begin
        Self.getConnectedWaypointList().clear();
        Self.releaseCachedPaths();
end;
    

// throws Exception
procedure TWaypoint.visit(unitLayer: IPathFindingLayerInterface);
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


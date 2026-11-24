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
unit MultipassNoCacheWaypoint;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayerManager, PathFindingLayerInterface, RTSLayerEvent, BuildingEventListenerInterface, LogUtil, AllBinaryEventObject, Sound, GeographicMapCellPosition, MultipassState, PathFindingInfo, BasicArrayList, WaypointBase;

type
  {AB:TYPES}
  TMultipassNoCacheWaypoint = class(TWaypointBase, IBuildingEventListenerInterface)
  public
    logUtil: TLogUtil;
    ownerLayer: IPathFindingLayerInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(ownerLayer: IPathFindingLayerInterface; sound_: TSound);
        procedure setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager); virtual;
        procedure releaseCachedPaths; virtual;
        function getPathFindingInfo(geographicMapCellPosition_: TGeographicMapCellPosition): TPathFindingInfo; virtual;
        function getPathsList(geographicMapCellPosition_: TGeographicMapCellPosition; pathFindingInfo_: TPathFindingInfo; multipassState_: TMultipassState): TBasicArrayList; virtual;
        function getEndGeographicMapCellPosition(startGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onBuildingEvent(event: TRTSLayerEvent); virtual;
        procedure reset; virtual;
        procedure visit(unitLayer: IPathFindingLayerInterface); virtual;
  end;

implementation
uses
  CollidableDestroyableDamageableLayer, UnitWaypointBehavior, PathFindingInfoFactory, ForcedLogUtil, CommonStrings, EventStrings, BasicGeographicMap, GeographicMapCellTypeFactory, GeographicMapCompositeInterface, CustomMapGenerator, RaceTrackGeographicMap, PathGenerator, BasicArrayListUtil;


{AB:CODE}

procedure TMultipassNoCacheWaypoint.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TMultipassNoCacheWaypoint.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMultipassNoCacheWaypoint.Create(ownerLayer: IPathFindingLayerInterface; sound_: TSound);
begin
        inherited Create(sound_);
        InitFields;
        Self.ownerLayer := ownerLayer;
end;
    

// throws Exception
procedure TMultipassNoCacheWaypoint.setAllBinaryGameLayerManager(allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        inherited setAllBinaryGameLayerManager(allBinaryGameLayerManager_);
end;
    

procedure TMultipassNoCacheWaypoint.releaseCachedPaths;
begin
end;
    

// throws Exception
function TMultipassNoCacheWaypoint.getPathFindingInfo(geographicMapCellPosition_: TGeographicMapCellPosition): TPathFindingInfo;
var
  startGeographicMapCellPosition: TGeographicMapCellPosition;
  endGeographicMapCellPosition: TGeographicMapCellPosition;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  raceTrackGeographicMap_: TRaceTrackGeographicMap;
  raceTrackGeographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
  customMapGenerator_: TCustomMapGenerator;
  customMapArray: TArray<TArray<Integer>>;
  pathFindingInfo_: TPathFindingInfo;
begin
        startGeographicMapCellPosition := geographicMapCellPosition_;
        endGeographicMapCellPosition := Self.getEndGeographicMapCellPosition(startGeographicMapCellPosition);
        if (endGeographicMapCellPosition) = (nil) then begin
            Exit(TPathFindingInfo.NULL_PATH_FINDING_INFO);
        end;
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then begin
            if Self.ownerLayer.shouldHandleStartSameAsEnd() then begin
                Exit(TPathFindingInfo.NULL_PATH_FINDING_INFO);
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
        Exit(pathFindingInfo_);
end;
    

// throws Exception
function TMultipassNoCacheWaypoint.getPathsList(geographicMapCellPosition_: TGeographicMapCellPosition; pathFindingInfo_: TPathFindingInfo; multipassState_: TMultipassState): TBasicArrayList;
var
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  list: TBasicArrayList;
  commonStrings_: TCommonStrings;
begin
        try
            if (pathFindingInfo_) = (nil) then begin
                Self.logUtil.putF('pathFindingInfo: ' + TJava.ToString(pathFindingInfo_), TJava.Box(Self), 'getPathsList');
                Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end;
            geographicMapCompositeInterface_ := (TJava.ToObject(Self.allBinaryGameLayerManagerP) as IGeographicMapCompositeInterface);
            geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
            list := TPathGenerator.getInstance().createN(geographicMapInterface, pathFindingInfo_, 2, multipassState_);
            if ((list) <> (nil)) and ((list) <> (TBasicArrayListUtil.getInstance().getImmutableInstance())) then begin
                if (list.size()) < (1) then begin
                    raise SysUtils.Exception.Create('Path may have been cleared by clearing caching');
                end;
                Exit(list);
            end;
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getPathsList', TJava.Box(e));
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end;
        end;
end;
    

// throws Exception
function TMultipassNoCacheWaypoint.getEndGeographicMapCellPosition(startGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
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
    

procedure TMultipassNoCacheWaypoint.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TMultipassNoCacheWaypoint.onBuildingEvent(event: TRTSLayerEvent);
begin
end;
    

procedure TMultipassNoCacheWaypoint.reset;
begin
        Self.getConnectedWaypointList().clear();
end;
    

// throws Exception
procedure TMultipassNoCacheWaypoint.visit(unitLayer: IPathFindingLayerInterface);
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


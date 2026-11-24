{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.map.racetrack.drop
unit RaceTrackAdjacentDropCellPositionGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GroupCommonFactory, AllBinaryGameLayerManager, LayerCoveringCellPositionsUtil, AllBinaryLayerManager, BasicGeographicMap, GeographicMapCellPosition, GeographicMapDirectionUtil, DropCellPositionGeneratorInterface, ABHashtable, RaceTrackDropCellPositionGenerator;

type
  {AB:TYPES}
  TRaceTrackAdjacentDropCellPositionGenerator = class(TRaceTrackDropCellPositionGenerator)
  public
    layerCoveringCellPositionsUtil: TLayerCoveringCellPositionsUtil;
    groupCommonFactory: TGroupCommonFactory;
    surroundingCellPositions: TArray<TGeographicMapCellPosition>;
    hashtable: TABHashtable<TObject, TObject>;
    geographicMapDirectionUtil: TGeographicMapDirectionUtil;
    class var SINGLETON: TRaceTrackAdjacentDropCellPositionGenerator;
    procedure InitFields;
        class function getInstance: IDropCellPositionGeneratorInterface; static;
        constructor Create;
        function getFirstNonRoadAdjacentCellPosition(column: Integer; row: Integer): TGeographicMapCellPosition;
        procedure update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap); override;
        procedure drop(allBinaryLayerManager_: TAllBinaryLayerManager; index: Integer); override;
  end;

implementation
uses
  RaceTrackAdjacentDropLayerFactory, BasicArrayList, BasicArrayListD, Direction, DirectionFactory, BasicGroupFactory, GPoint, AllBinaryLayer, StdUtil, BasicGeographicMapCellPositionFactory, GeographicMapCellType, SimpleGeographicMapCellPositionFactory, DropCellPositionHistory, BaseRaceTrackGeographicMap, RaceTrackGeographicMapCellType, RaceTrackGeographicMapCellTypeFactory;


{AB:CODE}

procedure TRaceTrackAdjacentDropCellPositionGenerator.InitFields;
begin
  Self.layerCoveringCellPositionsUtil := TLayerCoveringCellPositionsUtil.getInstance();
  Self.groupCommonFactory := TGroupCommonFactory.getInstance();
  Self.surroundingCellPositions := TJava.NewArray<TGeographicMapCellPosition>(4);
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  Self.geographicMapDirectionUtil := TGeographicMapDirectionUtil.getInstance();
end;
    

class function TRaceTrackAdjacentDropCellPositionGenerator.getInstance: IDropCellPositionGeneratorInterface;
begin
        Exit(TRaceTrackAdjacentDropCellPositionGenerator.SINGLETON);
end;
    

constructor TRaceTrackAdjacentDropCellPositionGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TRaceTrackAdjacentDropCellPositionGenerator.getFirstNonRoadAdjacentCellPosition(column: Integer; row: Integer): TGeographicMapCellPosition;
var
  nonRoadGeographicMapCellPosition: TGeographicMapCellPosition;
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  baseRaceTrackGeographicMap_: TBaseRaceTrackGeographicMap;
  raceTrackGeographicMapCellTypeFactory_: TRaceTrackGeographicMapCellTypeFactory;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  raceTrackGeographicMapCellType_: TRaceTrackGeographicMapCellType;
  index: Integer;
begin
        nonRoadGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        geographicMapCellPositionFactory := Self.raceTrackGeographicMap.getGeographicMapCellPositionFactory();
        Self.surroundingCellPositions[0] := geographicMapCellPositionFactory.getAt(column, (row) - (1));
        Self.surroundingCellPositions[1] := geographicMapCellPositionFactory.getAt(column, (row) + (1));
        Self.surroundingCellPositions[2] := geographicMapCellPositionFactory.getAt((column) - (1), row);
        Self.surroundingCellPositions[3] := geographicMapCellPositionFactory.getAt((column) + (1), row);
        baseRaceTrackGeographicMap_ := TBaseRaceTrackGeographicMap(TJava.ToObject(Self.raceTrackGeographicMap));
        raceTrackGeographicMapCellTypeFactory_ := TRaceTrackGeographicMapCellTypeFactory(TJava.ToObject(baseRaceTrackGeographicMap_.getGeographicMapCellTypeFactory()));
        
        
        index := System.Length(Self.surroundingCellPositions);
        while (TJava.PreDec(index)) >= (0) do begin
            geographicMapCellPosition_ := Self.surroundingCellPositions[index];
            raceTrackGeographicMapCellType_ := TRaceTrackGeographicMapCellType(TJava.ToObject(Self.raceTrackGeographicMap.getCellTypeAt(geographicMapCellPosition_)));
            if not (raceTrackGeographicMapCellTypeFactory_.isPath(raceTrackGeographicMapCellType_)) then begin
                nonRoadGeographicMapCellPosition := geographicMapCellPosition_;
                Break;
            end;
        end;
        Exit(nonRoadGeographicMapCellPosition);
end;
    

// throws Exception
procedure TRaceTrackAdjacentDropCellPositionGenerator.update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap);
begin
        Self.hashtable.put(TJava.Box(TAllBinaryGameLayerManager.ID), TJava.Box(allBinaryGameLayerManager_));
        inherited update(allBinaryGameLayerManager_, geographicMapInterface);
end;
    

// throws Exception
procedure TRaceTrackAdjacentDropCellPositionGenerator.drop(allBinaryLayerManager_: TAllBinaryLayerManager; index: Integer);
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  randomGeographicMapCellPosition: TGeographicMapCellPosition;
  dropCellPositionHistory_: TDropCellPositionHistory;
  direction_: TDirection;
  objectCanBeNull: TObject;
  point: TGPoint;
  x: Integer;
  y: Integer;
  z: Integer;
  layerInterface: TAllBinaryLayer;
  baseRaceTrackGeographicMap_: TBaseRaceTrackGeographicMap;
  list: TBasicArrayList;
  geographicMapCellType_: TGeographicMapCellType;
  index2: Integer;
begin
        geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(Self.list.get(index)));
        randomGeographicMapCellPosition := Self.getFirstNonRoadAdjacentCellPosition(geographicMapCellPosition_.getColumn(), geographicMapCellPosition_.getRow());
        if (randomGeographicMapCellPosition) = (nil) then begin
            Exit;
        end;
        dropCellPositionHistory_ := TDropCellPositionHistory.getInstance();
        if not (dropCellPositionHistory_.isCellPositionWithDrop(geographicMapCellPosition_)) then begin
            direction_ := Self.geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition(randomGeographicMapCellPosition, geographicMapCellPosition_);
            objectCanBeNull := TJava.Box(Self.hashtable.get(TJava.Box(Self.groupCommonFactory.ID)));
            if (objectCanBeNull) <> (nil) then begin
            end else begin
                Self.hashtable.put(TJava.Box(Self.groupCommonFactory.ID), TJava.Box(TBasicGroupFactory.getInstance().NONE_ARRAY));
            end;
            Self.hashtable.put(TJava.Box(TDirectionFactory.getInstance().NAME), TJava.Box(direction_));
            point := randomGeographicMapCellPosition.getPoint();
            x := point.getX();
            y := point.getY();
            z := point.getZ();
            layerInterface := TRaceTrackAdjacentDropLayerFactory.getInstance().getRandomInstance().getNextInstance(Self.hashtable, x, y, z);
            baseRaceTrackGeographicMap_ := TBaseRaceTrackGeographicMap(TJava.ToObject(Self.raceTrackGeographicMap));
            list := Self.layerCoveringCellPositionsUtil.getAll(baseRaceTrackGeographicMap_, randomGeographicMapCellPosition, layerInterface, TBasicArrayListD.Create());
            if dropCellPositionHistory_.anyCellPositionWithDrop(list) then begin
                Exit;
            end;
            
            index2 := list.size();
            while (TJava.PreDec(index2)) >= (0) do begin
                geographicMapCellType_ := Self.raceTrackGeographicMap.getCellTypeAt(TGeographicMapCellPosition(TJava.ToObject(list.get(index2))));
                if Self.raceTrackGeographicMapCellTypeFactory.isPath(geographicMapCellType_) then begin
                    Exit;
                end;
            end;
            dropCellPositionHistory_.addAll(list, layerInterface);
            allBinaryLayerManager_.append(layerInterface);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TRaceTrackAdjacentDropCellPositionGenerator.SINGLETON := TRaceTrackAdjacentDropCellPositionGenerator.Create();
  {AB:END}

end.


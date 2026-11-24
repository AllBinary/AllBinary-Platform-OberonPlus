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
// package org.allbinary.media.graphics.geography.map.racetrack
unit CustomMapGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellTypeFactory, DropCellPositionHistory, RaceTrackGeographicMap, CustomMapGeneratorBase;

type
  {AB:TYPES}
  TCustomMapGenerator = class(TCustomMapGeneratorBase)
  public
    customMapArray: TArray<TArray<Integer>>;
    raceTrackGeographicMap: TRaceTrackGeographicMap;
    geographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
    dropCellPositionHistory: TDropCellPositionHistory;
    procedure InitFields;
        constructor Create(raceTrackGeographicMap_: TRaceTrackGeographicMap);
        procedure copyMapIntoCustomMap; override;
        function getCustomType(column: Integer; row: Integer; currentType: Integer): Integer; override;
        function getCustomMapArray: TArray<TArray<Integer>>; override;
  end;

implementation
uses
  AdvancedRTSGameLayer, WaypointLayer, CellPosition, AllBinaryLayer, BasicGeographicMapCellPositionFactory;


{AB:CODE}

procedure TCustomMapGenerator.InitFields;
begin
  
  
  
  Self.dropCellPositionHistory := TDropCellPositionHistory.getInstance();
end;
    

constructor TCustomMapGenerator.Create(raceTrackGeographicMap_: TRaceTrackGeographicMap);
var
  mapArray: TArray<TArray<Integer>>;
  size2: Integer;
begin
    inherited Create;
    InitFields;
        Self.raceTrackGeographicMap := raceTrackGeographicMap_;
        Self.geographicMapCellTypeFactory := Self.raceTrackGeographicMap.getGeographicMapCellTypeFactory();
        mapArray := raceTrackGeographicMap_.getRaceTrackData().getMapArray();
        size2 := System.Length(mapArray[0]);
        Self.customMapArray := TJava.NewArray2<Integer>(System.Length(mapArray), size2);
        if ((System.Length(mapArray)) <> (System.Length(Self.customMapArray))) or ((System.Length(mapArray[0])) <> (System.Length(Self.customMapArray[0]))) then begin
            raise SysUtils.Exception.Create('Array Incorrect');
        end;
end;
    

// throws Exception
procedure TCustomMapGenerator.copyMapIntoCustomMap;
var
  mapArray: TArray<TArray<Integer>>;
  startIndex2: Integer;
  index2: Integer;
  index: Integer;
begin
        mapArray := Self.raceTrackGeographicMap.getRaceTrackData().getMapArray();
        startIndex2 := (System.Length(mapArray[0])) - (1);
        for index := (System.Length(mapArray)) - (1) downto 0 do begin
            for index2 := startIndex2 downto 0 do begin
                Self.customMapArray[index][index2] := Self.getCustomType(index2, index, mapArray[index][index2]);
            end;
        end;
end;
    

// throws Exception
function TCustomMapGenerator.getCustomType(column: Integer; row: Integer; currentType: Integer): Integer;
var
  emptyType: Integer;
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  cellPosition_: TCellPosition;
  layer: TAllBinaryLayer;
  rtsLayer: TAdvancedRTSGameLayer;
begin
        emptyType := Self.geographicMapCellTypeFactory.getEmptyType();
        geographicMapCellPositionFactory := Self.raceTrackGeographicMap.getGeographicMapCellPositionFactory();
        cellPosition_ := geographicMapCellPositionFactory.getAt(column, row);
        if Self.dropCellPositionHistory.isCellPositionWithDrop(cellPosition_) then begin
            layer := Self.dropCellPositionHistory.getLayerInterface(cellPosition_);
            if (layer) = (TAllBinaryLayer.NULL_ALLBINARY_LAYER) then begin
                Exit(emptyType);
            end;
            rtsLayer := TAdvancedRTSGameLayer(TJava.ToObject(layer));
            if not (((rtsLayer.getType()) = (TWaypointLayer.getStaticType()))) then begin
                Exit(emptyType);
            end;
        end;
        Exit(currentType);
end;
    

function TCustomMapGenerator.getCustomMapArray: TArray<TArray<Integer>>;
begin
        Exit(Self.customMapArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


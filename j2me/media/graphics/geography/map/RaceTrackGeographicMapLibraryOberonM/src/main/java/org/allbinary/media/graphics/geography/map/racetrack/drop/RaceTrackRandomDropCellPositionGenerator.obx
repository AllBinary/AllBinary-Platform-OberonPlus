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
unit RaceTrackRandomDropCellPositionGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayerManager, MyRandomFactory, AllBinaryLayerManager, BasicGeographicMap, RaceTrackDropCellPositionGenerator;

type
  {AB:TYPES}
  TRaceTrackRandomDropCellPositionGenerator = class(TRaceTrackDropCellPositionGenerator)
  public
    myRandomFactory: TMyRandomFactory;
    cellsPerRowOrColumn: Integer;
    totalCells: Integer;
    rowArray: TArray<Integer>;
    columnArray: TArray<Integer>;
    cellWidth: Integer;
    cellHeight: Integer;
    class var SINGLETON: TRaceTrackRandomDropCellPositionGenerator;
    procedure InitFields;
        class function getInstance: TRaceTrackRandomDropCellPositionGenerator; static;
        constructor Create;
        procedure update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap); override;
        procedure drop(allBinaryLayerManager_: TAllBinaryLayerManager; index: Integer); override;
  end;

implementation
uses
  PickedUpLayerInterfaceFactoryInterface, AllBinaryTiledLayer, DropLayerFactory, PickupLayerCircularStaticPool, RaceTrackPickupLayer, GPoint, GeographicMapCellPosition;


{AB:CODE}

procedure TRaceTrackRandomDropCellPositionGenerator.InitFields;
begin
  Self.myRandomFactory := TMyRandomFactory.getInstance();
  Self.cellsPerRowOrColumn := 3;
  Self.totalCells := (Self.cellsPerRowOrColumn) * (Self.cellsPerRowOrColumn);
  Self.rowArray := TArray<Integer>.Create(0, 1, 2, 0, 1, 2, 0, 1, 2);
  Self.columnArray := TArray<Integer>.Create(0, 0, 0, 1, 1, 1, 2, 2, 2);
  
  
end;
    

class function TRaceTrackRandomDropCellPositionGenerator.getInstance: TRaceTrackRandomDropCellPositionGenerator;
begin
        Exit(TRaceTrackRandomDropCellPositionGenerator.SINGLETON);
end;
    

constructor TRaceTrackRandomDropCellPositionGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TRaceTrackRandomDropCellPositionGenerator.update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap);
var
  tiledLayer: TAllBinaryTiledLayer;
begin
        inherited update(allBinaryGameLayerManager_, geographicMapInterface);
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        Self.cellWidth := TJava.Divide(tiledLayer.getCellWidth(), Self.cellsPerRowOrColumn);
        Self.cellHeight := TJava.Divide(tiledLayer.getCellHeight(), Self.cellsPerRowOrColumn);
end;
    

// throws Exception
procedure TRaceTrackRandomDropCellPositionGenerator.drop(allBinaryLayerManager_: TAllBinaryLayerManager; index: Integer);
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  point: TGPoint;
  randomCell: Integer;
  row: Integer;
  column: Integer;
  x: Integer;
  y: Integer;
  pickedUpLayerInterfaceFactory: IPickedUpLayerInterfaceFactoryInterface;
  tiledLayer: TAllBinaryTiledLayer;
  pickupLayer: TRaceTrackPickupLayer;
begin
        geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(Self.list.get(index)));
        point := geographicMapCellPosition_.getPoint();
        randomCell := Self.myRandomFactory.getAbsoluteNextInt(Self.totalCells);
        row := Self.rowArray[randomCell];
        column := Self.columnArray[randomCell];
        x := (point.getX()) + (((row) * (Self.cellWidth)));
        y := (point.getY()) + (((column) * (Self.cellHeight)));
        pickedUpLayerInterfaceFactory := TDropLayerFactory.getInstance().getRandomInstance();
        tiledLayer := Self.raceTrackGeographicMap.getAllBinaryTiledLayer();
        pickupLayer := TRaceTrackPickupLayer(TJava.ToObject(TPickupLayerCircularStaticPool.getInstance().getInstanceXYZ(pickedUpLayerInterfaceFactory, x, y, (tiledLayer.getZP()) + (3))));
        pickupLayer.setTiledLayer(tiledLayer);
        allBinaryLayerManager_.append(pickupLayer);
end;

initialization
  {AB:INITIALIZATION}
  TRaceTrackRandomDropCellPositionGenerator.SINGLETON := TRaceTrackRandomDropCellPositionGenerator.Create();
  {AB:END}

end.


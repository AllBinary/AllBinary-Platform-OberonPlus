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
// package org.allbinary.media.graphics.geography.map
unit CellPositionsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicGeographicMap, GeographicMapCellPosition;

type
  {AB:TYPES}
  TCellPositionsUtil = class(TObject)
  public
    reusableSingleThreadedSurroundingList: TBasicArrayList;
    surroundArray: TArray<TArray<Integer>>;
    class var instance: TCellPositionsUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCellPositionsUtil; static;
        function getAll(geographicMapInterface: TBasicGeographicMap; topRightGeographicMapCellPosition: TGeographicMapCellPosition; columns: Integer; rows: Integer; reusableList: TBasicArrayList): TBasicArrayList;
        function getAllSurrounding(geographicMapInterface: TBasicGeographicMap; occupyList: TBasicArrayList; reusableList: TBasicArrayList): TBasicArrayList;
        function getAllSurroundingAt(geographicMapInterface: TBasicGeographicMap; layerGeographicMapCellPosition: TGeographicMapCellPosition; reusableSurroundingList: TBasicArrayList): TBasicArrayList;
  end;

implementation
uses
  BasicGeographicMapCellPositionFactory, AllBinaryTiledLayer, BasicArrayListS;


{AB:CODE}

procedure TCellPositionsUtil.InitFields;
begin
  Self.reusableSingleThreadedSurroundingList := TBasicArrayListS.Create(8);
  Self.surroundArray := [TArray<Integer>.Create(-1, -1), TArray<Integer>.Create(0, -1), TArray<Integer>.Create(1, -1), TArray<Integer>.Create(-1, 1), TArray<Integer>.Create(0, 1), TArray<Integer>.Create(1, 1), TArray<Integer>.Create(1, 0), TArray<Integer>.Create(-1, 0)];
end;

constructor TCellPositionsUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCellPositionsUtil.getInstance: TCellPositionsUtil;
begin
        Exit(TCellPositionsUtil.instance);
end;
    

// throws Exception
function TCellPositionsUtil.getAll(geographicMapInterface: TBasicGeographicMap; topRightGeographicMapCellPosition: TGeographicMapCellPosition; columns: Integer; rows: Integer; reusableList: TBasicArrayList): TBasicArrayList;
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  lastColumn: Integer;
  lastRow: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  columnIndex: Integer;
  rowIndex: Integer;
begin
        reusableList.clear();
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        lastColumn := (topRightGeographicMapCellPosition.getColumn()) + (columns);
        lastRow := (topRightGeographicMapCellPosition.getRow()) + (rows);
        if ((((columns) > (1)) and ((lastColumn) > (geographicMapInterface.getAllBinaryTiledLayer().getColumns())))) or ((((rows) > (1)) and ((lastRow) > (geographicMapInterface.getAllBinaryTiledLayer().getRows())))) then begin
            Exit(reusableList);
        end;
        for rowIndex := 0 to rows - 1 do begin
            for columnIndex := 0 to columns - 1 do begin
                geographicMapCellPosition_ := geographicMapCellPositionFactory.getAt((topRightGeographicMapCellPosition.getColumn()) + (columnIndex), (topRightGeographicMapCellPosition.getRow()) + (rowIndex));
                reusableList.add(TJava.Box(geographicMapCellPosition_));
            end;
        end;
        Exit(reusableList);
end;
    

// throws Exception
function TCellPositionsUtil.getAllSurrounding(geographicMapInterface: TBasicGeographicMap; occupyList: TBasicArrayList; reusableList: TBasicArrayList): TBasicArrayList;
var
  layerGeographicMapCellPosition: TGeographicMapCellPosition;
  surroundingGeographicMapCellPositionList: TBasicArrayList;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index2: Integer;
  index: Integer;
begin
        reusableList.clear();
        for index := (occupyList.size()) - (1) downto 0 do begin
            layerGeographicMapCellPosition := TGeographicMapCellPosition(TJava.ToObject(occupyList.get(index)));
            surroundingGeographicMapCellPositionList := Self.getAllSurroundingAt(geographicMapInterface, layerGeographicMapCellPosition, Self.reusableSingleThreadedSurroundingList);
            for index2 := (surroundingGeographicMapCellPositionList.size()) - (1) downto 0 do begin
                geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(surroundingGeographicMapCellPositionList.get(index2)));
                if (not (reusableList.contains(TJava.Box(geographicMapCellPosition_)))) and (not (occupyList.contains(TJava.Box(geographicMapCellPosition_)))) then begin
                    reusableList.add(TJava.Box(geographicMapCellPosition_));
                end;
            end;
        end;
        Exit(reusableList);
end;
    

// throws Exception
function TCellPositionsUtil.getAllSurroundingAt(geographicMapInterface: TBasicGeographicMap; layerGeographicMapCellPosition: TGeographicMapCellPosition; reusableSurroundingList: TBasicArrayList): TBasicArrayList;
var
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  tiledLayer: TAllBinaryTiledLayer;
  row: Integer;
  column: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index: Integer;
begin
        reusableSurroundingList.clear();
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        
        
        for index := 0 to 8 - 1 do begin
            column := (layerGeographicMapCellPosition.getColumn()) + (Self.surroundArray[index][0]);
            row := (layerGeographicMapCellPosition.getRow()) + (Self.surroundArray[index][1]);
            if tiledLayer.isOnTileLayer(column, row) then begin
                geographicMapCellPosition_ := geographicMapCellPositionFactory.getAt(column, row);
                reusableSurroundingList.add(TJava.Box(geographicMapCellPosition_));
            end;
        end;
        Exit(reusableSurroundingList);
end;

initialization
  {AB:INITIALIZATION}
  TCellPositionsUtil.instance := TCellPositionsUtil.Create();
  {AB:END}

end.


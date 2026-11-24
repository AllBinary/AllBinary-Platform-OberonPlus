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
unit BasicGeographicMap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, BasicColor, ABLayer, MathUtil, BasicArrayList, BasicGeographicMapCellPositionFactory, GeographicMapCellPositionFactoryInterface, GeographicMapCellTypeFactory, GeographicMapCellPositionBaseFactory, GeographicMapCellPosition, GeographicMapCellType, SimpleGeographicMap, GeographicMapInterface;

type
  {AB:TYPES}
  TBasicGeographicMap = class(TSimpleGeographicMap, IGeographicMapInterface)
  public
    mathUtil: TMathUtil;
    geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
    geographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface;
    geographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
    class var NULL_BASIC_GEOGRAPHIC_MAP_ARRAY: TArray<TBasicGeographicMap>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(id: Integer; name: string; cellTypeIdToGeographicMapCellType: TArray<Integer>; tiledLayer: TAllBinaryTiledLayer; foregroundBasicColor: TBasicColor; backgroundBasicColor: TBasicColor; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory_: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory);
        function getCellPosition(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        function getCellPositionNoThrow(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        function isOfFourDirections(oldGeographicMapCellPosition: TGeographicMapCellPosition; newGeographicMapCellPosition: TGeographicMapCellPosition): Boolean; virtual;
        function getCellPositionAtXY(x: Integer; y: Integer): TGeographicMapCellPosition; virtual;
        function getCellPositionAtXYNoThrow(x: Integer; y: Integer): TGeographicMapCellPosition; virtual;
        function isOnMap(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean; virtual;
        function getCellPositionAtNoThrow(x: Integer; y: Integer; x2: Integer; y2: Integer; geographicMapCellPositionList: TBasicArrayList): TBasicArrayList; virtual;
        function getCellPositionsAt(layer: TABLayer; currentCellPositionArray: TArray<TArray<TGeographicMapCellPosition>>; cellPositionArray: TArray<TArray<TGeographicMapCellPosition>>): Boolean; virtual;
        function getCellTypeAtXY(x: Integer; y: Integer): TGeographicMapCellType; virtual;
        function getGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory; virtual;
        function getGeographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface; virtual;
        function getGeographicMapCellTypeFactory: TGeographicMapCellTypeFactory; virtual;
        function getId: Integer; virtual;
        function getName: string; virtual;
        procedure reset; virtual;
        function getAllBinaryTiledLayer: TAllBinaryTiledLayer; virtual;
        function getCellTypeFromMapCellTypeInt(cellTypeId: Integer): Integer; virtual;
        function getCellTypeAt(cellPosition: TGeographicMapCellPosition): TGeographicMapCellType; virtual;
        function getForegroundBasicColor: TBasicColor; virtual;
        function getBackgroundBasicColor: TBasicColor; virtual;
  end;

implementation
uses
  SimpleGeographicMapCellPositionFactory;


{AB:CODE}

procedure TBasicGeographicMap.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
  
  
  
end;

function TBasicGeographicMap.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicGeographicMap.Create(id: Integer; name: string; cellTypeIdToGeographicMapCellType: TArray<Integer>; tiledLayer: TAllBinaryTiledLayer; foregroundBasicColor: TBasicColor; backgroundBasicColor: TBasicColor; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory_: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory);
begin
        inherited Create(id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor);
        InitFields;
        Self.geographicMapCellPositionFactoryInterface := geographicMapCellPositionFactoryInterface_;
        Self.geographicMapCellPositionFactory := geographicMapCellPositionBaseFactory_.getInstance(Self);
        Self.geographicMapCellTypeFactory := geographicMapCellTypeFactory_;
end;
    

// throws Exception
function TBasicGeographicMap.getCellPosition(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
begin
        case direction of
            0: begin
                Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) - (1), oldGeographicMapCellPosition.getRow()));
            end;
            1: begin
                Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) + (1), oldGeographicMapCellPosition.getRow()));
            end;
            2: begin
                Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) - (1)));
            end;
            3: begin
                Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) + (1)));
            end;
            else begin
                raise SysUtils.Exception.Create('Only Four Directions');
            end;
        end;
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionNoThrow(direction: Integer; oldGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
begin
        case direction of
            0: begin
                if ((oldGeographicMapCellPosition.getColumn()) - (1)) >= (0) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) - (1), oldGeographicMapCellPosition.getRow()));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            1: begin
                if ((oldGeographicMapCellPosition.getColumn()) + (1)) < (Self.getAllBinaryTiledLayer().getColumns()) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt((oldGeographicMapCellPosition.getColumn()) + (1), oldGeographicMapCellPosition.getRow()));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            2: begin
                if ((oldGeographicMapCellPosition.getRow()) - (1)) >= (0) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) - (1)));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            3: begin
                if ((oldGeographicMapCellPosition.getRow()) + (1)) < (Self.getAllBinaryTiledLayer().getRows()) then begin
                    Exit(Self.geographicMapCellPositionFactory.getAt(oldGeographicMapCellPosition.getColumn(), (oldGeographicMapCellPosition.getRow()) + (1)));
                end else begin
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
            else begin
                Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
            end;
        end;
end;
    

// throws Exception
function TBasicGeographicMap.isOfFourDirections(oldGeographicMapCellPosition: TGeographicMapCellPosition; newGeographicMapCellPosition: TGeographicMapCellPosition): Boolean;
var
  index: Integer;
begin
        for index := 0 to 4 - 1 do begin
            if (newGeographicMapCellPosition) = (Self.getCellPositionNoThrow(index, oldGeographicMapCellPosition)) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionAtXY(x: Integer; y: Integer): TGeographicMapCellPosition;
var
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  i_column: Integer;
  i_row: Integer;
begin
        allBinaryTiledLayer_ := Self.getAllBinaryTiledLayer();
        i_column := Self.mathUtil.abs(TJava.Divide(x, allBinaryTiledLayer_.getCellHeight()));
        i_row := Self.mathUtil.abs(TJava.Divide(y, allBinaryTiledLayer_.getCellWidth()));
        Exit(Self.geographicMapCellPositionFactory.getAt(i_column, i_row));
end;
    

function TBasicGeographicMap.getCellPositionAtXYNoThrow(x: Integer; y: Integer): TGeographicMapCellPosition;
var
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  i_column: Integer;
  i_row: Integer;
begin
        allBinaryTiledLayer_ := Self.getAllBinaryTiledLayer();
        i_column := Self.mathUtil.abs(TJava.Divide(x, allBinaryTiledLayer_.getCellHeight()));
        i_row := Self.mathUtil.abs(TJava.Divide(y, allBinaryTiledLayer_.getCellWidth()));
        if ((allBinaryTiledLayer_.getColumns()) > (i_column)) and ((allBinaryTiledLayer_.getRows()) > (i_row)) then begin
            try
                Exit(Self.geographicMapCellPositionFactory.getAt(i_column, i_row));
            except
                on e: SysUtils.Exception do begin
                Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end;
            end;
        end else begin
            Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end;
end;
    

// throws Exception
function TBasicGeographicMap.isOnMap(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
var
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  i_column: Integer;
  i_row: Integer;
begin
        allBinaryTiledLayer_ := Self.getAllBinaryTiledLayer();
        i_column := geographicMapCellPosition_.getColumn();
        i_row := geographicMapCellPosition_.getRow();
        if ((allBinaryTiledLayer_.getColumns()) > (i_column)) and ((allBinaryTiledLayer_.getRows()) > (i_row)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionAtNoThrow(x: Integer; y: Integer; x2: Integer; y2: Integer; geographicMapCellPositionList: TBasicArrayList): TBasicArrayList;
var
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  i_columnMin: Integer;
  i_rowMin: Integer;
  i_columnMax: Integer;
  i_rowMax: Integer;
  rowIndex: Integer;
  columnIndex: Integer;
begin
        geographicMapCellPositionList.clear();
        allBinaryTiledLayer_ := Self.getAllBinaryTiledLayer();
        i_columnMin := Self.mathUtil.abs(TJava.Divide(x, allBinaryTiledLayer_.getCellHeight()));
        i_rowMin := Self.mathUtil.abs(TJava.Divide(y, allBinaryTiledLayer_.getCellWidth()));
        i_columnMax := (Self.mathUtil.abs(TJava.Divide(x2, allBinaryTiledLayer_.getCellHeight()))) + (1);
        i_rowMax := (Self.mathUtil.abs(TJava.Divide(y2, allBinaryTiledLayer_.getCellWidth()))) + (1);
        for columnIndex := i_columnMin to i_columnMax - 1 do begin
            for rowIndex := i_rowMin to i_rowMax - 1 do begin
                if ((allBinaryTiledLayer_.getColumns()) > (columnIndex)) and ((allBinaryTiledLayer_.getRows()) > (rowIndex)) then begin
                    geographicMapCellPositionList.add(TJava.Box(Self.geographicMapCellPositionFactory.getAt(columnIndex, rowIndex)));
                end;
            end;
        end;
        Exit(geographicMapCellPositionList);
end;
    

// throws Exception
function TBasicGeographicMap.getCellPositionsAt(layer: TABLayer; currentCellPositionArray: TArray<TArray<TGeographicMapCellPosition>>; cellPositionArray: TArray<TArray<TGeographicMapCellPosition>>): Boolean;
var
  hasChanged: Boolean;
  size: Integer;
  size2: Integer;
  xPortion: Integer;
  yPortion: Integer;
  x: Integer;
  y: Integer;
  index2: Integer;
  index: Integer;
begin
        hasChanged := False;
        size := System.Length(cellPositionArray);
        size2 := System.Length(cellPositionArray[0]);
        xPortion := (layer.getXP()) div (((size) - (1)));
        yPortion := (layer.getYP()) div (((size) - (1)));
        for index := 0 to size - 1 do begin
            for index2 := 0 to size2 - 1 do begin
                x := (xPortion) * (index);
                y := (yPortion) * (index);
                cellPositionArray[index][index2] := Self.getCellPositionAtXY(x, y);
                if (currentCellPositionArray[index][index2]) <> (cellPositionArray[index][index2]) then begin
                    hasChanged := True;
                end;
            end;
        end;
        Exit(hasChanged);
end;
    

// throws Exception
function TBasicGeographicMap.getCellTypeAtXY(x: Integer; y: Integer): TGeographicMapCellType;
var
  cellPosition: TGeographicMapCellPosition;
begin
        cellPosition := Self.getCellPositionAtXY(x, y);
        Exit(Self.getCellTypeAt(cellPosition));
end;
    

function TBasicGeographicMap.getGeographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
begin
        Exit(Self.geographicMapCellPositionFactory);
end;
    

function TBasicGeographicMap.getGeographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface;
begin
        Exit(Self.geographicMapCellPositionFactoryInterface);
end;
    

function TBasicGeographicMap.getGeographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
begin
        Exit(Self.geographicMapCellTypeFactory);
end;
    

function TBasicGeographicMap.getId: Integer;
begin
        Exit(inherited getId());
end;
    

function TBasicGeographicMap.getName: string;
begin
        Exit(inherited getName());
end;
    

procedure TBasicGeographicMap.reset;
begin
        inherited reset();
end;
    

function TBasicGeographicMap.getAllBinaryTiledLayer: TAllBinaryTiledLayer;
begin
        Exit(inherited getAllBinaryTiledLayer());
end;
    

function TBasicGeographicMap.getCellTypeFromMapCellTypeInt(cellTypeId: Integer): Integer;
begin
        Exit(inherited getCellTypeFromMapCellTypeInt(cellTypeId));
end;
    

// throws Exception
function TBasicGeographicMap.getCellTypeAt(cellPosition: TGeographicMapCellPosition): TGeographicMapCellType;
begin
        Exit(inherited getCellTypeAt(cellPosition));
end;
    

function TBasicGeographicMap.getForegroundBasicColor: TBasicColor;
begin
        Exit(inherited getForegroundBasicColor());
end;
    

function TBasicGeographicMap.getBackgroundBasicColor: TBasicColor;
begin
        Exit(inherited getBackgroundBasicColor());
end;

initialization
  {AB:INITIALIZATION}
  TBasicGeographicMap.NULL_BASIC_GEOGRAPHIC_MAP_ARRAY := nil;
  {AB:END}

end.


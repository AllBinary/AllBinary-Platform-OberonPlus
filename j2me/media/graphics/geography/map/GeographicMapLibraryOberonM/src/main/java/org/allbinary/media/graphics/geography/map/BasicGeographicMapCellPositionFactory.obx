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
unit BasicGeographicMapCellPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AllBinaryTiledLayer, BasicGeographicMap, GeographicMapCellPositionFactoryInterface, GeographicMapCellPositionFactoryInitVisitorInterface, GeographicMapCellPosition;

type
  {AB:TYPES}
  TBasicGeographicMapCellPositionFactory = class(TObject)
  public
    logUtil: TLogUtil;
    geographicMapCellPositionArray: TArray<TArray<TGeographicMapCellPosition>>;
    geographicMapInterface: TBasicGeographicMap;
    geographicMapCellPositionFactoryInterface: IGeographicMapCellPositionFactoryInterface;
    columns: Integer;
    rows: Integer;
    tiledLayer: TAllBinaryTiledLayer;
    procedure InitFields;
        constructor Create(geographicMapInterface: TBasicGeographicMap);
        procedure init;
        procedure visit(geographicMapCelPositionFactoryInitVisitorInterface: IGeographicMapCellPositionFactoryInitVisitorInterface); virtual;
        function getAt(i_column: Integer; i_row: Integer): TGeographicMapCellPosition; virtual;
        function getInstance(anotherMapGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition; virtual;
        function createInstance(i_column: Integer; i_row: Integer; width: Integer; height: Integer): TGeographicMapCellPosition; virtual;
        function getColumns: Integer; virtual;
        function getRows: Integer; virtual;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TBasicGeographicMapCellPositionFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
end;
    

constructor TBasicGeographicMapCellPositionFactory.Create(geographicMapInterface: TBasicGeographicMap);
begin
    inherited Create;
    InitFields;
        Self.geographicMapInterface := geographicMapInterface;
        Self.geographicMapCellPositionFactoryInterface := Self.geographicMapInterface.getGeographicMapCellPositionFactoryInterface();
        Self.tiledLayer := Self.geographicMapInterface.getAllBinaryTiledLayer();
        Self.columns := Self.tiledLayer.getColumns();
        Self.rows := Self.tiledLayer.getRows();
        Self.geographicMapCellPositionArray := TJava.NewArray2<TGeographicMapCellPosition>(Self.rows, Self.columns);
        Self.init();
end;
    

// throws Exception
procedure TBasicGeographicMapCellPositionFactory.init;
var
  tiledLayer: TAllBinaryTiledLayer;
  columns: Integer;
  rows: Integer;
  width: Integer;
  height: Integer;
  row: Integer;
  column: Integer;
begin
        tiledLayer := Self.tiledLayer;
        columns := Self.getColumns();
        rows := Self.getRows();
        width := tiledLayer.getCellWidth();
        height := tiledLayer.getCellHeight();
        for column := 0 to columns - 1 do begin
            for row := 0 to rows - 1 do begin
                Self.createInstance(column, row, width, height);
            end;
        end;
end;
    

// throws Exception
procedure TBasicGeographicMapCellPositionFactory.visit(geographicMapCelPositionFactoryInitVisitorInterface: IGeographicMapCellPositionFactoryInitVisitorInterface);
var
  tiledLayer: TAllBinaryTiledLayer;
  columns: Integer;
  rows: Integer;
  cellPosition: TGeographicMapCellPosition;
  row: Integer;
  column: Integer;
  commonSeps_: TCommonSeps;
begin
        tiledLayer := Self.tiledLayer;
        columns := Self.getColumns();
        rows := Self.getRows();
        try
            
            for column := 0 to columns - 1 do begin
                for row := 0 to rows - 1 do begin
                    cellPosition := Self.getAt(column, row);
                    geographicMapCelPositionFactoryInitVisitorInterface.visit(tiledLayer, cellPosition);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            commonSeps_ := TCommonSeps.getInstance();
            Self.logUtil.put(TStringMaker.Create().append(commonSeps_.BRACKET_OPEN).appendint(rows).append(commonSeps_.BRACKET_CLOSE).append(commonSeps_.BRACKET_OPEN).appendint(columns).append(commonSeps_.BRACKET_CLOSE).toString(), TJava.Box(Self), 'visit', TJava.Box(e));
            raise e;
            end;
        end;
end;
    

// throws Exception
function TBasicGeographicMapCellPositionFactory.getAt(i_column: Integer; i_row: Integer): TGeographicMapCellPosition;
begin
        Exit(Self.geographicMapCellPositionArray[i_row][i_column]);
end;
    

// throws Exception
function TBasicGeographicMapCellPositionFactory.getInstance(anotherMapGeographicMapCellPosition: TGeographicMapCellPosition): TGeographicMapCellPosition;
begin
        Exit(Self.getAt(anotherMapGeographicMapCellPosition.getColumn(), anotherMapGeographicMapCellPosition.getRow()));
end;
    

// throws Exception
function TBasicGeographicMapCellPositionFactory.createInstance(i_column: Integer; i_row: Integer; width: Integer; height: Integer): TGeographicMapCellPosition;
var
  cellPositionCanBeNull: TObject;
begin
        cellPositionCanBeNull := TJava.Box(Self.geographicMapCellPositionArray[i_row][i_column]);
        if (cellPositionCanBeNull) = (nil) then begin
            cellPositionCanBeNull := TJava.Box(Self.geographicMapCellPositionFactoryInterface.getInstance(Self.geographicMapInterface, i_column, i_row, Self.columns, Self.rows, width, height));
            Self.geographicMapCellPositionArray[i_row][i_column] := TGeographicMapCellPosition(TJava.ToObject(cellPositionCanBeNull));
        end;
        Exit(TGeographicMapCellPosition(TJava.ToObject(cellPositionCanBeNull)));
end;
    

function TBasicGeographicMapCellPositionFactory.getColumns: Integer;
begin
        Exit(Self.columns);
end;
    

function TBasicGeographicMapCellPositionFactory.getRows: Integer;
begin
        Exit(Self.rows);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit SimpleGeographicMap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, BasicColor, CommonStrings, GeographicMapCellTypeFactory, GeographicMapCellType, GeographicMapCellPosition;

type
  {AB:TYPES}
  TSimpleGeographicMap = class(TObject)
  public
    commonStrings: TCommonStrings;
    id: Integer;
    name: string;
    cellTypeIdToGeographicMapCellType: TArray<Integer>;
    tiledLayer: TAllBinaryTiledLayer;
    foregroundBasicColor: TBasicColor;
    backgroundBasicColor: TBasicColor;
    geographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
    procedure InitFields;
        constructor Create(id: Integer; name: string; cellTypeIdToGeographicMapCellType: TArray<Integer>; tiledLayer: TAllBinaryTiledLayer; foregroundBasicColor: TBasicColor; backgroundBasicColor: TBasicColor);
        function getId: Integer; virtual;
        function getName: string; virtual;
        procedure reset; virtual;
        function getAllBinaryTiledLayer: TAllBinaryTiledLayer; virtual;
        function getCellTypeAt(cellPosition: TGeographicMapCellPosition): TGeographicMapCellType; virtual;
        function getCellTypeFromMapCellTypeInt(cellTypeId: Integer): Integer; virtual;
        function getForegroundBasicColor: TBasicColor; virtual;
        procedure setForegroundBasicColor(foregroundBasicColor: TBasicColor);
        function getBackgroundBasicColor: TBasicColor; virtual;
        procedure setBackgroundBasicColor(backgroundBasicColor: TBasicColor);
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TSimpleGeographicMap.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  Self.foregroundBasicColor := TBasicColorFactory.getInstance().NULL_COLOR;
  Self.backgroundBasicColor := TBasicColorFactory.getInstance().NULL_COLOR;
  Self.geographicMapCellTypeFactory := TGeographicMapCellTypeFactory.getInstance();
end;
    

constructor TSimpleGeographicMap.Create(id: Integer; name: string; cellTypeIdToGeographicMapCellType: TArray<Integer>; tiledLayer: TAllBinaryTiledLayer; foregroundBasicColor: TBasicColor; backgroundBasicColor: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.id := id;
        Self.name := name;
        Self.cellTypeIdToGeographicMapCellType := cellTypeIdToGeographicMapCellType;
        Self.tiledLayer := tiledLayer;
        Self.setBackgroundBasicColor(backgroundBasicColor);
        Self.setForegroundBasicColor(foregroundBasicColor);
end;
    

function TSimpleGeographicMap.getId: Integer;
begin
        Exit(Self.id);
end;
    

function TSimpleGeographicMap.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TSimpleGeographicMap.reset;
begin
end;
    

function TSimpleGeographicMap.getAllBinaryTiledLayer: TAllBinaryTiledLayer;
begin
        Exit(Self.tiledLayer);
end;
    

// throws Exception
function TSimpleGeographicMap.getCellTypeAt(cellPosition: TGeographicMapCellPosition): TGeographicMapCellType;
var
  i_column: Integer;
  i_row: Integer;
  cellTypeId: Integer;
begin
        i_column := cellPosition.getColumn();
        i_row := cellPosition.getRow();
        cellTypeId := Self.tiledLayer.getCell(i_column, i_row);
        if (cellTypeId) < (0) then begin
            cellTypeId := Self.tiledLayer.getAnimatedTile(cellTypeId);
        end;
        Exit(Self.geographicMapCellTypeFactory.get(Self.cellTypeIdToGeographicMapCellType[cellTypeId]));
end;
    

function TSimpleGeographicMap.getCellTypeFromMapCellTypeInt(cellTypeId: Integer): Integer;
begin
        Exit(Self.cellTypeIdToGeographicMapCellType[cellTypeId]);
end;
    

function TSimpleGeographicMap.getForegroundBasicColor: TBasicColor;
begin
        Exit(Self.foregroundBasicColor);
end;
    

procedure TSimpleGeographicMap.setForegroundBasicColor(foregroundBasicColor: TBasicColor);
begin
        Self.foregroundBasicColor := foregroundBasicColor;
end;
    

function TSimpleGeographicMap.getBackgroundBasicColor: TBasicColor;
begin
        Exit(Self.backgroundBasicColor);
end;
    

procedure TSimpleGeographicMap.setBackgroundBasicColor(backgroundBasicColor: TBasicColor);
begin
        Self.backgroundBasicColor := backgroundBasicColor;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


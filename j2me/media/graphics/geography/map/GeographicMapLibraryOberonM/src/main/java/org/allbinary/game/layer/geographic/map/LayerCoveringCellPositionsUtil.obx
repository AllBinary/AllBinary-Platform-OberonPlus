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
// package org.allbinary.game.layer.geographic.map
unit LayerCoveringCellPositionsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AllBinaryLayer, BasicGeographicMap, CellPositionsUtil, GeographicMapCellPosition;

type
  {AB:TYPES}
  TLayerCoveringCellPositionsUtil = class(TObject)
  public
    cellPositionsUtil: TCellPositionsUtil;
    class var instance: TLayerCoveringCellPositionsUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLayerCoveringCellPositionsUtil; static;
        function getAllXY(geographicMapInterface: TBasicGeographicMap; layerInterface: TAllBinaryLayer; x: Integer; y: Integer; reusableList: TBasicArrayList): TBasicArrayList;
        function getAll(geographicMapInterface: TBasicGeographicMap; topLeftGeographicMapCellPosition: TGeographicMapCellPosition; layerInterface: TAllBinaryLayer; reusableList: TBasicArrayList): TBasicArrayList;
  end;

implementation

{AB:CODE}

procedure TLayerCoveringCellPositionsUtil.InitFields;
begin
  Self.cellPositionsUtil := TCellPositionsUtil.getInstance();
end;

constructor TLayerCoveringCellPositionsUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLayerCoveringCellPositionsUtil.getInstance: TLayerCoveringCellPositionsUtil;
begin
        Exit(TLayerCoveringCellPositionsUtil.instance);
end;
    

// throws Exception
function TLayerCoveringCellPositionsUtil.getAllXY(geographicMapInterface: TBasicGeographicMap; layerInterface: TAllBinaryLayer; x: Integer; y: Integer; reusableList: TBasicArrayList): TBasicArrayList;
var
  topLeftGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXY(x, y);
        Exit(Self.getAll(geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList));
end;
    

// throws Exception
function TLayerCoveringCellPositionsUtil.getAll(geographicMapInterface: TBasicGeographicMap; topLeftGeographicMapCellPosition: TGeographicMapCellPosition; layerInterface: TAllBinaryLayer; reusableList: TBasicArrayList): TBasicArrayList;
var
  columns: Integer;
  rows: Integer;
begin
        reusableList.clear();
        columns := (layerInterface.getWidth()) div (geographicMapInterface.getAllBinaryTiledLayer().getCellWidth());
        rows := (layerInterface.getHeight()) div (geographicMapInterface.getAllBinaryTiledLayer().getCellHeight());
        if (columns) = (0) then begin
            columns := 1;
        end;
        if (rows) = (0) then begin
            rows := 1;
        end;
        Exit(Self.cellPositionsUtil.getAll(geographicMapInterface, topLeftGeographicMapCellPosition, columns, rows, reusableList));
end;

initialization
  {AB:INITIALIZATION}
  TLayerCoveringCellPositionsUtil.instance := TLayerCoveringCellPositionsUtil.Create();
  {AB:END}

end.


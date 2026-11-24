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
unit LayerPartialCellPositionsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AllBinaryLayer, BasicGeographicMap;

type
  {AB:TYPES}
  TLayerPartialCellPositionsUtil = class(TObject)
  public
    class var instance: TLayerPartialCellPositionsUtil;
    constructor Create;
        function getAll(geographicMapInterface: TBasicGeographicMap; layerInterface: TAllBinaryLayer; reusableList: TBasicArrayList): TBasicArrayList;
        function getAllDXY(geographicMapInterface: TBasicGeographicMap; layerInterface: TAllBinaryLayer; dx: Integer; dy: Integer; reusableList: TBasicArrayList): TBasicArrayList;
        class function getInstance: TLayerPartialCellPositionsUtil; static;
  end;

implementation
uses
  GeographicMapCellPosition, SimpleGeographicMapCellPositionFactory;


{AB:CODE}

constructor TLayerPartialCellPositionsUtil.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TLayerPartialCellPositionsUtil.getAll(geographicMapInterface: TBasicGeographicMap; layerInterface: TAllBinaryLayer; reusableList: TBasicArrayList): TBasicArrayList;
var
  topLeftGeographicMapCellPosition: TGeographicMapCellPosition;
  topRightGeographicMapCellPosition: TGeographicMapCellPosition;
  bottomLeftGeographicMapCellPosition: TGeographicMapCellPosition;
  bottomRightGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        reusableList.clear();
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP(), layerInterface.getYP());
        topRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow((layerInterface.getXP()) + (layerInterface.getWidth()), layerInterface.getYP());
        bottomLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow(layerInterface.getXP(), (layerInterface.getYP()) + (layerInterface.getHeight()));
        bottomRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow((layerInterface.getXP()) + (layerInterface.getWidth()), (layerInterface.getYP()) + (layerInterface.getHeight()));
        if (topLeftGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            reusableList.add(TJava.Box(topLeftGeographicMapCellPosition));
        end;
        if ((topRightGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and ((topLeftGeographicMapCellPosition) <> (topRightGeographicMapCellPosition)) then begin
            reusableList.add(TJava.Box(topRightGeographicMapCellPosition));
        end;
        if ((bottomLeftGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and (not (reusableList.contains(TJava.Box(bottomLeftGeographicMapCellPosition)))) then begin
            reusableList.add(TJava.Box(bottomLeftGeographicMapCellPosition));
        end;
        if ((bottomRightGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and (not (reusableList.contains(TJava.Box(bottomRightGeographicMapCellPosition)))) then begin
            reusableList.add(TJava.Box(bottomRightGeographicMapCellPosition));
        end;
        Exit(reusableList);
end;
    

// throws Exception
function TLayerPartialCellPositionsUtil.getAllDXY(geographicMapInterface: TBasicGeographicMap; layerInterface: TAllBinaryLayer; dx: Integer; dy: Integer; reusableList: TBasicArrayList): TBasicArrayList;
var
  topLeftGeographicMapCellPosition: TGeographicMapCellPosition;
  topRightGeographicMapCellPosition: TGeographicMapCellPosition;
  bottomLeftGeographicMapCellPosition: TGeographicMapCellPosition;
  bottomRightGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        reusableList.clear();
        topLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow((layerInterface.getXP()) + (dx), (layerInterface.getYP()) + (dy));
        topRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow(((layerInterface.getXP()) + (layerInterface.getWidth())) + (dx), (layerInterface.getYP()) + (dy));
        bottomLeftGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow((layerInterface.getXP()) + (dx), ((layerInterface.getYP()) + (layerInterface.getHeight())) + (dy));
        bottomRightGeographicMapCellPosition := geographicMapInterface.getCellPositionAtXYNoThrow(((layerInterface.getXP()) + (layerInterface.getWidth())) + (dx), ((layerInterface.getYP()) + (layerInterface.getHeight())) + (dy));
        if (topLeftGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            reusableList.add(TJava.Box(topLeftGeographicMapCellPosition));
        end;
        if ((topRightGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and ((topLeftGeographicMapCellPosition) <> (topRightGeographicMapCellPosition)) then begin
            reusableList.add(TJava.Box(topRightGeographicMapCellPosition));
        end;
        if ((bottomLeftGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and (not (reusableList.contains(TJava.Box(bottomLeftGeographicMapCellPosition)))) then begin
            reusableList.add(TJava.Box(bottomLeftGeographicMapCellPosition));
        end;
        if ((bottomRightGeographicMapCellPosition) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) and (not (reusableList.contains(TJava.Box(bottomRightGeographicMapCellPosition)))) then begin
            reusableList.add(TJava.Box(bottomRightGeographicMapCellPosition));
        end;
        Exit(reusableList);
end;
    

class function TLayerPartialCellPositionsUtil.getInstance: TLayerPartialCellPositionsUtil;
begin
        Exit(TLayerPartialCellPositionsUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLayerPartialCellPositionsUtil.instance := TLayerPartialCellPositionsUtil.Create();
  {AB:END}

end.


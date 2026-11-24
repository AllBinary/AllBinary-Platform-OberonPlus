{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit GeographicMapCellPositionArea;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CircularIndexUtil, LayerCoveringCellPositionsUtil, AllBinaryLayer, BasicGeographicMap, CellPositionsUtil, GeographicMapCellPosition, GeographicMapCellPositionAreaBase;

type
  {AB:TYPES}
  TGeographicMapCellPositionArea = class(TGeographicMapCellPositionAreaBase)
  public
    cellPositionsUtil: TCellPositionsUtil;
    layerCoveringCellPositionsUtil: TLayerCoveringCellPositionsUtil;
    reusableOccupyingGeographicMapCellPositionList: TBasicArrayList;
    reusableSurroundingGeographicMapCellPositionList: TBasicArrayList;
    surroundingCircularIndexUtil: TCircularIndexUtil;
    layerInterface: TAllBinaryLayer;
    LIST: TBasicArrayList;
    occupyingGeographicMapCellPositionList: TBasicArrayList;
    surroundingGeographicMapCellPositionList: TBasicArrayList;
    procedure InitFields;
        constructor Create(layerInterface: TAllBinaryLayer);
        procedure update(geographicMapInterface: TBasicGeographicMap); override;
        function getOccupyingGeographicMapCellPositionList: TBasicArrayList; override;
        function getSurroundingGeographicMapCellPositionList: TBasicArrayList; override;
        function getNextSurroundingGeographicMapCellPosition: TGeographicMapCellPosition; override;
  end;

implementation
uses
  BasicArrayListS, BasicArrayListUtil;


{AB:CODE}

procedure TGeographicMapCellPositionArea.InitFields;
begin
  Self.cellPositionsUtil := TCellPositionsUtil.getInstance();
  Self.layerCoveringCellPositionsUtil := TLayerCoveringCellPositionsUtil.getInstance();
  Self.reusableOccupyingGeographicMapCellPositionList := TBasicArrayListS.Create(4);
  Self.reusableSurroundingGeographicMapCellPositionList := TBasicArrayListS.Create(12);
  Self.surroundingCircularIndexUtil := TCircularIndexUtil.createInstance(0);
  
  Self.LIST := TBasicArrayListUtil.getInstance().getImmutableInstance();
  Self.occupyingGeographicMapCellPositionList := Self.LIST;
  Self.surroundingGeographicMapCellPositionList := Self.LIST;
end;
    

constructor TGeographicMapCellPositionArea.Create(layerInterface: TAllBinaryLayer);
begin
    inherited Create;
    InitFields;
        Self.layerInterface := layerInterface;
end;
    

// throws Exception
procedure TGeographicMapCellPositionArea.update(geographicMapInterface: TBasicGeographicMap);
begin
        Self.occupyingGeographicMapCellPositionList := Self.layerCoveringCellPositionsUtil.getAllXY(geographicMapInterface, Self.layerInterface, Self.layerInterface.getXP(), Self.layerInterface.getYP(), Self.reusableOccupyingGeographicMapCellPositionList);
        Self.surroundingGeographicMapCellPositionList := Self.cellPositionsUtil.getAllSurrounding(geographicMapInterface, Self.occupyingGeographicMapCellPositionList, Self.reusableSurroundingGeographicMapCellPositionList);
        Self.surroundingCircularIndexUtil.setSize(Self.surroundingGeographicMapCellPositionList.size());
end;
    

function TGeographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.occupyingGeographicMapCellPositionList);
end;
    

function TGeographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.surroundingGeographicMapCellPositionList);
end;
    

function TGeographicMapCellPositionArea.getNextSurroundingGeographicMapCellPosition: TGeographicMapCellPosition;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
begin
        geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(Self.surroundingGeographicMapCellPositionList.get(Self.surroundingCircularIndexUtil.getIndex())));
        Self.surroundingCircularIndexUtil.next();
        Exit(geographicMapCellPosition_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


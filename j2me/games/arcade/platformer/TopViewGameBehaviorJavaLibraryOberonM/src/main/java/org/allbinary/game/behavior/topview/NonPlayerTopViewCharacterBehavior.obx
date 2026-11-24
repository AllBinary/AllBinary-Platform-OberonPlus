{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.behavior.topview
unit NonPlayerTopViewCharacterBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MultiGeographicMapBehavior, Direction, BasicTerrainInfo, AllBinaryLayer, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellType, TopViewCharacterBehavior;

type
  {AB:TYPES}
  TNonPlayerTopViewCharacterBehavior = class(TTopViewCharacterBehavior)
  public
    geographicMapBehavior: TMultiGeographicMapBehavior;
    CLIFF: TBasicTerrainInfo;
    procedure InitFields;
    constructor Create;
        procedure terrainEvent_(layer: TAllBinaryLayer; direction_: TDirection; x: Integer; y: Integer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        procedure terrainMove(layer: TAllBinaryLayer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer); override;
  end;

implementation
uses
  DirectionFactory, TerrainEvent, TerrainEventCircularStaticPool, TerrainEventHandler, AngleFactory, BasicGeographicMapCellPositionFactory, SimpleGeographicMapCellPositionFactory;


{AB:CODE}

procedure TNonPlayerTopViewCharacterBehavior.InitFields;
begin
  Self.geographicMapBehavior := TMultiGeographicMapBehavior.Create();
  Self.CLIFF := TBasicTerrainInfo.Create(TAngleFactory.getInstance().DOWN);
end;

constructor TNonPlayerTopViewCharacterBehavior.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TNonPlayerTopViewCharacterBehavior.terrainEvent_(layer: TAllBinaryLayer; direction_: TDirection; x: Integer; y: Integer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition);
var
  maxColumns: Integer;
  nextTerrainGeographicMapCellPosition: TGeographicMapCellPosition;
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  hasSolidBlock: Boolean;
  terrainEvent_: TTerrainEvent;
begin
        maxColumns := geographicMapInterfaceArray[0].getAllBinaryTiledLayer().getColumns();
        if ((geographicMapCellPosition_.getColumn()) > (0)) and ((geographicMapCellPosition_.getColumn()) < (maxColumns)) then begin
            nextTerrainGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
            geographicMapCellPositionFactory := geographicMapInterfaceArray[0].getGeographicMapCellPositionFactory();
            if (direction_) = (TDirectionFactory.getInstance().LEFT) then begin
                nextTerrainGeographicMapCellPosition := geographicMapCellPositionFactory.getAt((geographicMapCellPosition_.getColumn()) - (1), geographicMapCellPosition_.getRow());
            end else if (direction_) = (TDirectionFactory.getInstance().RIGHT) then begin
                nextTerrainGeographicMapCellPosition := geographicMapCellPositionFactory.getAt((geographicMapCellPosition_.getColumn()) + (1), geographicMapCellPosition_.getRow());
            end;
            Self.geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, nextTerrainGeographicMapCellPosition);
            hasSolidBlock := Self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray);
            if not (hasSolidBlock) then begin
                terrainEvent_ := TTerrainEventCircularStaticPool.getInstance().getNext(Self.CLIFF);
                TTerrainEventHandler.getInstance(layer).fireEvent(terrainEvent_);
            end;
        end;
end;
    

procedure TNonPlayerTopViewCharacterBehavior.terrainMove(layer: TAllBinaryLayer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer);
begin
        layer.moveDXY(x, y);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


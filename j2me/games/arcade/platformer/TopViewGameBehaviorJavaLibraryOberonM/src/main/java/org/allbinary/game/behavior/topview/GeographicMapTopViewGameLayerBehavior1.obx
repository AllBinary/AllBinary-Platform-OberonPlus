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
unit GeographicMapTopViewGameLayerBehavior1;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MultiGeographicMapBehavior, GravityUtil, VelocityProperties, AllBinaryLayer, LogUtil, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellType, GeographicMapTopViewLayerBehavior;

type
  {AB:TYPES}
  TGeographicMapTopViewGameLayerBehavior1 = class(TGeographicMapTopViewLayerBehavior)
  public
    logUtil: TLogUtil;
    gravityUtil: TGravityUtil;
    geographicMapBehavior: TMultiGeographicMapBehavior;
    autoStepBlocks: Boolean;
    offsetY: Integer;
    previousGeographicMapCellPosition: TGeographicMapCellPosition;
    procedure InitFields;
        constructor Create(maxGravityActionIndex: Integer; autoStepBlocks: Boolean; offsetY: Integer);
        procedure gravity(velocityProperties_: TVelocityProperties; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition); override;
        function getPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition; virtual;
        function getLeftPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
        function getRightPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
        function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition; override;
        procedure moveAndLand(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer); override;
        function move(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): Boolean; override;
        procedure left(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer); override;
        procedure right(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer); override;
  end;

implementation
uses
  TopViewCharacterInterface, AllBinaryTiledLayer, SimpleGeographicMapCellPositionFactory;


{AB:CODE}

procedure TGeographicMapTopViewGameLayerBehavior1.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.gravityUtil := TGravityUtil.getInstance();
  Self.geographicMapBehavior := TMultiGeographicMapBehavior.Create();
  
  
  Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
end;
    

constructor TGeographicMapTopViewGameLayerBehavior1.Create(maxGravityActionIndex: Integer; autoStepBlocks: Boolean; offsetY: Integer);
begin
        inherited Create(maxGravityActionIndex);
        InitFields;
        Self.autoStepBlocks := autoStepBlocks;
        Self.offsetY := offsetY;
end;
    

// throws Exception
procedure TGeographicMapTopViewGameLayerBehavior1.gravity(velocityProperties_: TVelocityProperties; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition);
var
  hasSolidBlock: Boolean;
begin
        if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            Self.geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition_);
            hasSolidBlock := Self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray);
            if not (hasSolidBlock) then begin
                Self.gravityUtil.process(velocityProperties_, Self.gravityUtil.GAME_GRAVITY_VELOCITY);
                velocityProperties_.limitXYToForwardAndReverseMaxVelocity();
                Self.gravity();
            end else begin
            end;
        end;
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior1.getPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := ((layer.getXP()) + (-x)) + (layer.getWidth());
        yCellPosition := ((layer.getYP()) + (-y)) + (layer.getHeight());
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior1.getLeftPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := layer.getXP();
        yCellPosition := (layer.getYP()) + (layer.getHeight());
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior1.getRightPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := (layer.getXP()) + (layer.getWidth());
        yCellPosition := (layer.getYP()) + (layer.getHeight());
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior1.getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  possibleStepGeographicMapCellPosition: TGeographicMapCellPosition;
  tiledLayer: TAllBinaryTiledLayer;
  hasSolidBlock: Boolean;
begin
        geographicMapCellPosition_ := Self.getPosition(geographicMapInterfaceArray, layer, x, y);
        if ((Self.previousGeographicMapCellPosition) <> (geographicMapCellPosition_)) and ((geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION)) then begin
            possibleStepGeographicMapCellPosition := geographicMapCellPosition_;
            tiledLayer := geographicMapInterfaceArray[0].getAllBinaryTiledLayer();
            if ((((possibleStepGeographicMapCellPosition.getColumn()) > (0)) and ((possibleStepGeographicMapCellPosition.getRow()) > (0))) and ((possibleStepGeographicMapCellPosition.getColumn()) < (tiledLayer.getColumns()))) and ((possibleStepGeographicMapCellPosition.getRow()) < (tiledLayer.getRows())) then begin
                Self.geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
                hasSolidBlock := Self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray);
                if hasSolidBlock then begin
                    velocityProperties_.getVelocityXBasicDecimalP().setint(0);
                    Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end else begin
                    Self.previousGeographicMapCellPosition := possibleStepGeographicMapCellPosition;
                    Exit(possibleStepGeographicMapCellPosition);
                end;
            end;
        end;
        Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
end;
    

// throws Exception
procedure TGeographicMapTopViewGameLayerBehavior1.moveAndLand(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer);
var
  topViewCharacterInterface_: ITopViewCharacterInterface;
begin
        if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            topViewCharacterInterface_ := ((TJava.ToObject(layer) as ITopViewCharacterInterface));
            topViewCharacterInterface_.terrainMove(geographicMapInterfaceArray, geographicMapCellTypeArray, x, y);
        end else begin
        end;
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior1.move(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): Boolean;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
begin
        geographicMapCellPosition_ := Self.getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray, geographicMapCellTypeArray, velocityProperties_, layer, x, y);
        Self.moveAndLand(geographicMapInterfaceArray, geographicMapCellTypeArray, geographicMapCellPosition_, velocityProperties_, layer, x, y);
        if (geographicMapCellPosition_) = (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

// throws Exception
procedure TGeographicMapTopViewGameLayerBehavior1.left(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer);
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  possibleStepGeographicMapCellPosition: TGeographicMapCellPosition;
  hasSolidBlock: Boolean;
  topViewCharacterInterface_: ITopViewCharacterInterface;
begin
        geographicMapCellPosition_ := Self.getLeftPosition(geographicMapInterfaceArray, layer);
        if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray[0].getGeographicMapCellPositionFactory().getAt(geographicMapCellPosition_.getColumn(), (geographicMapCellPosition_.getRow()) - (1));
            Self.geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := Self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray);
            if hasSolidBlock then begin
                if Self.autoStepBlocks then begin
                    topViewCharacterInterface_ := ((TJava.ToObject(layer) as ITopViewCharacterInterface));
                    topViewCharacterInterface_.leftp();
                end else begin
                    velocityProperties_.getVelocityXBasicDecimalP().setint(0);
                end;
            end else begin
                topViewCharacterInterface_ := ((TJava.ToObject(layer) as ITopViewCharacterInterface));
                topViewCharacterInterface_.leftp();
            end;
        end;
end;
    

// throws Exception
procedure TGeographicMapTopViewGameLayerBehavior1.right(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer);
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  possibleStepGeographicMapCellPosition: TGeographicMapCellPosition;
  hasSolidBlock: Boolean;
  topViewCharacterInterface_: ITopViewCharacterInterface;
begin
        geographicMapCellPosition_ := Self.getRightPosition(geographicMapInterfaceArray, layer);
        if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            possibleStepGeographicMapCellPosition := geographicMapInterfaceArray[0].getGeographicMapCellPositionFactory().getAt(geographicMapCellPosition_.getColumn(), (geographicMapCellPosition_.getRow()) - (1));
            Self.geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
            hasSolidBlock := Self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray);
            if hasSolidBlock then begin
                if Self.autoStepBlocks then begin
                    topViewCharacterInterface_ := ((TJava.ToObject(layer) as ITopViewCharacterInterface));
                    topViewCharacterInterface_.rightp();
                end else begin
                    velocityProperties_.getVelocityXBasicDecimalP().setint(0);
                end;
            end else begin
                topViewCharacterInterface_ := ((TJava.ToObject(layer) as ITopViewCharacterInterface));
                topViewCharacterInterface_.rightp();
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


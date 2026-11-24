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
unit GeographicMapTopViewGameLayerBehavior2;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MultiGeographicMapBehavior, GravityUtil, VelocityProperties, AllBinaryLayer, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellType, GeographicMapTopViewLayerBehavior;

type
  {AB:TYPES}
  TGeographicMapTopViewGameLayerBehavior2 = class(TGeographicMapTopViewLayerBehavior)
  public
    gravityUtil: TGravityUtil;
    geographicMapBehavior: TMultiGeographicMapBehavior;
    autoStepBlocks: Boolean;
    offsetY: Integer;
    previousGeographicMapCellPosition: TGeographicMapCellPosition;
    procedure InitFields;
        constructor Create(maxGravityActionIndex: Integer; autoStepBlocks: Boolean; offsetY: Integer);
        procedure gravity(velocityProperties_: TVelocityProperties; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition); override;
        function getPositionTopLeft(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
        function getPositionTopRight(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
        function getPositionBottomLeft(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
        function getPositionBottomRight(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
        function getLeftPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
        function getRightPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
        function getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition; override;
        function getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer): TGeographicMapCellPosition; override;
        procedure moveAndLand(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer); override;
        function move(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): Boolean; override;
        procedure left(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer); override;
        procedure right(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer); override;
  end;

implementation
uses
  TopViewCharacterInterface, AllBinaryTiledLayer, SimpleGeographicMapCellPositionFactory;


{AB:CODE}

procedure TGeographicMapTopViewGameLayerBehavior2.InitFields;
begin
  Self.gravityUtil := TGravityUtil.getInstance();
  Self.geographicMapBehavior := TMultiGeographicMapBehavior.Create();
  
  
  Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
end;
    

constructor TGeographicMapTopViewGameLayerBehavior2.Create(maxGravityActionIndex: Integer; autoStepBlocks: Boolean; offsetY: Integer);
begin
        inherited Create(maxGravityActionIndex);
        InitFields;
        Self.autoStepBlocks := autoStepBlocks;
        Self.offsetY := offsetY;
end;
    

// throws Exception
procedure TGeographicMapTopViewGameLayerBehavior2.gravity(velocityProperties_: TVelocityProperties; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition);
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
function TGeographicMapTopViewGameLayerBehavior2.getPositionTopLeft(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := (layer.getXP()) + (-x);
        yCellPosition := (layer.getYP()) + (-y);
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior2.getPositionTopRight(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := ((layer.getXP()) + (-x)) + (layer.getWidth());
        yCellPosition := (layer.getYP()) + (-y);
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior2.getPositionBottomLeft(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := (layer.getXP()) + (-x);
        yCellPosition := ((layer.getYP()) + (-y)) + (layer.getHeight());
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior2.getPositionBottomRight(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := ((layer.getXP()) + (-x)) + (layer.getWidth());
        yCellPosition := ((layer.getYP()) + (-y)) + (layer.getHeight());
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior2.getLeftPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := layer.getXP();
        yCellPosition := (layer.getYP()) + (layer.getHeight());
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior2.getRightPosition(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; layer: TAllBinaryLayer): TGeographicMapCellPosition;
var
  xCellPosition: Integer;
  yCellPosition: Integer;
begin
        xCellPosition := (layer.getXP()) + (layer.getWidth());
        yCellPosition := (layer.getYP()) + (layer.getHeight());
        Exit(geographicMapInterfaceArray[0].getCellPositionAtXYNoThrow(xCellPosition, yCellPosition));
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior2.getGeographicMapCellPositionIfNotSolidBlockOrOffMapLocation(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): TGeographicMapCellPosition;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  topLeftGeographicMapCellPosition: TGeographicMapCellPosition;
  topRightGeographicMapCellPosition: TGeographicMapCellPosition;
  bottomLeftGeographicMapCellPosition: TGeographicMapCellPosition;
  bottomRightGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        geographicMapCellPosition_ := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        topLeftGeographicMapCellPosition := Self.getPositionTopLeft(geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition_ := Self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, topLeftGeographicMapCellPosition, velocityProperties_, layer);
        if (geographicMapCellPosition_) = (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end;
        topRightGeographicMapCellPosition := Self.getPositionTopRight(geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition_ := Self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, topRightGeographicMapCellPosition, velocityProperties_, layer);
        if (geographicMapCellPosition_) = (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end;
        bottomLeftGeographicMapCellPosition := Self.getPositionBottomLeft(geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition_ := Self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, bottomLeftGeographicMapCellPosition, velocityProperties_, layer);
        if (geographicMapCellPosition_) = (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end;
        bottomRightGeographicMapCellPosition := Self.getPositionBottomRight(geographicMapInterfaceArray, layer, x, y);
        geographicMapCellPosition_ := Self.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray, bottomRightGeographicMapCellPosition, velocityProperties_, layer);
        if (geographicMapCellPosition_) = (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
        end else begin
        end;
        Exit(geographicMapCellPosition_);
end;
    

// throws Exception
function TGeographicMapTopViewGameLayerBehavior2.getGeographicMapCellPositionIfNotSolidBlockOrOffMap(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer): TGeographicMapCellPosition;
var
  possibleStepGeographicMapCellPosition: TGeographicMapCellPosition;
  tiledLayer: TAllBinaryTiledLayer;
  hasSolidBlock: Boolean;
  hasOffMap: Boolean;
begin
        if (geographicMapCellPosition_) <> (TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION) then begin
            possibleStepGeographicMapCellPosition := geographicMapCellPosition_;
            tiledLayer := geographicMapInterfaceArray[0].getAllBinaryTiledLayer();
            if ((((possibleStepGeographicMapCellPosition.getColumn()) > (0)) and ((possibleStepGeographicMapCellPosition.getRow()) > (0))) and ((possibleStepGeographicMapCellPosition.getColumn()) < (tiledLayer.getColumns()))) and ((possibleStepGeographicMapCellPosition.getRow()) < (tiledLayer.getRows())) then begin
                Self.geographicMapBehavior.getCellTypeAt(geographicMapInterfaceArray, geographicMapCellTypeArray, possibleStepGeographicMapCellPosition);
                hasSolidBlock := Self.hasSolidBlock(geographicMapInterfaceArray, geographicMapCellTypeArray);
                hasOffMap := Self.isOffMap(geographicMapInterfaceArray, geographicMapCellTypeArray);
                if (hasSolidBlock) or (hasOffMap) then begin
                    Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
                    Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end else begin
                    Self.previousGeographicMapCellPosition := possibleStepGeographicMapCellPosition;
                    Exit(possibleStepGeographicMapCellPosition);
                end;
            end;
        end else begin
        end;
        Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        Exit(TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
end;
    

// throws Exception
procedure TGeographicMapTopViewGameLayerBehavior2.moveAndLand(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; geographicMapCellPosition_: TGeographicMapCellPosition; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer);
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
function TGeographicMapTopViewGameLayerBehavior2.move(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer; x: Integer; y: Integer): Boolean;
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
procedure TGeographicMapTopViewGameLayerBehavior2.left(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer);
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
procedure TGeographicMapTopViewGameLayerBehavior2.right(geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellTypeArray: TArray<TGeographicMapCellType>; velocityProperties_: TVelocityProperties; layer: TAllBinaryLayer);
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


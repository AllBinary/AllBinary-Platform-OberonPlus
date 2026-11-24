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
// package org.allbinary.media.graphics.geography.map.racetrack
unit RaceTrackData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, CellPosition;

type
  {AB:TYPES}
  TRaceTrackData = class(TObject)
  public
    tileSetImage: TImage;
    miniTileSetImage: TImage;
    cellWidth: Integer;
    cellHeight: Integer;
    miniCellWidth: Integer;
    miniCellHeight: Integer;
    mapArray: TArray<TArray<Integer>>;
    cellTypeIdToGeographicMapCellTypeArray: TArray<Integer>;
    NO_OVER_PASSES_ARRAY: TArray<TCellPosition>;
    overPassGeographicMapCellPositionArray: TArray<TCellPosition>;
    id: Integer;
    procedure InitFields;
        constructor Create(id: Integer; cellWidth: Integer; cellHeight: Integer; miniCellWidth: Integer; miniCellHeight: Integer; cellTypeIdToGeographicMapCellTypeArray: TArray<Integer>; mapArray: TArray<TArray<Integer>>);
        procedure setMapArray(mapArray: TArray<TArray<Integer>>); virtual;
        function getMapArray: TArray<TArray<Integer>>; virtual;
        procedure setCellTypeIdToGeographicMapCellTypeArray(cellTypeIdToGeographicMapCellTypeArray: TArray<Integer>); virtual;
        function getCellTypeIdToGeographicMapCellTypeArray: TArray<Integer>; virtual;
        procedure setCellWidth(cellWidth: Integer);
        function getCellWidth: Integer; virtual;
        procedure setCellHeight(cellHeight: Integer);
        function getCellHeight: Integer; virtual;
        function getOverPassGeographicMapCellPositionArray: TArray<TCellPosition>; virtual;
        procedure setOverPassGeographicMapCellPositionArray(overPassGeographicMapCellPositionArray: TArray<TCellPosition>); virtual;
        function getTileSetImage: TImage; virtual;
        procedure setTileSetImage(tileSetImage: TImage); virtual;
        function getMiniTileSetImage: TImage; virtual;
        procedure setMiniTileSetImage(miniTileSetImage: TImage); virtual;
        function getMiniCellWidth: Integer; virtual;
        procedure setMiniCellWidth(miniCellWidth: Integer); virtual;
        function getMiniCellHeight: Integer; virtual;
        procedure setMiniCellHeight(miniCellHeight: Integer); virtual;
        procedure setId(id: Integer); virtual;
        function getId: Integer; virtual;
  end;

implementation
uses
  NullImage, NullUtil;


{AB:CODE}

procedure TRaceTrackData.InitFields;
begin
  Self.tileSetImage := TNullImage.NULL_IMAGE;
  Self.miniTileSetImage := TNullImage.NULL_IMAGE;
  Self.cellWidth := 0;
  Self.cellHeight := 0;
  Self.miniCellWidth := 0;
  Self.miniCellHeight := 0;
  Self.mapArray := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
  Self.cellTypeIdToGeographicMapCellTypeArray := TNullUtil.getInstance().NULL_INT_ARRAY;
  Self.NO_OVER_PASSES_ARRAY := nil;
  Self.overPassGeographicMapCellPositionArray := Self.NO_OVER_PASSES_ARRAY;
  
end;
    

constructor TRaceTrackData.Create(id: Integer; cellWidth: Integer; cellHeight: Integer; miniCellWidth: Integer; miniCellHeight: Integer; cellTypeIdToGeographicMapCellTypeArray: TArray<Integer>; mapArray: TArray<TArray<Integer>>);
begin
    inherited Create;
    InitFields;
        Self.id := id;
        Self.cellWidth := cellWidth;
        Self.cellHeight := cellHeight;
        Self.miniCellWidth := miniCellWidth;
        Self.miniCellHeight := miniCellHeight;
        Self.mapArray := mapArray;
        Self.cellTypeIdToGeographicMapCellTypeArray := cellTypeIdToGeographicMapCellTypeArray;
end;
    

procedure TRaceTrackData.setMapArray(mapArray: TArray<TArray<Integer>>);
begin
        Self.mapArray := mapArray;
end;
    

function TRaceTrackData.getMapArray: TArray<TArray<Integer>>;
begin
        Exit(Self.mapArray);
end;
    

procedure TRaceTrackData.setCellTypeIdToGeographicMapCellTypeArray(cellTypeIdToGeographicMapCellTypeArray: TArray<Integer>);
begin
        Self.cellTypeIdToGeographicMapCellTypeArray := cellTypeIdToGeographicMapCellTypeArray;
end;
    

function TRaceTrackData.getCellTypeIdToGeographicMapCellTypeArray: TArray<Integer>;
begin
        Exit(Self.cellTypeIdToGeographicMapCellTypeArray);
end;
    

procedure TRaceTrackData.setCellWidth(cellWidth: Integer);
begin
        Self.cellWidth := cellWidth;
end;
    

function TRaceTrackData.getCellWidth: Integer;
begin
        Exit(Self.cellWidth);
end;
    

procedure TRaceTrackData.setCellHeight(cellHeight: Integer);
begin
        Self.cellHeight := cellHeight;
end;
    

function TRaceTrackData.getCellHeight: Integer;
begin
        Exit(Self.cellHeight);
end;
    

function TRaceTrackData.getOverPassGeographicMapCellPositionArray: TArray<TCellPosition>;
begin
        Exit(Self.overPassGeographicMapCellPositionArray);
end;
    

procedure TRaceTrackData.setOverPassGeographicMapCellPositionArray(overPassGeographicMapCellPositionArray: TArray<TCellPosition>);
begin
        Self.overPassGeographicMapCellPositionArray := overPassGeographicMapCellPositionArray;
end;
    

function TRaceTrackData.getTileSetImage: TImage;
begin
        Exit(Self.tileSetImage);
end;
    

procedure TRaceTrackData.setTileSetImage(tileSetImage: TImage);
begin
        Self.tileSetImage := tileSetImage;
end;
    

function TRaceTrackData.getMiniTileSetImage: TImage;
begin
        Exit(Self.miniTileSetImage);
end;
    

procedure TRaceTrackData.setMiniTileSetImage(miniTileSetImage: TImage);
begin
        Self.miniTileSetImage := miniTileSetImage;
end;
    

function TRaceTrackData.getMiniCellWidth: Integer;
begin
        Exit(Self.miniCellWidth);
end;
    

procedure TRaceTrackData.setMiniCellWidth(miniCellWidth: Integer);
begin
        Self.miniCellWidth := miniCellWidth;
end;
    

function TRaceTrackData.getMiniCellHeight: Integer;
begin
        Exit(Self.miniCellHeight);
end;
    

procedure TRaceTrackData.setMiniCellHeight(miniCellHeight: Integer);
begin
        Self.miniCellHeight := miniCellHeight;
end;
    

procedure TRaceTrackData.setId(id: Integer);
begin
        Self.id := id;
end;
    

function TRaceTrackData.getId: Integer;
begin
        Exit(Self.id);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


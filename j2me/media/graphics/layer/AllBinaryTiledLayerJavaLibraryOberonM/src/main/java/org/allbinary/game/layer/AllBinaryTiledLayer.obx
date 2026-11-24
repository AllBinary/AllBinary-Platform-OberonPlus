{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit AllBinaryTiledLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, PaintableInterface, ABLayer, NamedInterface;

type
  {AB:TYPES}
  TAllBinaryTiledLayer = class(TABLayer, INamedInterface, IPaintableInterface)
  public
    cellWidth: Integer;
    cellHeight: Integer;
    halfWidth: Integer;
    halfHeight: Integer;
    halfCellWidth: Integer;
    halfCellHeight: Integer;
    dataId: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(dataId: Integer; width: Integer; height: Integer; cellWidth: Integer; cellHeight: Integer);
        procedure setCells(mapTwoDArray: TArray<TArray<Integer>>); virtual;
        procedure updateCells(mapTwoDArray: TArray<TArray<Integer>>; fromTileId: Integer; toTileId: Integer); virtual;
        function getName: string; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getX2: Integer; virtual;
        function getY2: Integer; virtual;
        function getZ2: Integer; virtual;
        function getCellWidth: Integer; virtual;
        function getCellHeight: Integer; virtual;
        function getCell(col: Integer; row: Integer): Integer; virtual;
        function getColumns: Integer; virtual;
        function getRows: Integer; virtual;
        procedure setCell(col: Integer; row: Integer; tileIndex: Integer); virtual;
        function getHalfWidth: Integer; virtual;
        function getHalfHeight: Integer; virtual;
        function getDataId: Integer; virtual;
        function getHalfCellWidth: Integer; virtual;
        function getHalfCellHeight: Integer; virtual;
        function isOnTileLayer(column: Integer; row: Integer): Boolean; virtual;
        function getAnimatedTile(animationTileIndex: Integer): Integer; virtual;
  end;

implementation
uses
  StringMaker, LogUtil, CommonStrings;


{AB:CODE}

procedure TAllBinaryTiledLayer.InitFields;
begin
  
  
  
  
  
  
  
end;

function TAllBinaryTiledLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAllBinaryTiledLayer.Create(dataId: Integer; width: Integer; height: Integer; cellWidth: Integer; cellHeight: Integer);
begin
        inherited Create(0, 0);
        InitFields;
        Self.dataId := dataId;
        Self.setLayerWidth(width);
        Self.setLayerHeight(height);
        inherited setPosition(0, 0, 0);
        Self.cellWidth := cellWidth;
        Self.cellHeight := cellHeight;
        Self.halfWidth := (TJava.SignedRightShift(Self.getWidth(), 1));
        Self.halfHeight := (TJava.SignedRightShift(Self.getHeight(), 1));
        Self.halfCellWidth := (TJava.SignedRightShift(cellWidth, 1));
        Self.halfCellHeight := (TJava.SignedRightShift(cellHeight, 1));
end;
    

procedure TAllBinaryTiledLayer.setCells(mapTwoDArray: TArray<TArray<Integer>>);
var
  stringBuffer: TStringMaker;
  rows: Integer;
  columns: Integer;
  row: Integer;
  col: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Start: r: ');
        stringBuffer.appendint(System.Length(mapTwoDArray));
        stringBuffer.append(' c: ');
        stringBuffer.appendint(System.Length(mapTwoDArray[0]));
        stringBuffer.append(' rows: ');
        stringBuffer.appendint(Self.getRows());
        stringBuffer.append(' columns: ');
        stringBuffer.appendint(Self.getColumns());
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'setCells');
        rows := Self.getRows();
        columns := Self.getColumns();
        for col := 0 to columns - 1 do begin
            for row := 0 to rows - 1 do begin
                Self.setCell(col, row, mapTwoDArray[row][col]);
            end;
        end;
end;
    

procedure TAllBinaryTiledLayer.updateCells(mapTwoDArray: TArray<TArray<Integer>>; fromTileId: Integer; toTileId: Integer);
var
  rows: Integer;
  columns: Integer;
  row: Integer;
  col: Integer;
begin
        rows := Self.getRows();
        columns := Self.getColumns();
        for col := 0 to columns - 1 do begin
            for row := 0 to rows - 1 do begin
                if (fromTileId) = (mapTwoDArray[row][col]) then begin
                    mapTwoDArray[row][col] := toTileId;
                    Self.setCell(col, row, mapTwoDArray[row][col]);
                end;
            end;
        end;
end;
    

function TAllBinaryTiledLayer.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

procedure TAllBinaryTiledLayer.paint(graphics_: TGraphics);
begin
end;
    

procedure TAllBinaryTiledLayer.paintThreed(graphics_: TGraphics);
begin
end;
    

function TAllBinaryTiledLayer.getX2: Integer;
begin
        Exit((Self.x) + (Self.getWidth()));
end;
    

function TAllBinaryTiledLayer.getY2: Integer;
begin
        Exit((Self.y) + (Self.getHeight()));
end;
    

function TAllBinaryTiledLayer.getZ2: Integer;
begin
        Exit(Integer(Trunc(((Self.z) + (Self.getDepth())))));
end;
    

function TAllBinaryTiledLayer.getCellWidth: Integer;
begin
        Exit(Self.cellWidth);
end;
    

function TAllBinaryTiledLayer.getCellHeight: Integer;
begin
        Exit(Self.cellHeight);
end;
    

function TAllBinaryTiledLayer.getCell(col: Integer; row: Integer): Integer;
begin
        Exit(-1);
end;
    

function TAllBinaryTiledLayer.getColumns: Integer;
begin
        Exit(-1);
end;
    

function TAllBinaryTiledLayer.getRows: Integer;
begin
        Exit(-1);
end;
    

procedure TAllBinaryTiledLayer.setCell(col: Integer; row: Integer; tileIndex: Integer);
begin
end;
    

function TAllBinaryTiledLayer.getHalfWidth: Integer;
begin
        Exit(Self.halfWidth);
end;
    

function TAllBinaryTiledLayer.getHalfHeight: Integer;
begin
        Exit(Self.halfHeight);
end;
    

function TAllBinaryTiledLayer.getDataId: Integer;
begin
        Exit(Self.dataId);
end;
    

function TAllBinaryTiledLayer.getHalfCellWidth: Integer;
begin
        Exit(Self.halfCellWidth);
end;
    

function TAllBinaryTiledLayer.getHalfCellHeight: Integer;
begin
        Exit(Self.halfCellHeight);
end;
    

function TAllBinaryTiledLayer.isOnTileLayer(column: Integer; row: Integer): Boolean;
begin
        if ((((Self.getColumns()) > (column)) and ((Self.getRows()) > (row))) and ((row) >= (0))) and ((column) >= (0)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TAllBinaryTiledLayer.getAnimatedTile(animationTileIndex: Integer): Integer;
begin
        Exit(animationTileIndex);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


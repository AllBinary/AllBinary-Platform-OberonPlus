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
unit AllBinaryJ2METiledLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, Graphics, TiledLayer, AllBinaryTiledLayer;

type
  {AB:TYPES}
  TAllBinaryJ2METiledLayer = class(TAllBinaryTiledLayer)
  public
    tiledLayerP: TTiledLayer;
    debugColor: Integer;
    font2: TFont;
    procedure InitFields;
        constructor Create(dataId: Integer; tiledLayer_: TTiledLayer; mapTwoDArray: TArray<TArray<Integer>>; debugColor: Integer);
        procedure paint(graphics_: TGraphics); override;
        procedure paintDebug(graphics_: TGraphics); virtual;
        procedure moveDXY(dx: Integer; dy: Integer); override;
        procedure setPosition(x: Integer; y: Integer; z: Integer); override;
        function getTiledLayer: TTiledLayer; virtual;
        function getCellWidth: Integer; override;
        function getCellHeight: Integer; override;
        function getCell(col: Integer; row: Integer): Integer; override;
        function getColumns: Integer; override;
        function getRows: Integer; override;
        procedure setCell(col: Integer; row: Integer; index: Integer); override;
        function getAnimatedTile(animationTileIndex: Integer): Integer; override;
  end;

implementation
uses
  CommonSeps, StringMaker;


{AB:CODE}

procedure TAllBinaryJ2METiledLayer.InitFields;
begin
  
  
  Self.font2 := TFont.getFont(TFont.FACE_SYSTEM, TFont.STYLE_PLAIN, 4);
end;
    

constructor TAllBinaryJ2METiledLayer.Create(dataId: Integer; tiledLayer_: TTiledLayer; mapTwoDArray: TArray<TArray<Integer>>; debugColor: Integer);
begin
        inherited Create(dataId, tiledLayer_.getWidth(), tiledLayer_.getHeight(), tiledLayer_.getCellWidth(), tiledLayer_.getCellHeight());
        InitFields;
        Self.tiledLayerP := tiledLayer_;
        Self.debugColor := debugColor;
        Self.setCells(mapTwoDArray);
end;
    

procedure TAllBinaryJ2METiledLayer.paint(graphics_: TGraphics);
begin
        Self.tiledLayerP.paint(graphics_);
end;
    

procedure TAllBinaryJ2METiledLayer.paintDebug(graphics_: TGraphics);
var
  font_: TFont;
  x: Integer;
  y: Integer;
  firstColumn: Integer;
  firstRow: Integer;
  totalColumns: Integer;
  totalRows: Integer;
  x0: Integer;
  tile: Integer;
  tileHeight: Integer;
  tileWidth: Integer;
  commonSeps_: TCommonSeps;
  stringMaker_: TStringMaker;
  columnIndex: Integer;
  rowIndex: Integer;
begin
        font_ := graphics_.getFont();
        graphics_.setFont(Self.font2);
        graphics_.setColor(Self.debugColor);
        x := Self.tiledLayerP.getX();
        y := Self.tiledLayerP.getY();
        firstColumn := 0;
        firstRow := 0;
        totalColumns := Self.tiledLayerP.getColumns();
        totalRows := Self.tiledLayerP.getRows();
        x0 := x;
        tile := 0;
        tileHeight := Self.tiledLayerP.getCellHeight();
        tileWidth := Self.tiledLayerP.getCellWidth();
        commonSeps_ := TCommonSeps.getInstance();
        stringMaker_ := TStringMaker.Create();
        rowIndex := firstRow;
        while (rowIndex) < (totalRows) do begin
            { Continue skips the update below }
            x := x0;
            columnIndex := firstColumn;
            while (columnIndex) < (totalColumns) do begin
                { Continue skips the update below }
                tile := Self.tiledLayerP.getCell(columnIndex, rowIndex);
                if (tile) < (0) then begin
                    tile := Self.tiledLayerP.getAnimatedTile(tile);
                end;
                if (tile) = (0) then begin
                    Continue;
                end;
                Dec(tile);
                stringMaker_.delete_(0, stringMaker_.length());
                graphics_.drawString(stringMaker_.appendint(columnIndex).append(commonSeps_.COMMA).appendint(rowIndex).append(commonSeps_.COLON).appendint(tile).toString(), (x) + (5), (y) + (10), 0);
                Inc(columnIndex);
                x := (x) + (tileWidth);
            end;
            Inc(rowIndex);
            y := (y) + (tileHeight);
        end;
        graphics_.setFont(font_);
end;
    

procedure TAllBinaryJ2METiledLayer.moveDXY(dx: Integer; dy: Integer);
begin
        Self.tiledLayerP.move(dx, dy);
        inherited moveDXY(-dx, -dy);
end;
    

procedure TAllBinaryJ2METiledLayer.setPosition(x: Integer; y: Integer; z: Integer);
begin
        Self.tiledLayerP.setPosition(x, y);
        inherited setPosition(-x, -y, z);
end;
    

function TAllBinaryJ2METiledLayer.getTiledLayer: TTiledLayer;
begin
        Exit(Self.tiledLayerP);
end;
    

function TAllBinaryJ2METiledLayer.getCellWidth: Integer;
begin
        Exit(Self.tiledLayerP.getCellWidth());
end;
    

function TAllBinaryJ2METiledLayer.getCellHeight: Integer;
begin
        Exit(Self.tiledLayerP.getCellHeight());
end;
    

function TAllBinaryJ2METiledLayer.getCell(col: Integer; row: Integer): Integer;
begin
        Exit(Self.tiledLayerP.getCell(col, row));
end;
    

function TAllBinaryJ2METiledLayer.getColumns: Integer;
begin
        Exit(Self.tiledLayerP.getColumns());
end;
    

function TAllBinaryJ2METiledLayer.getRows: Integer;
begin
        Exit(Self.tiledLayerP.getRows());
end;
    

procedure TAllBinaryJ2METiledLayer.setCell(col: Integer; row: Integer; index: Integer);
begin
        Self.tiledLayerP.setCell(col, row, index);
end;
    

function TAllBinaryJ2METiledLayer.getAnimatedTile(animationTileIndex: Integer): Integer;
begin
        Exit(Self.tiledLayerP.getAnimatedTile(animationTileIndex));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit TiledLayerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer;

type
  {AB:TYPES}
  TTiledLayerUtil = class(TObject)
  public
    class var instance: TTiledLayerUtil;
    constructor Create;
        class function getInstance: TTiledLayerUtil; static;
        function keepOnBorderdMapX(terrainTiledLayer: TAllBinaryTiledLayer; x: Integer; width: Integer; mapBorderBufferWidth: Integer): Integer; virtual;
        function keepOnBorderdMapY(terrainTiledLayer: TAllBinaryTiledLayer; y: Integer; height: Integer; mapBorderBufferHeight: Integer): Integer; virtual;
        function keepOnMapX(terrainTiledLayer: TAllBinaryTiledLayer; x: Integer; width: Integer): Integer; virtual;
        function keepOnMapY(terrainTiledLayer: TAllBinaryTiledLayer; y: Integer; height: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

constructor TTiledLayerUtil.Create;
begin
  inherited Create;
end;
    

class function TTiledLayerUtil.getInstance: TTiledLayerUtil;
begin
        Exit(TTiledLayerUtil.instance);
end;
    

function TTiledLayerUtil.keepOnBorderdMapX(terrainTiledLayer: TAllBinaryTiledLayer; x: Integer; width: Integer; mapBorderBufferWidth: Integer): Integer;
var
  newX: Integer;
  maxRight: Integer;
begin
        newX := x;
        maxRight := ((terrainTiledLayer.getWidth()) - (width)) - (mapBorderBufferWidth);
        if ((x) + (width)) > (maxRight) then begin
            newX := maxRight;
        end;
        if (x) < (mapBorderBufferWidth) then begin
            newX := mapBorderBufferWidth;
        end;
        Exit(newX);
end;
    

function TTiledLayerUtil.keepOnBorderdMapY(terrainTiledLayer: TAllBinaryTiledLayer; y: Integer; height: Integer; mapBorderBufferHeight: Integer): Integer;
var
  newY: Integer;
  maxBottom: Integer;
begin
        newY := y;
        maxBottom := ((terrainTiledLayer.getHeight()) - (height)) - (mapBorderBufferHeight);
        if ((y) + (height)) > (maxBottom) then begin
            newY := maxBottom;
        end;
        if (y) < (mapBorderBufferHeight) then begin
            newY := mapBorderBufferHeight;
        end;
        Exit(newY);
end;
    

function TTiledLayerUtil.keepOnMapX(terrainTiledLayer: TAllBinaryTiledLayer; x: Integer; width: Integer): Integer;
var
  newX: Integer;
  maxRight: Integer;
begin
        newX := x;
        maxRight := (terrainTiledLayer.getWidth()) - (width);
        if (x) >= (maxRight) then begin
            newX := maxRight;
        end;
        if (x) < (0) then begin
            newX := 0;
        end;
        Exit(newX);
end;
    

function TTiledLayerUtil.keepOnMapY(terrainTiledLayer: TAllBinaryTiledLayer; y: Integer; height: Integer): Integer;
var
  newY: Integer;
  maxBottom: Integer;
begin
        newY := y;
        maxBottom := (terrainTiledLayer.getHeight()) - (height);
        if (y) >= (maxBottom) then begin
            newY := maxBottom;
        end;
        if (y) < (0) then begin
            newY := 0;
        end;
        Exit(newY);
end;

initialization
  {AB:INITIALIZATION}
  TTiledLayerUtil.instance := TTiledLayerUtil.Create();
  {AB:END}

end.


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
unit TileLayerItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Screen, ABCustomItem, ABCustomItemInterface, BasicColor, AllBinaryTiledLayer;

type
  {AB:TYPES}
  TTileLayerItem = class(TABCustomItem, IABCustomItemInterface)
  public
    tiledLayer: TAllBinaryTiledLayer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; tiledLayer: TAllBinaryTiledLayer; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure setOwner(owner: TScreen); virtual;
        function getMinimumWidth: Integer; virtual;
        function getMinimumHeight: Integer; virtual;
        function getMinContentHeight: Integer; virtual;
        function getMinContentWidth: Integer; virtual;
        function getPrefContentHeight(width: Integer): Integer; virtual;
        function getPrefContentWidth(height: Integer): Integer; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintUnselected(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        function getLabel: string; virtual;
  end;

implementation

{AB:CODE}

procedure TTileLayerItem.InitFields;
begin
  
end;

function TTileLayerItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTileLayerItem.Create(label_: string; tiledLayer: TAllBinaryTiledLayer; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(label_, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.tiledLayer := tiledLayer;
end;
    

procedure TTileLayerItem.setOwner(owner: TScreen);
begin
end;
    

function TTileLayerItem.getMinimumWidth: Integer;
begin
        Exit(Self.tiledLayer.getWidth());
end;
    

function TTileLayerItem.getMinimumHeight: Integer;
begin
        Exit(Self.tiledLayer.getHeight());
end;
    

function TTileLayerItem.getMinContentHeight: Integer;
begin
        Exit(Self.tiledLayer.getHeight());
end;
    

function TTileLayerItem.getMinContentWidth: Integer;
begin
        Exit(Self.tiledLayer.getWidth());
end;
    

function TTileLayerItem.getPrefContentHeight(width: Integer): Integer;
begin
        Exit(Self.tiledLayer.getHeight());
end;
    

function TTileLayerItem.getPrefContentWidth(height: Integer): Integer;
begin
        Exit(Self.tiledLayer.getWidth());
end;
    

procedure TTileLayerItem.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.tiledLayer.setPosition(x, y, Self.tiledLayer.getZP());
        Self.tiledLayer.paint(graphics_);
end;
    

procedure TTileLayerItem.paintUnselected(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;
    

function TTileLayerItem.getLabel: string;
begin
        Exit(inherited getLabel());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


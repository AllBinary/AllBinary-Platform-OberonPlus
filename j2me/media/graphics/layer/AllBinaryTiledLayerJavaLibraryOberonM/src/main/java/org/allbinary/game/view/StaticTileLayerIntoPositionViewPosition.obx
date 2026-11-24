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
// package org.allbinary.game.view
unit StaticTileLayerIntoPositionViewPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, AllBinaryLayer, ABLayer, ViewPosition;

type
  {AB:TYPES}
  TStaticTileLayerIntoPositionViewPosition = class(TViewPosition)
  public
    class var tiledLayer: TABLayer;
    class var layer: TAllBinaryLayer;
        constructor Create;
        function getX: Integer; override;
        function getY: Integer; override;
        function getZ: Integer; override;
        class procedure setTiledLayer(tiledLayer: TAllBinaryTiledLayer); static;
  end;

implementation
uses
  NullLayer;


{AB:CODE}
    

constructor TStaticTileLayerIntoPositionViewPosition.Create;
begin
        inherited Create(0, 0, 0);
end;
    

function TStaticTileLayerIntoPositionViewPosition.getX: Integer;
begin
        Exit((inherited getX()) - (TStaticTileLayerIntoPositionViewPosition.tiledLayer.getXP()));
end;
    

function TStaticTileLayerIntoPositionViewPosition.getY: Integer;
begin
        Exit((inherited getY()) - (TStaticTileLayerIntoPositionViewPosition.tiledLayer.getYP()));
end;
    

function TStaticTileLayerIntoPositionViewPosition.getZ: Integer;
begin
        Exit((inherited getZ()) - (TStaticTileLayerIntoPositionViewPosition.tiledLayer.getZP()));
end;
    

class procedure TStaticTileLayerIntoPositionViewPosition.setTiledLayer(tiledLayer: TAllBinaryTiledLayer);
begin
        TStaticTileLayerIntoPositionViewPosition.tiledLayer := tiledLayer;
end;

initialization
  {AB:INITIALIZATION}
  TStaticTileLayerIntoPositionViewPosition.tiledLayer := TNullLayer.getInstance();
  TStaticTileLayerIntoPositionViewPosition.layer := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
  {AB:END}

end.


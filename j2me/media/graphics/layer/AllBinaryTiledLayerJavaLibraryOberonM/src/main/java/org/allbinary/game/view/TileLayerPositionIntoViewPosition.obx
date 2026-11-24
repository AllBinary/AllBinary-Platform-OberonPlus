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
unit TileLayerPositionIntoViewPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, ABLayer, ViewPosition;

type
  {AB:TYPES}
  TTileLayerPositionIntoViewPosition = class(TViewPosition)
  public
    tiledLayer: TABLayer;
    procedure InitFields;
        constructor Create;
        function getX: Integer; override;
        function getY: Integer; override;
        function getZ: Integer; override;
        procedure setTiledLayer(tiledLayer: TAllBinaryTiledLayer); virtual;
  end;

implementation
uses
  NullLayer;


{AB:CODE}

procedure TTileLayerPositionIntoViewPosition.InitFields;
begin
  Self.tiledLayer := TNullLayer.getInstance();
end;
    

constructor TTileLayerPositionIntoViewPosition.Create;
begin
        inherited Create(0, 0, 0);
        InitFields;
end;
    

function TTileLayerPositionIntoViewPosition.getX: Integer;
begin
        Exit((inherited getX()) - (Self.tiledLayer.getXP()));
end;
    

function TTileLayerPositionIntoViewPosition.getY: Integer;
begin
        Exit((inherited getY()) - (Self.tiledLayer.getYP()));
end;
    

function TTileLayerPositionIntoViewPosition.getZ: Integer;
begin
        Exit((inherited getZ()) - (Self.tiledLayer.getZP()));
end;
    

procedure TTileLayerPositionIntoViewPosition.setTiledLayer(tiledLayer: TAllBinaryTiledLayer);
begin
        Self.tiledLayer := tiledLayer;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


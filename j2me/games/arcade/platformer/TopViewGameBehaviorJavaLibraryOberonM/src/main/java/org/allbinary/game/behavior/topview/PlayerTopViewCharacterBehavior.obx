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
unit PlayerTopViewCharacterBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Direction, AllBinaryTiledLayer, AllBinaryLayer, LogUtil, BasicGeographicMap, GeographicMapCellPosition, TopViewCharacterBehavior;

type
  {AB:TYPES}
  TPlayerTopViewCharacterBehavior = class(TTopViewCharacterBehavior)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        procedure terrainEvent(layer: TAllBinaryLayer; direction_: TDirection; x: Integer; y: Integer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellPosition_: TGeographicMapCellPosition); override;
        procedure terrainMove(layer: TAllBinaryLayer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer); override;
        procedure moveIfOnScreen(layer: TAllBinaryLayer; ax: Integer; ay: Integer);
        function isTiledLayerMoveable(terrainTiledLayer: TAllBinaryTiledLayer; x: Integer; y: Integer): Boolean;
  end;

implementation
uses
  TrackingEventCircularStaticPool, TrackingEventHandler, DisplayInfoSingleton, BasicGeographicMapUtil;


{AB:CODE}

procedure TPlayerTopViewCharacterBehavior.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TPlayerTopViewCharacterBehavior.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TPlayerTopViewCharacterBehavior.terrainEvent(layer: TAllBinaryLayer; direction_: TDirection; x: Integer; y: Integer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; geographicMapCellPosition_: TGeographicMapCellPosition);
begin
        TTrackingEventHandler.getInstance().fireEvent(TTrackingEventCircularStaticPool.getInstance().getNextInstance(layer));
end;
    

procedure TPlayerTopViewCharacterBehavior.terrainMove(layer: TAllBinaryLayer; geographicMapInterfaceArray: TArray<TBasicGeographicMap>; x: Integer; y: Integer);
var
  basicGeographicMapUtil_: TBasicGeographicMapUtil;
begin
        basicGeographicMapUtil_ := TBasicGeographicMapUtil.getInstance();
        basicGeographicMapUtil_.setPosition(geographicMapInterfaceArray, x, y);
end;
    

procedure TPlayerTopViewCharacterBehavior.moveIfOnScreen(layer: TAllBinaryLayer; ax: Integer; ay: Integer);
begin
end;
    

function TPlayerTopViewCharacterBehavior.isTiledLayerMoveable(terrainTiledLayer: TAllBinaryTiledLayer; x: Integer; y: Integer): Boolean;
begin
        Exit((((((terrainTiledLayer.getXP()) + (TDisplayInfoSingleton.getInstance().getLastWidth())) < (terrainTiledLayer.getWidth())) or ((x) < (0)))) and ((((terrainTiledLayer.getXP()) > (0)) or ((x) > (0)))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


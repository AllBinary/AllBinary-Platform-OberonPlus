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
// package org.allbinary.game.layer
unit AllBinaryTiledLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayerFactoryInterface, RaceTrackData, RaceTrackInfo, AllBinaryTiledLayer;

type
  {AB:TYPES}
  TAllBinaryTiledLayerFactory = class(TInterfacedObject, IAllBinaryTiledLayerFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData): TAllBinaryTiledLayer; virtual;
        function getMiniInstance(raceTrackData_: TRaceTrackData): TAllBinaryTiledLayer; virtual;
  end;

implementation
uses
  AllBinaryJ2METiledLayer, TiledLayer, BasicColorFactory, SmallIntegerSingletonFactory, TiledLayerFactory;


{AB:CODE}

function TAllBinaryTiledLayerFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TAllBinaryTiledLayerFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TAllBinaryTiledLayerFactory.getInstance(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData): TAllBinaryTiledLayer;
var
  allbinaryTiledLayer_: TAllBinaryTiledLayer;
  tiledLayer_: TTiledLayer;
begin
        
        tiledLayer_ := TTiledLayerFactory.Create().getInstance(raceTrackData_);
        allbinaryTiledLayer_ := TAllBinaryJ2METiledLayer.Create(raceTrackData_.getId(), tiledLayer_, raceTrackData_.getMapArray(), TBasicColorFactory.getInstance().RED.intValue());
        allbinaryTiledLayer_.setCells(raceTrackData_.getMapArray());
        Exit(allbinaryTiledLayer_);
end;
    

// throws Exception
function TAllBinaryTiledLayerFactory.getMiniInstance(raceTrackData_: TRaceTrackData): TAllBinaryTiledLayer;
var
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  tiledLayer_: TTiledLayer;
  allbinaryTiledLayer_: TAllBinaryTiledLayer;
begin
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        tiledLayer_ := TTiledLayerFactory.Create().getMiniInstance(raceTrackData_);
        allbinaryTiledLayer_ := TAllBinaryJ2METiledLayer.Create(smallIntegerSingletonFactory_.getAt(((raceTrackData_.getId().intValue()) + (100)) + (1)), tiledLayer_, raceTrackData_.getMapArray(), TBasicColorFactory.getInstance().RED.intValue());
        allbinaryTiledLayer_.setCells(raceTrackData_.getMapArray());
        Exit(allbinaryTiledLayer_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


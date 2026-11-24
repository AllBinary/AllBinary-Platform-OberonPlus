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
unit TiledLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TiledLayer, RaceTrackData;

type
  {AB:TYPES}
  TTiledLayerFactory = class(TObject)
  public
    constructor Create;
        function getInstance(raceTrackData_: TRaceTrackData): TTiledLayer; virtual;
        function getMiniInstance(raceTrackData_: TRaceTrackData): TTiledLayer; virtual;
  end;

implementation

{AB:CODE}

constructor TTiledLayerFactory.Create;
begin
  inherited Create;
end;
    

function TTiledLayerFactory.getInstance(raceTrackData_: TRaceTrackData): TTiledLayer;
var
  mapArray: TArray<TArray<Integer>>;
begin
        mapArray := raceTrackData_.getMapArray();
        Exit(TTiledLayer.Create(System.Length(mapArray[0]), System.Length(mapArray), raceTrackData_.getTileSetImage(), raceTrackData_.getCellWidth(), raceTrackData_.getCellHeight()));
end;
    

function TTiledLayerFactory.getMiniInstance(raceTrackData_: TRaceTrackData): TTiledLayer;
var
  mapArray: TArray<TArray<Integer>>;
begin
        mapArray := raceTrackData_.getMapArray();
        Exit(TTiledLayer.Create(System.Length(mapArray[0]), System.Length(mapArray), raceTrackData_.getMiniTileSetImage(), raceTrackData_.getMiniCellWidth(), raceTrackData_.getMiniCellHeight()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


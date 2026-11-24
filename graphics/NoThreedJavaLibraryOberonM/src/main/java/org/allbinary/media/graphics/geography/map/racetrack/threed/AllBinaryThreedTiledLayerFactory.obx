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
// package org.allbinary.media.graphics.geography.map.racetrack.threed
unit AllBinaryThreedTiledLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryTiledLayer, RaceTrackData, RaceTrackInfo;

type
  {AB:TYPES}
  TAllBinaryThreedTiledLayerFactory = class(TObject)
  public
    class var instance: TAllBinaryThreedTiledLayerFactory;
    constructor Create;
        class function getInstance: TAllBinaryThreedTiledLayerFactory; overload; static;
        function getInstance(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData): TAllBinaryTiledLayer; overload; virtual;
  end;

implementation

{AB:CODE}

constructor TAllBinaryThreedTiledLayerFactory.Create;
begin
  inherited Create;
end;
    

class function TAllBinaryThreedTiledLayerFactory.getInstance: TAllBinaryThreedTiledLayerFactory;
begin
        Exit(TAllBinaryThreedTiledLayerFactory.instance);
end;
    

// throws Exception
function TAllBinaryThreedTiledLayerFactory.getInstance(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData): TAllBinaryTiledLayer;
begin
        raise SysUtils.Exception.Create('No Threed');
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryThreedTiledLayerFactory.instance := TAllBinaryThreedTiledLayerFactory.Create();
  {AB:END}

end.


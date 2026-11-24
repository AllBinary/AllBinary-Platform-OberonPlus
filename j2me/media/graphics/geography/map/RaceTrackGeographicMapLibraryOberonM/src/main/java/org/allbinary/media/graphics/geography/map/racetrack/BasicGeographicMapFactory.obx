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
unit BasicGeographicMapFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellPositionFactoryInterface, GeographicMapCellTypeFactory, RaceTrackInfo, RaceTrackData, AllBinaryTiledLayerFactoryInterface;

type
  {AB:TYPES}
  TBasicGeographicMapFactory = class(TObject)
  public
    constructor Create;
        function getInstance(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData; tiledLayerFactoryInterface: IAllBinaryTiledLayerFactoryInterface; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory): TBasicGeographicMap; virtual;
  end;

implementation
uses
  BasicColorFactory, SmallIntegerSingletonFactory, GeographicMapCellPositionBaseFactory;


{AB:CODE}

constructor TBasicGeographicMapFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TBasicGeographicMapFactory.getInstance(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData; tiledLayerFactoryInterface: IAllBinaryTiledLayerFactoryInterface; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory): TBasicGeographicMap;
begin
        Exit(TBasicGeographicMap.Create(TSmallIntegerSingletonFactory.getInstance().getAt(((raceTrackInfo_.getId().intValue()) + (100)) + (1)), raceTrackInfo_.getName(), raceTrackData_.getCellTypeIdToGeographicMapCellTypeArray(), tiledLayerFactoryInterface.getMiniInstance(raceTrackData_), TBasicColorFactory.getInstance().CLEAR_COLOR, TBasicColorFactory.getInstance().CLEAR_COLOR, geographicMapCellPositionFactoryInterface_, TGeographicMapCellPositionBaseFactory.Create(), geographicMapCellTypeFactory_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


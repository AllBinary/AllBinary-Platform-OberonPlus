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
unit RaceTrackGeographicMap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellPosition, GeographicMapCellPositionBaseFactory, GeographicMapCellPositionFactoryInterface, GeographicMapCellTypeFactory, CustomMapGeneratorBase, RaceTrackInfo, RaceTrackData, AllBinaryTiledLayerFactoryInterface, CustomMapGeneratorBaseFactory, BaseRaceTrackGeographicMap;

type
  {AB:TYPES}
  TRaceTrackGeographicMap = class(TBaseRaceTrackGeographicMap)
  public
    customMapGenerator: TCustomMapGeneratorBase;
    procedure InitFields;
        constructor Create(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData; tiledLayerFactoryInterface: IAllBinaryTiledLayerFactoryInterface; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory_: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory; customMapGeneratorBaseFactory_: TCustomMapGeneratorBaseFactory);
        function getCustomMapGenerator: TCustomMapGeneratorBase; virtual;
        function isValid(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean; virtual;
  end;

implementation
uses
  BasicGeographicMapFactory, StringMaker;


{AB:CODE}

procedure TRaceTrackGeographicMap.InitFields;
begin
  
end;
    

constructor TRaceTrackGeographicMap.Create(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData; tiledLayerFactoryInterface: IAllBinaryTiledLayerFactoryInterface; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory_: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory; customMapGeneratorBaseFactory_: TCustomMapGeneratorBaseFactory);
begin
        inherited Create(raceTrackInfo_, raceTrackData_, tiledLayerFactoryInterface.getInstance(raceTrackInfo_, raceTrackData_), TBasicGeographicMapFactory.Create().getInstance(raceTrackInfo_, raceTrackData_, tiledLayerFactoryInterface, geographicMapCellPositionFactoryInterface_, geographicMapCellTypeFactory_), geographicMapCellPositionFactoryInterface_, geographicMapCellPositionBaseFactory_, geographicMapCellTypeFactory_);
        InitFields;
        Self.customMapGenerator := customMapGeneratorBaseFactory_.create_(Self);
end;
    

function TRaceTrackGeographicMap.getCustomMapGenerator: TCustomMapGeneratorBase;
begin
        Exit(Self.customMapGenerator);
end;
    

// throws Exception
function TRaceTrackGeographicMap.isValid(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
var
  customMapArray: TArray<TArray<Integer>>;
  stringBuffer: TStringMaker;
begin
        customMapArray := Self.customMapGenerator.getCustomMapArray();
        if (geographicMapCellPosition_.getColumn()) >= (System.Length(customMapArray[0])) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Column: ');
            stringBuffer.appendint(Integer(Trunc(geographicMapCellPosition_.getColumn())));
            stringBuffer.append(' not in: ');
            stringBuffer.appendint(System.Length(customMapArray[0]));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
            if (geographicMapCellPosition_.getColumn()) = (System.Length(customMapArray[0])) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        end else if (geographicMapCellPosition_.getRow()) > (System.Length(customMapArray)) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Row: ');
            stringBuffer.appendint(Integer(Trunc(geographicMapCellPosition_.getRow())));
            stringBuffer.append(' not in: ');
            stringBuffer.appendint(System.Length(customMapArray));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.IS_VALID);
            if (geographicMapCellPosition_.getRow()) = (System.Length(customMapArray)) then begin
                Exit(True);
            end else begin
                Exit(False);
            end;
        end;
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


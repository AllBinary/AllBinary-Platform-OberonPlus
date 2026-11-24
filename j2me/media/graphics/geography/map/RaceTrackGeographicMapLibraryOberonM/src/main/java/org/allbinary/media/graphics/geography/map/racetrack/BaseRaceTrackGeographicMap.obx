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
unit BaseRaceTrackGeographicMap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AllBinaryTiledLayer, BasicGeographicMap, GeographicMapCellPositionBaseFactory, GeographicMapCellPositionFactoryInterface, GeographicMapCellTypeFactory, BasicColor, GeographicMapCellPosition, GeographicMapCellType, RaceTrackInfo, RaceTrackData, RaceTrackGeographicMapInterface;

type
  {AB:TYPES}
  TBaseRaceTrackGeographicMap = class(TBasicGeographicMap, IRaceTrackGeographicMapInterface)
  public
    logUtil: TLogUtil;
    raceTrackInfo: TRaceTrackInfo;
    raceTrackData: TRaceTrackData;
    miniGeographicMap: TBasicGeographicMap;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData; tiledLayer: TAllBinaryTiledLayer; miniGeographicMap: TBasicGeographicMap; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory_: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory);
        function getRaceTrackInfo: TRaceTrackInfo; virtual;
        procedure setRaceTrackInfo(aRaceTrackInfo: TRaceTrackInfo); virtual;
        procedure setMiniBasicGeographicMap(miniBasicGeographicMap: TBasicGeographicMap); virtual;
        function getMiniBasicGeographicMap: TBasicGeographicMap; virtual;
        function getRaceTrackData: TRaceTrackData; virtual;
        procedure setRaceTrackData(raceTrackData_: TRaceTrackData); virtual;
        function getId: Integer; virtual;
        function getName: string; virtual;
        procedure reset; virtual;
        function getAllBinaryTiledLayer: TAllBinaryTiledLayer; virtual;
        function getCellTypeFromMapCellTypeInt(cellTypeId: Integer): Integer; virtual;
        function getCellTypeAt(cellPosition: TGeographicMapCellPosition): TGeographicMapCellType; virtual;
        function getForegroundBasicColor: TBasicColor; virtual;
        function getBackgroundBasicColor: TBasicColor; virtual;
  end;

implementation
uses
  CommonStrings, StringMaker;


{AB:CODE}

procedure TBaseRaceTrackGeographicMap.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;

function TBaseRaceTrackGeographicMap.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBaseRaceTrackGeographicMap.Create(raceTrackInfo_: TRaceTrackInfo; raceTrackData_: TRaceTrackData; tiledLayer: TAllBinaryTiledLayer; miniGeographicMap: TBasicGeographicMap; geographicMapCellPositionFactoryInterface_: IGeographicMapCellPositionFactoryInterface; geographicMapCellPositionBaseFactory_: TGeographicMapCellPositionBaseFactory; geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory);
var
  miniTiledLayer: TAllBinaryTiledLayer;
  error: string;
  commonStrings_: TCommonStrings;
begin
        inherited Create(raceTrackInfo_.getId(), raceTrackInfo_.getName(), raceTrackData_.getCellTypeIdToGeographicMapCellTypeArray(), tiledLayer, raceTrackInfo_.getForegroundBasicColor(), raceTrackInfo_.getBackgroundBasicColor(), geographicMapCellPositionFactoryInterface_, geographicMapCellPositionBaseFactory_, geographicMapCellTypeFactory_);
        InitFields;
        Self.raceTrackInfo := raceTrackInfo_;
        Self.raceTrackData := raceTrackData_;
        Self.miniGeographicMap := miniGeographicMap;
        miniTiledLayer := Self.miniGeographicMap.getAllBinaryTiledLayer();
        if (miniTiledLayer.getColumns()) <> (Self.getGeographicMapCellPositionFactory().getColumns()) then begin
            error := TStringMaker.Create().append('RaceTrackMap has incorrect Mini Map columns: ').appendint(Integer(Trunc(miniTiledLayer.getColumns()))).append(' != ').appendint(Integer(Trunc(Self.getGeographicMapCellPositionFactory().getColumns()))).toString();
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
            raise SysUtils.Exception.Create(error);
        end;
        if (miniTiledLayer.getRows()) <> (Self.getGeographicMapCellPositionFactory().getRows()) then begin
            error := 'RaceTrackMap has incorrect Mini Map rows';
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
            raise SysUtils.Exception.Create(error);
        end;
end;
    

function TBaseRaceTrackGeographicMap.getRaceTrackInfo: TRaceTrackInfo;
begin
        Exit(Self.raceTrackInfo);
end;
    

procedure TBaseRaceTrackGeographicMap.setRaceTrackInfo(aRaceTrackInfo: TRaceTrackInfo);
begin
        Self.raceTrackInfo := aRaceTrackInfo;
end;
    

procedure TBaseRaceTrackGeographicMap.setMiniBasicGeographicMap(miniBasicGeographicMap: TBasicGeographicMap);
begin
        Self.miniGeographicMap := miniBasicGeographicMap;
end;
    

function TBaseRaceTrackGeographicMap.getMiniBasicGeographicMap: TBasicGeographicMap;
begin
        Exit(Self.miniGeographicMap);
end;
    

function TBaseRaceTrackGeographicMap.getRaceTrackData: TRaceTrackData;
begin
        Exit(Self.raceTrackData);
end;
    

procedure TBaseRaceTrackGeographicMap.setRaceTrackData(raceTrackData_: TRaceTrackData);
begin
        Self.raceTrackData := raceTrackData_;
end;
    

function TBaseRaceTrackGeographicMap.getId: Integer;
begin
        Exit(inherited getId());
end;
    

function TBaseRaceTrackGeographicMap.getName: string;
begin
        Exit(inherited getName());
end;
    

procedure TBaseRaceTrackGeographicMap.reset;
begin
        inherited reset();
end;
    

function TBaseRaceTrackGeographicMap.getAllBinaryTiledLayer: TAllBinaryTiledLayer;
begin
        Exit(inherited getAllBinaryTiledLayer());
end;
    

function TBaseRaceTrackGeographicMap.getCellTypeFromMapCellTypeInt(cellTypeId: Integer): Integer;
begin
        Exit(inherited getCellTypeFromMapCellTypeInt(cellTypeId));
end;
    

// throws Exception
function TBaseRaceTrackGeographicMap.getCellTypeAt(cellPosition: TGeographicMapCellPosition): TGeographicMapCellType;
begin
        Exit(inherited getCellTypeAt(cellPosition));
end;
    

function TBaseRaceTrackGeographicMap.getForegroundBasicColor: TBasicColor;
begin
        Exit(inherited getForegroundBasicColor());
end;
    

function TBaseRaceTrackGeographicMap.getBackgroundBasicColor: TBasicColor;
begin
        Exit(inherited getBackgroundBasicColor());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


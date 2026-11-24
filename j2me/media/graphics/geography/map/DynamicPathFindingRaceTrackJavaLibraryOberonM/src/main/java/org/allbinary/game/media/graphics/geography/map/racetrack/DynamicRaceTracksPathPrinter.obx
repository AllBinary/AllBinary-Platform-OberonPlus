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
// package org.allbinary.game.media.graphics.geography.map.racetrack
unit DynamicRaceTracksPathPrinter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, RaceTrackGeographicMapInterfaceFactoryInterface, RaceTracksPathPrinter, PathFindingInfo;

type
  {AB:TYPES}
  TDynamicRaceTracksPathPrinter = class(TRaceTracksPathPrinter)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        procedure printAllPaths(raceTrackGeographicMapInterfaceFactoryInterface_: IRaceTrackGeographicMapInterfaceFactoryInterface; pathFindingInfo_: TPathFindingInfo; size: Integer); virtual;
  end;

implementation
uses
  BasicArrayList, CommonStrings, SmallIntegerSingletonFactory, BasicGeographicMap, RaceTrackRoadsGeographicMapCellHistoryFactory, PathGenerator;


{AB:CODE}

procedure TDynamicRaceTracksPathPrinter.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TDynamicRaceTracksPathPrinter.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TDynamicRaceTracksPathPrinter.printAllPaths(raceTrackGeographicMapInterfaceFactoryInterface_: IRaceTrackGeographicMapInterfaceFactoryInterface; pathFindingInfo_: TPathFindingInfo; size: Integer);
var
  geographicMapInterface: TBasicGeographicMap;
  list: TBasicArrayList;
  index: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            for index := 0 to size - 1 do begin
                geographicMapInterface := raceTrackGeographicMapInterfaceFactoryInterface_.getTrackInstance(TSmallIntegerSingletonFactory.getInstance().getAt(index));
                list := TPathGenerator.getInstance().createList(geographicMapInterface, TRaceTrackRoadsGeographicMapCellHistoryFactory.getInstance(), pathFindingInfo_, 10);
                WriteLn('Track ' + IntToStr(index));
                Self.printPaths(list);
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.PROCESS, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


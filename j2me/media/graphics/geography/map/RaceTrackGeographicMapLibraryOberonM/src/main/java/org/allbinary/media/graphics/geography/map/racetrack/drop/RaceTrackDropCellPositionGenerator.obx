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
// package org.allbinary.media.graphics.geography.map.racetrack.drop
unit RaceTrackDropCellPositionGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicArrayListUtil, AllBinaryGameLayerManager, AllBinaryLayerManager, BasicGeographicMap, GeographicMapCellPosition, GeographicMapCellTypeFactory, BaseDropCellPositionGenerator, RaceTrackGeographicMapInterface, TimeDelayHelper;

type
  {AB:TYPES}
  TRaceTrackDropCellPositionGenerator = class(TBaseDropCellPositionGenerator)
  public
    list: TBasicArrayList;
    timeDelayHelper: TTimeDelayHelper;
    STRAIGHTAWAY: Integer;
    raceTrackGeographicMap: IRaceTrackGeographicMapInterface;
    raceTrackGeographicMapCellTypeFactory: TGeographicMapCellTypeFactory;
    basicArrayListUtil: TBasicArrayListUtil;
    procedure InitFields;
        constructor Create;
        procedure init;
        function isDropAllowedAt(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean; override;
        procedure update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap); override;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure drop(allBinaryLayerManager_: TAllBinaryLayerManager; index: Integer); virtual;
  end;

implementation
uses
  BasicArrayListD, CommonStrings, GeographicMapCellHistory, BaseRaceTrackGeographicMap, NullRaceTrackGeographicMap, RaceTrackGeographicMapCellType, RaceTrackGeographicMapCellTypeFactory, RaceTrackRoadsGeographicMapCellHistoryFactory, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TRaceTrackDropCellPositionGenerator.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
  
  Self.STRAIGHTAWAY := 4;
  Self.raceTrackGeographicMap := TNullRaceTrackGeographicMap.NULL_RACE_TRACK_GEOGRAPHIC_MAP;
  Self.raceTrackGeographicMapCellTypeFactory := TGeographicMapCellTypeFactory.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;
    

constructor TRaceTrackDropCellPositionGenerator.Create;
begin
    inherited Create;
    InitFields;
        Self.timeDelayHelper := TTimeDelayHelper.Create(10000);
end;
    

procedure TRaceTrackDropCellPositionGenerator.init;
begin
        Self.list.clear();
end;
    

// throws Exception
function TRaceTrackDropCellPositionGenerator.isDropAllowedAt(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
var
  raceTrackGeographicMapCellType_: TRaceTrackGeographicMapCellType;
  raceTrackGeographicMapCellTypeFactory_: TRaceTrackGeographicMapCellTypeFactory;
begin
        raceTrackGeographicMapCellType_ := TRaceTrackGeographicMapCellType(TJava.ToObject(Self.raceTrackGeographicMap.getCellTypeAt(geographicMapCellPosition_)));
        raceTrackGeographicMapCellTypeFactory_ := TRaceTrackGeographicMapCellTypeFactory(TJava.ToObject(Self.raceTrackGeographicMapCellTypeFactory));
        if ((raceTrackGeographicMapCellType_) = (raceTrackGeographicMapCellTypeFactory_.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE)) or ((raceTrackGeographicMapCellType_) = (raceTrackGeographicMapCellTypeFactory_.VERTICAL_STRAIGHT_ROAD_CELL_TYPE)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
procedure TRaceTrackDropCellPositionGenerator.update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap);
var
  baseRaceTrackGeographicMap_: TBaseRaceTrackGeographicMap;
  roadGeographicMapCellHistory: TGeographicMapCellHistory;
  trackedList: TBasicArrayList;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  lastIndex: Integer;
  total: Integer;
  ahead: Integer;
  index: Integer;
  size: Integer;
begin
        Self.init();
        baseRaceTrackGeographicMap_ := TBaseRaceTrackGeographicMap(TJava.ToObject(geographicMapInterface));
        Self.raceTrackGeographicMap := baseRaceTrackGeographicMap_;
        Self.raceTrackGeographicMapCellTypeFactory := TRaceTrackGeographicMapCellTypeFactory(TJava.ToObject(baseRaceTrackGeographicMap_.getGeographicMapCellTypeFactory()));
        roadGeographicMapCellHistory := TRaceTrackRoadsGeographicMapCellHistoryFactory.getInstance();
        trackedList := roadGeographicMapCellHistory.getTracked();
        
        lastIndex := (trackedList.size()) - (1);
        
        
        for index := lastIndex downto 0 + 1 do begin
            geographicMapCellPosition_ := TGeographicMapCellPosition(TJava.ToObject(trackedList.get(index)));
            total := 0;
            ahead := index;
            while Self.isDropAllowedAt(TGeographicMapCellPosition(TJava.ToObject(trackedList.get(ahead)))) do begin
                Inc(total);
                if (total) > (Self.STRAIGHTAWAY) then begin
                    Self.list.add(TJava.Box(geographicMapCellPosition_));
                    Break;
                end;
                Inc(ahead);
                if (ahead) > (lastIndex) then begin
                    Break;
                end;
            end;
        end;
        size := Self.list.size();
        for index := (size) - (1) downto 0 do begin
            Self.drop(allBinaryGameLayerManager_, index);
        end;
end;
    

// throws Exception
procedure TRaceTrackDropCellPositionGenerator.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  index: Integer;
begin
        if Self.timeDelayHelper.isTime(TGameTickTimeDelayHelperFactory.getInstance().startTime) then begin
            index := Self.basicArrayListUtil.getRandomIndex(Self.list);
            Self.drop(allBinaryLayerManager_, index);
        end;
end;
    

// throws Exception
procedure TRaceTrackDropCellPositionGenerator.drop(allBinaryLayerManager_: TAllBinaryLayerManager; index: Integer);
begin
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


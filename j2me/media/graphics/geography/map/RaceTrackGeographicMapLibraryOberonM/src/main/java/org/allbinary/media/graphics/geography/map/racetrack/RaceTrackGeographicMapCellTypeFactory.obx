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
unit RaceTrackGeographicMapCellTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellType, GeographicMapCellTypeFactory, RaceTrackGeographicMapCellType;

type
  {AB:TYPES}
  TRaceTrackGeographicMapCellTypeFactory = class(TGeographicMapCellTypeFactory)
  public
    EMPTY_CELL_TYPE: TGeographicMapCellType;
    EASY_CELL_TYPE: TGeographicMapCellType;
    BOTTOM_LEFT_TURN_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    TOP_LEFT_TURN_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    TOP_RIGHT_TURN_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    VERTICAL_STRAIGHT_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    START_LINE_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    DEFAULT_FINISH_LINE_ROAD_CELL_TYPE: TRaceTrackGeographicMapCellType;
    FINISH_LINE_ROAD_CELL_TYPE: TGeographicMapCellType;
    class var instanceC: TRaceTrackGeographicMapCellTypeFactory;
    procedure InitFields;
        class function getInstance: TRaceTrackGeographicMapCellTypeFactory; static;
        constructor Create;
        function getStartType: Integer; override;
        function getEndType: Integer; override;
        function getEmptyType: Integer; override;
        function isPath(cellType: TGeographicMapCellType): Boolean; override;
  end;

implementation
uses
  RaceTrackGeographicMapCellTypes;


{AB:CODE}

procedure TRaceTrackGeographicMapCellTypeFactory.InitFields;
begin
  Self.EMPTY_CELL_TYPE := TGeographicMapCellType.Create(0, -1);
  Self.EASY_CELL_TYPE := Self.EMPTY_CELL_TYPE;
  
  
  
  
  
  
  
  
  Self.FINISH_LINE_ROAD_CELL_TYPE := TGeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE;
end;
    

class function TRaceTrackGeographicMapCellTypeFactory.getInstance: TRaceTrackGeographicMapCellTypeFactory;
begin
        Exit(TRaceTrackGeographicMapCellTypeFactory.instanceC);
end;
    

constructor TRaceTrackGeographicMapCellTypeFactory.Create;
var
  raceTrackGeographicMapCellTypes_: TRaceTrackGeographicMapCellTypes;
begin
    inherited Create;
    InitFields;
        raceTrackGeographicMapCellTypes_ := TRaceTrackGeographicMapCellTypes.getInstance();
        Self.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.BOTTOM_LEFT_TURN_ROAD_CELL_TYPE;
        Self.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE;
        Self.TOP_LEFT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.TOP_LEFT_TURN_ROAD_CELL_TYPE;
        Self.TOP_RIGHT_TURN_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.TOP_RIGHT_TURN_ROAD_CELL_TYPE;
        Self.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE;
        Self.VERTICAL_STRAIGHT_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.VERTICAL_STRAIGHT_ROAD_CELL_TYPE;
        Self.START_LINE_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.START_LINE_ROAD_CELL_TYPE;
        Self.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE := raceTrackGeographicMapCellTypes_.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE;
end;
    

function TRaceTrackGeographicMapCellTypeFactory.getStartType: Integer;
begin
        Exit(Self.START_LINE_ROAD_CELL_TYPE.getType());
end;
    

function TRaceTrackGeographicMapCellTypeFactory.getEndType: Integer;
begin
        Exit(Self.FINISH_LINE_ROAD_CELL_TYPE.getType());
end;
    

function TRaceTrackGeographicMapCellTypeFactory.getEmptyType: Integer;
begin
        Exit(Self.EMPTY_CELL_TYPE.getType());
end;
    

function TRaceTrackGeographicMapCellTypeFactory.isPath(cellType: TGeographicMapCellType): Boolean;
begin
        if ((cellType) <> (Self.EMPTY_CELL_TYPE)) and ((cellType) <> (Self.EASY_CELL_TYPE)) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TRaceTrackGeographicMapCellTypeFactory.instanceC := TRaceTrackGeographicMapCellTypeFactory.Create();
  {AB:END}

end.


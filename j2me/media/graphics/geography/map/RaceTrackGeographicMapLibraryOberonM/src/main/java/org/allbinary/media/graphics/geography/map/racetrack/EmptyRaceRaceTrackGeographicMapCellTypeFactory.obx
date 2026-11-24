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
unit EmptyRaceRaceTrackGeographicMapCellTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RaceTrackGeographicMapCellTypeFactory;

type
  {AB:TYPES}
  TEmptyRaceRaceTrackGeographicMapCellTypeFactory = class(TRaceTrackGeographicMapCellTypeFactory)
  public
    class var instanceC: TEmptyRaceRaceTrackGeographicMapCellTypeFactory;
        class function getInstance: TEmptyRaceRaceTrackGeographicMapCellTypeFactory; static;
        constructor Create;
  end;

implementation
uses
  RaceTrackGeographicMapCellType, CommonStrings, PathFindingNodeCostInfoData;


{AB:CODE}
    

class function TEmptyRaceRaceTrackGeographicMapCellTypeFactory.getInstance: TEmptyRaceRaceTrackGeographicMapCellTypeFactory;
begin
        Exit(TEmptyRaceRaceTrackGeographicMapCellTypeFactory.instanceC);
end;
    

constructor TEmptyRaceRaceTrackGeographicMapCellTypeFactory.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
        commonStrings_ := TCommonStrings.getInstance();
        Self.EMPTY_CELL_TYPE := TRaceTrackGeographicMapCellType.Create(commonStrings_.EMPTY, 0, TPathFindingNodeCostInfoData.getInstance().MAX_NODE_COST, 1);
        Self.EASY_CELL_TYPE := TRaceTrackGeographicMapCellType.Create('Easy', 19, 1, 0);
        Self.FINISH_LINE_ROAD_CELL_TYPE := Self.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE;
end;

initialization
  {AB:INITIALIZATION}
  TEmptyRaceRaceTrackGeographicMapCellTypeFactory.instanceC := TEmptyRaceRaceTrackGeographicMapCellTypeFactory.Create();
  {AB:END}

end.


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
unit CloseLoopRaceTrackGeographicMapCellTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RaceTrackGeographicMapCellTypeFactory;

type
  {AB:TYPES}
  TCloseLoopRaceTrackGeographicMapCellTypeFactory = class(TRaceTrackGeographicMapCellTypeFactory)
  public
    class var instanceC: TCloseLoopRaceTrackGeographicMapCellTypeFactory;
        class function getInstance: TCloseLoopRaceTrackGeographicMapCellTypeFactory; static;
        constructor Create;
  end;

implementation
uses
  EmptyRaceRaceTrackGeographicMapCellTypeFactory;


{AB:CODE}
    

class function TCloseLoopRaceTrackGeographicMapCellTypeFactory.getInstance: TCloseLoopRaceTrackGeographicMapCellTypeFactory;
begin
        Exit(TCloseLoopRaceTrackGeographicMapCellTypeFactory.instanceC);
end;
    

constructor TCloseLoopRaceTrackGeographicMapCellTypeFactory.Create;
begin
    inherited Create;
        Self.EMPTY_CELL_TYPE := TEmptyRaceRaceTrackGeographicMapCellTypeFactory.getInstance().EMPTY_CELL_TYPE;
        Self.EASY_CELL_TYPE := Self.EMPTY_CELL_TYPE;
        Self.FINISH_LINE_ROAD_CELL_TYPE := Self.START_LINE_ROAD_CELL_TYPE;
end;

initialization
  {AB:INITIALIZATION}
  TCloseLoopRaceTrackGeographicMapCellTypeFactory.instanceC := TCloseLoopRaceTrackGeographicMapCellTypeFactory.Create();
  {AB:END}

end.


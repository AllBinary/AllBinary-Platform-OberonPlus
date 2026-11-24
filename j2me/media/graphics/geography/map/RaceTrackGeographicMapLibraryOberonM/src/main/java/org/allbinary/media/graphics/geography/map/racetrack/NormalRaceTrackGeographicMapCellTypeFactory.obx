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
unit NormalRaceTrackGeographicMapCellTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RaceTrackGeographicMapCellTypeFactory;

type
  {AB:TYPES}
  TNormalRaceTrackGeographicMapCellTypeFactory = class(TRaceTrackGeographicMapCellTypeFactory)
  public
    class var instanceC: TNormalRaceTrackGeographicMapCellTypeFactory;
        class function getInstance: TNormalRaceTrackGeographicMapCellTypeFactory; static;
        constructor Create;
  end;

implementation
uses
  EmptyRaceRaceTrackGeographicMapCellTypeFactory;


{AB:CODE}
    

class function TNormalRaceTrackGeographicMapCellTypeFactory.getInstance: TNormalRaceTrackGeographicMapCellTypeFactory;
begin
        Exit(TNormalRaceTrackGeographicMapCellTypeFactory.instanceC);
end;
    

constructor TNormalRaceTrackGeographicMapCellTypeFactory.Create;
begin
    inherited Create;
        Self.EMPTY_CELL_TYPE := TEmptyRaceRaceTrackGeographicMapCellTypeFactory.getInstance().EMPTY_CELL_TYPE;
        Self.EASY_CELL_TYPE := Self.EMPTY_CELL_TYPE;
        Self.FINISH_LINE_ROAD_CELL_TYPE := Self.DEFAULT_FINISH_LINE_ROAD_CELL_TYPE;
end;

initialization
  {AB:INITIALIZATION}
  TNormalRaceTrackGeographicMapCellTypeFactory.instanceC := TNormalRaceTrackGeographicMapCellTypeFactory.Create();
  {AB:END}

end.


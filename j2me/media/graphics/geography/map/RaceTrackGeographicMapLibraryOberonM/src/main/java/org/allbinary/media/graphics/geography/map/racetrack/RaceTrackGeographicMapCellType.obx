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
unit RaceTrackGeographicMapCellType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellType;

type
  {AB:TYPES}
  TRaceTrackGeographicMapCellType = class(TGeographicMapCellType)
  public
    name: string;
    travelCost: Integer;
    procedure InitFields;
        constructor Create(name: string; type_: Integer; travelCost: Integer; reset: Integer);
        function getTravelCost: Integer; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TRaceTrackGeographicMapCellType.InitFields;
begin
  
  
end;
    

constructor TRaceTrackGeographicMapCellType.Create(name: string; type_: Integer; travelCost: Integer; reset: Integer);
begin
        inherited Create(type_, reset);
        InitFields;
        Self.name := name;
        Self.travelCost := travelCost;
end;
    

function TRaceTrackGeographicMapCellType.getTravelCost: Integer;
begin
        Exit(Self.travelCost);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


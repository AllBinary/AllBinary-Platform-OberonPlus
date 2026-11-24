{

  AllBinary Open License Version 1
  Copyright (c) 2006 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.pathfinding
unit PathFindingNodeCostInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, GeographicMapCellPosition, PathFindingNodeCostInfoFactoryBase;

type
  {AB:TYPES}
  TPathFindingNodeCostInfoFactory = class(TPathFindingNodeCostInfoFactoryBase)
  public
        constructor Create(max: Integer);
        procedure create_(geographicMapInterface: TBasicGeographicMap; goingToGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition; costFromStart: Int64; costToEnd: Int64); override;
        function getTotalCost(geographicMapInterface: TBasicGeographicMap; comingFromGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition): Int64; override;
  end;

implementation
uses
  GeographicMapCellType, RaceTrackGeographicMapCellType;


{AB:CODE}
    

constructor TPathFindingNodeCostInfoFactory.Create(max: Integer);
begin
    inherited Create;
end;
    

// throws Exception
procedure TPathFindingNodeCostInfoFactory.create_(geographicMapInterface: TBasicGeographicMap; goingToGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition; costFromStart: Int64; costToEnd: Int64);
begin
end;
    

// throws Exception
function TPathFindingNodeCostInfoFactory.getTotalCost(geographicMapInterface: TBasicGeographicMap; comingFromGeographicMapCellPosition: TGeographicMapCellPosition; geographicMapCellPosition_: TGeographicMapCellPosition): Int64;
var
  geographicMapCellType_: TGeographicMapCellType;
  geographicMapCellType2: TGeographicMapCellType;
  raceTrackGeographicMapCellType_: TRaceTrackGeographicMapCellType;
  raceTrackGeographicMapCellType2: TRaceTrackGeographicMapCellType;
begin
        geographicMapCellType_ := geographicMapInterface.getCellTypeAt(comingFromGeographicMapCellPosition);
        geographicMapCellType2 := geographicMapInterface.getCellTypeAt(geographicMapCellPosition_);
        raceTrackGeographicMapCellType_ := TRaceTrackGeographicMapCellType(TJava.ToObject(geographicMapCellType_));
        raceTrackGeographicMapCellType2 := TRaceTrackGeographicMapCellType(TJava.ToObject(geographicMapCellType2));
        Exit((Int64(Trunc(raceTrackGeographicMapCellType_.getTravelCost()))) + (raceTrackGeographicMapCellType2.getTravelCost()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


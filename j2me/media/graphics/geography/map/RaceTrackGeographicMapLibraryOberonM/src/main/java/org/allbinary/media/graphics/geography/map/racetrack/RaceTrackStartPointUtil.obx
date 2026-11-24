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
unit RaceTrackStartPointUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, BasicGeographicMap, PathFindingInfo;

type
  {AB:TYPES}
  TRaceTrackStartPointUtil = class(TObject)
  public
    constructor Create;
        class function get(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; index: Integer): TGPoint; static;
  end;

implementation
uses
  BasicArrayList, PointFactory, GeographicMapCellPosition, PathFindingNode;


{AB:CODE}

constructor TRaceTrackStartPointUtil.Create;
begin
  inherited Create;
end;
    

// throws Exception
class function TRaceTrackStartPointUtil.get(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; index: Integer): TGPoint;
var
  list: TBasicArrayList;
  startPathFindingNode: TPathFindingNode;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  point: TGPoint;
begin
        list := pathFindingInfo_.getStartPathFindingNodeList();
        startPathFindingNode := TPathFindingNode(TJava.ToObject(list.get(index)));
        geographicMapCellPosition_ := startPathFindingNode.geographicMapCellPosition;
        point := geographicMapCellPosition_.getPoint();
        Exit(TPointFactory.getInstance().createXY(point.getX(), (point.getY()) + (geographicMapInterface.getAllBinaryTiledLayer().getHalfCellHeight())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


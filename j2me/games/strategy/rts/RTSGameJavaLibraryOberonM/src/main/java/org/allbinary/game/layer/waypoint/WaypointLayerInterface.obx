{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.waypoint
unit WaypointLayerInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CaptionAnimationHelperBase, WaypointBehaviorBase, TrackingEvent, AllBinaryLayer, GeographicMapCellHistory, GeographicMapCellPosition, BasicArrayList, WaypointLogHelper, Waypoint2LogHelper, WaypointRunnableLogHelper;

type
  {AB:TYPES}
  IWaypointLayerInterface = interface(IJavaObject) ['IWaypointLayerInterface']
        procedure init(geographicMapCellHistory_: TGeographicMapCellHistory; geographicMapCellPositionBasicArrayList: TBasicArrayList);
        function getMoveOutOfBuildAreaPath(geographicMapCellPosition_: TGeographicMapCellPosition): TBasicArrayList;
        procedure setClosestGeographicMapCellHistory(pathsList: TBasicArrayList);
        procedure teleportTo(geographicMapCellPosition_: TGeographicMapCellPosition);
        procedure setLoad(resource: Integer);
        function getSurroundingGeographicMapCellPositionList: TBasicArrayList;
        function isSelected: Boolean;
        function shouldAddWaypointFromBuilding: Boolean;
        function isShowMoreCaptionStates: Boolean;
        procedure trackTo(reason: string);
        procedure trackToDXY(dx: Integer; dy: Integer);
        function buildingChase(allbinaryLayer_: TAllBinaryLayer; cellPosition: TGeographicMapCellPosition): Boolean;
        function getTrackingEvent: TTrackingEvent;
        procedure allStop;
        function isWaypointListEmptyOrOnlyTargets: Boolean;
        function getCurrentGeographicMapCellPosition: TGeographicMapCellPosition;
        function getTopLeftGeographicMapCellPosition: TGeographicMapCellPosition;
        function getCaptionAnimationHelper: TCaptionAnimationHelperBase;
        function getWaypointBehavior: TWaypointBehaviorBase;
        function getWaypointLogHelper: TWaypointLogHelper;
        function getWaypoint2LogHelper: TWaypoint2LogHelper;
        function getWaypointRunnableLogHelper: TWaypointRunnableLogHelper;
  end;
  TWaypointLayerInterface = IWaypointLayerInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


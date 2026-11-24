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
// package org.allbinary.game.input.form
unit AssignWaypointsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AdvancedRTSGameLayer, RTSLayerEvent, UnitLayer, LogUtil;

type
  {AB:TYPES}
  TAssignWaypointsUtil = class(TObject)
  public
    logUtil: TLogUtil;
    WAYPOINT_EVENT: TRTSLayerEvent;
    class var instance: TAssignWaypointsUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAssignWaypointsUtil; static;
        procedure set_(unitLayer_: TUnitLayer; ownerAdvancedRTSGameLayer: TAdvancedRTSGameLayer); virtual;
  end;

implementation
uses
  PrimaryWaypointHelper, NullPathFindingLayer, PathFindingLayerInterface, RTSLayer, UnitWaypointBehavior, BasicArrayList, CommonStrings;


{AB:CODE}

procedure TAssignWaypointsUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.WAYPOINT_EVENT := TRTSLayerEvent.Create(TNullPathFindingLayer.NULL_PATH_FINDING_LAYER);
end;

constructor TAssignWaypointsUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAssignWaypointsUtil.getInstance: TAssignWaypointsUtil;
begin
        Exit(TAssignWaypointsUtil.instance);
end;
    

procedure TAssignWaypointsUtil.set_(unitLayer_: TUnitLayer; ownerAdvancedRTSGameLayer: TAdvancedRTSGameLayer);
var
  list: TBasicArrayList;
  unitWaypointBehavior_: TUnitWaypointBehavior;
  waypointLayer: TRTSLayer;
  index: Integer;
  waypointLayer_2: IPathFindingLayerInterface;
  commonStrings_: TCommonStrings;
begin
        try
            list := ownerAdvancedRTSGameLayer.getWaypointBehavior().getOwnedWaypointList();
            unitWaypointBehavior_ := TUnitWaypointBehavior(TJava.ToObject(unitLayer_.getWaypointBehavior()));
            for index := (list.size()) - (1) downto 0 do begin
                waypointLayer := TRTSLayer(TJava.ToObject(list.get(index)));
                Self.WAYPOINT_EVENT.setRtsLayer(waypointLayer);
                unitWaypointBehavior_.onWaypointEvent(Self.WAYPOINT_EVENT);
            end;
            waypointLayer_2 := TPrimaryWaypointHelper.getInstance().getWaypointLayer();
            if (waypointLayer_2) <> (TNullPathFindingLayer.NULL_PATH_FINDING_LAYER) then begin
                Self.WAYPOINT_EVENT.setRtsLayer(waypointLayer_2);
                unitWaypointBehavior_.onWaypointEvent(Self.WAYPOINT_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'set', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TAssignWaypointsUtil.instance := TAssignWaypointsUtil.Create();
  {AB:END}

end.


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
// package org.allbinary.game.layer.waypoint
unit WorkWaypoint;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PathFindingLayerInterface, UnitLayer, Waypoint;

type
  {AB:TYPES}
  TWorkWaypoint = class(TWaypoint)
  public
    class var ID: Integer;
        constructor Create(ownerLayer: IPathFindingLayerInterface);
        procedure visit(unitLayer_: TUnitLayer); virtual;
        function getType: Integer; override;
  end;

implementation
uses
  WaypointInfoHudPaintable, RTSLayer, GeologicalGeographicMapCellPosition, GeologicalResource, UnitWaypointBehavior, WorkSound, BasicArrayList, SmallIntegerSingletonFactory;


{AB:CODE}
    

constructor TWorkWaypoint.Create(ownerLayer: IPathFindingLayerInterface);
begin
        inherited Create(ownerLayer, TWorkSound.getInstance());
end;
    

// throws Exception
procedure TWorkWaypoint.visit(unitLayer_: TUnitLayer);
var
  size: Integer;
  occupyList: TBasicArrayList;
  outOfResources: Boolean;
  geologicalGeographicMapCellPosition_: TGeologicalGeographicMapCellPosition;
  geologicalResource_: TGeologicalResource;
  maxResourceLoad: Integer;
  index: Integer;
  waypointInfoHudPaintable_: TWaypointInfoHudPaintable;
  unitWaypointBehavior_: TUnitWaypointBehavior;
  rtsLayer_: TRTSLayer;
begin
        if (unitLayer_.getGroupInterface()[0]) <> (Self.ownerLayer.getGroupInterface()[0]) then begin
            Exit;
        end;
        size := Self.getConnectedWaypointList().size();
        if (size) > (0) then begin
            occupyList := Self.ownerLayer.getGeographicMapCellPositionArea().getOccupyingGeographicMapCellPositionList();
            outOfResources := True;
            
            
            index := occupyList.size();
            while (TJava.PreDec(index)) >= (0) do begin
                geologicalGeographicMapCellPosition_ := TGeologicalGeographicMapCellPosition(TJava.ToObject(occupyList.get(index)));
                geologicalResource_ := geologicalGeographicMapCellPosition_.getGeologicalResource();
                if (geologicalResource_.getTotal()) >= (1) then begin
                    outOfResources := False;
                    maxResourceLoad := Integer(Trunc(unitLayer_.getMaxResourceLoad()));
                    geologicalResource_.remove(maxResourceLoad);
                    unitLayer_.setLoad(maxResourceLoad);
                end;
            end;
            waypointInfoHudPaintable_ := TWaypointInfoHudPaintable(TJava.ToObject(Self.ownerLayer.getHudPaintable()));
            if TJava.ToObject(Self.ownerLayer) = TJava.ToObject(waypointInfoHudPaintable_.getRtsLayer()) then begin
                waypointInfoHudPaintable_.updateSelectionInfo();
            end;
            if not (outOfResources) then begin
                unitWaypointBehavior_ := TUnitWaypointBehavior(TJava.ToObject(unitLayer_.getWaypointBehavior()));
                
                while (Self.getConnectedWaypointList().size()) > (0) do begin
                    rtsLayer_ := TRTSLayer(TJava.ToObject(Self.getConnectedWaypointList().get(0)));
                    if rtsLayer_.isDestroyed() then begin
                        Self.getConnectedWaypointList().remove(rtsLayer_);
                    end else begin
                        unitWaypointBehavior_.insertWaypoint(0, rtsLayer_);
                        Break;
                    end;
                end;
            end;
        end;
end;
    

function TWorkWaypoint.getType: Integer;
begin
        Exit(2);
end;

initialization
  {AB:INITIALIZATION}
  TWorkWaypoint.ID := TSmallIntegerSingletonFactory.getInstance().getAt(25);
  {AB:END}

end.


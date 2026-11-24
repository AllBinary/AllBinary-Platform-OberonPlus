{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit WaypointPathRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, WaypointPathRunnableBase;

type
  {AB:TYPES}
  TWaypointPathRunnable = class(TWaypointPathRunnableBase)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        procedure run; override;
        function isDone: Boolean; override;
  end;

implementation
uses
  WaypointBehaviorBase, CommonStrings, GeographicMapCellPosition;


{AB:CODE}

procedure TWaypointPathRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TWaypointPathRunnable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TWaypointPathRunnable.run;
var
  waypointBehavior: TWaypointBehaviorBase;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  commonStrings_: TCommonStrings;
begin
        try
            Self.pathFindingLayer.getWaypointRunnableLogHelper().start(Self.pathFindingLayer);
            waypointBehavior := Self.pathFindingLayer.getWaypointBehavior();
            geographicMapCellPosition_ := Self.pathFindingLayer.getCurrentGeographicMapCellPosition();
            if (geographicMapCellPosition_) = (nil) then begin
                raise SysUtils.Exception.Create('Should never be running here');
            end;
            waypointBehavior.setWaypointPathsList(Self.targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsListRunnable(geographicMapCellPosition_));
            Self.pathFindingLayer.getWaypointRunnableLogHelper().end_(Self.pathFindingLayer);
            SysUtils.Sleep((15) + (((Self.priorityP) * (2))));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            Self.setRunning(False);
            end;
        end;
end;
    

function TWaypointPathRunnable.isDone: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


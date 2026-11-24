{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.unit
unit UnitWaypointStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TUnitWaypointStrings = class(TObject)
  public
    PATHING: string;
    WANDERING: string;
    THINKING: string;
    THINKING_ABOUT_TARGET: string;
    TARGET: string;
    KILL: string;
    STOP: string;
    WAYPOINT_DESTROYED_SHORT: string;
    WAYPOINT_DESTROYED: string;
    ALL_VISITED_SHORT: string;
    ALL_VISITED: string;
    ALREADY_THERE_SHORT: string;
    ALREADY_THERE: string;
    NEXT_PATH_NODE: string;
    _ALL_VISITED_SHORT: string;
    _ALREADY_THERE_SHORT: string;
    VISITED_MOST_OF_THE_PATH: string;
    RETURNING_AS_WAYPOINT_PATH_LIST: string;
    class var instance: TUnitWaypointStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TUnitWaypointStrings; static;
  end;

implementation
uses
  CommonLabels;


{AB:CODE}

procedure TUnitWaypointStrings.InitFields;
begin
  Self.PATHING := 'Pathing';
  Self.WANDERING := 'Order?';
  Self.THINKING := 'Thinking';
  Self.THINKING_ABOUT_TARGET := 'Hmmm';
  Self.TARGET := 'Target';
  Self.KILL := 'Kill!';
  Self.STOP := 'Stop';
  Self.WAYPOINT_DESTROYED_SHORT := 'Uh Oh';
  Self.WAYPOINT_DESTROYED := 'Waypoint Destroyed';
  Self.ALL_VISITED_SHORT := 'Arrived';
  Self.ALL_VISITED := 'All Visited';
  Self.ALREADY_THERE_SHORT := 'Again?';
  Self.ALREADY_THERE := 'Already There';
  Self.NEXT_PATH_NODE := TJava.ToString(TCommonLabels.getInstance().NEXT) + ' Path Node';
  Self._ALL_VISITED_SHORT := ' Arrived';
  Self._ALREADY_THERE_SHORT := ' Again?';
  Self.VISITED_MOST_OF_THE_PATH := ' visited most of the path';
  Self.RETURNING_AS_WAYPOINT_PATH_LIST := ' returning as waypointPathsList was runningWaypointPathList';
end;

constructor TUnitWaypointStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TUnitWaypointStrings.getInstance: TUnitWaypointStrings;
begin
        Exit(TUnitWaypointStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TUnitWaypointStrings.instance := TUnitWaypointStrings.Create();
  {AB:END}

end.


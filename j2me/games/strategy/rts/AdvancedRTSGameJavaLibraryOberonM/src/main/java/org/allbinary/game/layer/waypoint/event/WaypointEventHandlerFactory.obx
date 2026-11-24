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
// package org.allbinary.game.layer.waypoint.event
unit WaypointEventHandlerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Group, WaypointEventHandler;

type
  {AB:TYPES}
  TWaypointEventHandlerFactory = class(TObject)
  public
    class var eventHandlerArray: TArray<TWaypointEventHandler>;
    constructor Create;
        class function getInstance(groupInterface: TGroup): TWaypointEventHandler; static;
        class procedure removeAll; static;
  end;

implementation

{AB:CODE}

constructor TWaypointEventHandlerFactory.Create;
begin
  inherited Create;
end;
    

class function TWaypointEventHandlerFactory.getInstance(groupInterface: TGroup): TWaypointEventHandler;
var
  groupId: Integer;
begin
        groupId := Integer(Trunc(groupInterface.getGroupId()));
        Exit(TWaypointEventHandlerFactory.eventHandlerArray[groupId]);
end;
    

class procedure TWaypointEventHandlerFactory.removeAll;
var
  index: Integer;
begin
        for index := (System.Length(TWaypointEventHandlerFactory.eventHandlerArray)) - (1) downto 0 do begin
            TWaypointEventHandlerFactory.eventHandlerArray[index].removeAllListeners();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TWaypointEventHandlerFactory.eventHandlerArray := TArray<TWaypointEventHandler>.Create(TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create(), TWaypointEventHandler.Create());
  {AB:END}

end.


{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.waypoint.event
unit WaypointEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TWaypointEventHandler = class(TBasicEventHandler)
  public
        constructor Create;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  WaypointEventListenerInterface, RTSLayerEvent;


{AB:CODE}
    

constructor TWaypointEventHandler.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TWaypointEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  waypointEventListenerInterface_: IWaypointEventListenerInterface;
begin
        waypointEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IWaypointEventListenerInterface));
        waypointEventListenerInterface_.onWaypointEvent(TRTSLayerEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


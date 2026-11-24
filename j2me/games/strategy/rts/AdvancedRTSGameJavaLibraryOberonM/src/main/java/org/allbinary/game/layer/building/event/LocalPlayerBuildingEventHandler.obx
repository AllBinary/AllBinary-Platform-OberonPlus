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
// package org.allbinary.game.layer.building.event
unit LocalPlayerBuildingEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TLocalPlayerBuildingEventHandler = class(TBasicEventHandler)
  public
    class var eventHandler: TLocalPlayerBuildingEventHandler;
        constructor Create;
        class function getInstance: TLocalPlayerBuildingEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  BuildingEventListenerInterface, RTSLayerEvent;


{AB:CODE}
    

constructor TLocalPlayerBuildingEventHandler.Create;
begin
    inherited Create;
end;
    

class function TLocalPlayerBuildingEventHandler.getInstance: TLocalPlayerBuildingEventHandler;
begin
        Exit(TLocalPlayerBuildingEventHandler.eventHandler);
end;
    

// throws Exception
procedure TLocalPlayerBuildingEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  buildingEventListenerInterface_: IBuildingEventListenerInterface;
begin
        buildingEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IBuildingEventListenerInterface));
        buildingEventListenerInterface_.onBuildingEvent(TRTSLayerEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TLocalPlayerBuildingEventHandler.eventHandler := TLocalPlayerBuildingEventHandler.Create();
  {AB:END}

end.


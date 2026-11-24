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
// package org.allbinary.game.layer.building.event
unit BuildingEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TBuildingEventHandler = class(TBasicEventHandler)
  public
    class var eventHandler: TBuildingEventHandler;
        constructor Create;
        class function getInstance: TBuildingEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  BuildingEventListenerInterface, RTSLayerEvent;


{AB:CODE}
    

constructor TBuildingEventHandler.Create;
begin
    inherited Create;
end;
    

class function TBuildingEventHandler.getInstance: TBuildingEventHandler;
begin
        Exit(TBuildingEventHandler.eventHandler);
end;
    

// throws Exception
procedure TBuildingEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  buildingEventListenerInterface_: IBuildingEventListenerInterface;
begin
        buildingEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IBuildingEventListenerInterface));
        buildingEventListenerInterface_.onBuildingEvent(TRTSLayerEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TBuildingEventHandler.eventHandler := TBuildingEventHandler.Create();
  {AB:END}

end.


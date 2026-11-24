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
// package org.allbinary.game.rts.technology.event
unit TechEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TTechEventHandler = class(TBasicEventHandler)
  public
    class var eventHandler: TTechEventHandler;
        constructor Create;
        class function getInstance: TTechEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  TechEventListenerInterface;


{AB:CODE}
    

constructor TTechEventHandler.Create;
begin
    inherited Create;
end;
    

class function TTechEventHandler.getInstance: TTechEventHandler;
begin
        Exit(TTechEventHandler.eventHandler);
end;
    

// throws Exception
procedure TTechEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  techEventListenerInterface_: ITechEventListenerInterface;
begin
        techEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as ITechEventListenerInterface));
        techEventListenerInterface_.onTechEvent(eventObject);
end;

initialization
  {AB:INITIALIZATION}
  TTechEventHandler.eventHandler := TTechEventHandler.Create();
  {AB:END}

end.


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
// package org.allbinary.game.layer.capital.event
unit CapitalEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TCapitalEventHandler = class(TBasicEventHandler)
  public
        constructor Create;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  CapitalEventListenerInterface, CapitalEvent;


{AB:CODE}
    

constructor TCapitalEventHandler.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TCapitalEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  capitalEventListenerInterface_: ICapitalEventListenerInterface;
begin
        capitalEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as ICapitalEventListenerInterface));
        capitalEventListenerInterface_.onCapitalChangeEvent(TCapitalEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


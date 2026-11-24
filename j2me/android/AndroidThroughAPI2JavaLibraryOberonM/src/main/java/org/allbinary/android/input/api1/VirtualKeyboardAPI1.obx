{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.android.input.api1
unit VirtualKeyboardAPI1;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, VirtualKeyboard, VirtualKeyboardEventListenerInterface, Activity, VirtualKeyboardEvent, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TVirtualKeyboardAPI1 = class(TVirtualKeyboard, IVirtualKeyboardEventListenerInterface, IEventListenerInterface)
  public
    class var MIN_API: Integer;
    class var MAX_API: Integer;
    function JavaObject: TObject;
        constructor Create(activity_: TActivity);
        procedure onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
  end;

implementation

{AB:CODE}

function TVirtualKeyboardAPI1.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TVirtualKeyboardAPI1.Create(activity_: TActivity);
begin
    inherited Create;
end;
    

procedure TVirtualKeyboardAPI1.onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent);
begin
        inherited onVirtualKeyboardEvent(virtualKeyboardEvent_);
end;
    

procedure TVirtualKeyboardAPI1.onEvent(eventObject: TAllBinaryEventObject);
begin
        inherited onEvent(eventObject);
end;

initialization
  {AB:INITIALIZATION}
  TVirtualKeyboardAPI1.MIN_API := 1;
  TVirtualKeyboardAPI1.MAX_API := 2;
  {AB:END}

end.


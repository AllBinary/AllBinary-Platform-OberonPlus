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
// package org.allbinary.android.input.api3
unit VirtualKeyboardAPI3;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, VirtualKeyboard, VirtualKeyboardEvent, VirtualKeyboardEventListenerInterface, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TVirtualKeyboardAPI3 = class(TVirtualKeyboard, IVirtualKeyboardEventListenerInterface, IEventListenerInterface)
  public
    virtualKeyboard: Boolean;
    activity: TActivity;
    showVirtualKeyboardRunnable: IRunnable;
    hideVirtualKeyboardRunnable: IRunnable;
    class var MAX_API: Integer;
    class var MIN_API: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(activity_: TActivity);
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent); virtual;
        procedure forceHide; virtual;
        procedure hide; virtual;
        procedure showVirtualKeyboard;
        procedure hideVirtualKeyboard;
  end;

implementation
uses
  ShowVirtualKeyboardRunnable, HideVirtualKeyboardRunnable, VirtualKeyboardEventHandler, ForcedLogUtil, EventStrings;


{AB:CODE}

procedure TVirtualKeyboardAPI3.InitFields;
begin
  
  
  
  
end;

function TVirtualKeyboardAPI3.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TVirtualKeyboardAPI3.Create(activity_: TActivity);
var
  virtualKeyboardEventHandler_: TVirtualKeyboardEventHandler;
begin
        inherited Create();
        InitFields;
        Self.activity := activity_;
        Self.showVirtualKeyboardRunnable := TShowVirtualKeyboardRunnable.Create(Self.activity);
        Self.hideVirtualKeyboardRunnable := THideVirtualKeyboardRunnable.Create(Self.activity);
        virtualKeyboardEventHandler_ := TVirtualKeyboardEventHandler.getInstance();
        virtualKeyboardEventHandler_.removeAllListeners();
        virtualKeyboardEventHandler_.addListenerInterface(Self);
end;
    

procedure TVirtualKeyboardAPI3.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TVirtualKeyboardAPI3.onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent);
var
  isShow: Boolean;
begin
        isShow := Boolean(virtualKeyboardEvent_.getSource());
        if (isShow) then begin
            Self.showVirtualKeyboard();
        end else begin
            Self.hideVirtualKeyboard();
        end;
end;
    

procedure TVirtualKeyboardAPI3.forceHide;
begin
        Self.hideVirtualKeyboard();
end;
    

procedure TVirtualKeyboardAPI3.hide;
begin
        if Self.virtualKeyboard then begin
            Self.forceHide();
        end;
end;
    

procedure TVirtualKeyboardAPI3.showVirtualKeyboard;
begin
        Self.activity.runOnUiThread(Self.showVirtualKeyboardRunnable);
        Self.virtualKeyboard := True;
end;
    

procedure TVirtualKeyboardAPI3.hideVirtualKeyboard;
begin
        Self.activity.runOnUiThread(Self.hideVirtualKeyboardRunnable);
        Self.virtualKeyboard := False;
end;

initialization
  {AB:INITIALIZATION}
  TVirtualKeyboardAPI3.MAX_API := High(Integer);
  TVirtualKeyboardAPI3.MIN_API := 3;
  {AB:END}

end.


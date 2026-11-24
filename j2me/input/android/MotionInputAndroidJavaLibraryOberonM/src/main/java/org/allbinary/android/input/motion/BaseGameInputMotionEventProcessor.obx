{

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.android.input.motion
unit BaseGameInputMotionEventProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionEvent, GameMotionGestureListener, CommonStrings, MotionEventProcessor;

type
  {AB:TYPES}
  TBaseGameInputMotionEventProcessor = class(TMotionEventProcessor)
  public
    commonStrings: TCommonStrings;
    gameMotionGestureListener: TGameMotionGestureListener;
    procedure InitFields;
        constructor Create;
        procedure process(motionEvent_: TMotionEvent); override;
        procedure addListener; virtual;
  end;

implementation
uses
  BasicMotionGesturesHandler, MotionGestureReceiveInterfaceFactory;


{AB:CODE}

procedure TBaseGameInputMotionEventProcessor.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  
end;
    

constructor TBaseGameInputMotionEventProcessor.Create;
begin
    inherited Create;
    InitFields;
        Self.gameMotionGestureListener := TGameMotionGestureListener.Create(TMotionGestureReceiveInterfaceFactory.getInstance());
        Self.addListener();
end;
    

procedure TBaseGameInputMotionEventProcessor.process(motionEvent_: TMotionEvent);
begin
end;
    

procedure TBaseGameInputMotionEventProcessor.addListener;
var
  motionGesturesHandler: TBasicMotionGesturesHandler;
begin
        motionGesturesHandler := TBasicMotionGesturesHandler.getInstance();
        motionGesturesHandler.addListenerInterface(Self.gameMotionGestureListener);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


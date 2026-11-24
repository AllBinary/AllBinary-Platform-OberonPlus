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
unit TrackballGameInputMotionEventProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionEvent, SingleKeyPressGameKeyFromMotionGestureEventListener, LogUtil, CommonStrings, MotionEventProcessor;

type
  {AB:TYPES}
  TTrackballGameInputMotionEventProcessor = class(TMotionEventProcessor)
  public
    logUtil: TLogUtil;
    listener: TSingleKeyPressGameKeyFromMotionGestureEventListener;
    commonStrings: TCommonStrings;
    class var PROCESSOR: TTrackballGameInputMotionEventProcessor;
    procedure InitFields;
        class function getInstance: TTrackballGameInputMotionEventProcessor; static;
        constructor Create;
        procedure process(motionEvent_: TMotionEvent); override;
  end;

implementation
uses
  DownTrackballInputToGameKeyEventAction, LeftTrackballInputToGameKeyEventAction, RightTrackballInputToGameKeyEventAction, UpTrackballInputToGameKeyEventAction;


{AB:CODE}

procedure TTrackballGameInputMotionEventProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.listener := TSingleKeyPressGameKeyFromMotionGestureEventListener.Create();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

class function TTrackballGameInputMotionEventProcessor.getInstance: TTrackballGameInputMotionEventProcessor;
begin
        Exit(TTrackballGameInputMotionEventProcessor.PROCESSOR);
end;
    

constructor TTrackballGameInputMotionEventProcessor.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TTrackballGameInputMotionEventProcessor.process(motionEvent_: TMotionEvent);
var
  x: Single;
  y: Single;
begin
        try
            x := motionEvent_.getX();
            y := motionEvent_.getY();
            if (x) < (0.0) then begin
                Self.listener.onCompleteMotionGestureInputEvent(TLeftTrackballInputToGameKeyEventAction.getInstance());
            end else if (x) > (0.0) then begin
                Self.listener.onCompleteMotionGestureInputEvent(TRightTrackballInputToGameKeyEventAction.getInstance());
            end;
            if (y) < (0.0) then begin
                Self.listener.onCompleteMotionGestureInputEvent(TUpTrackballInputToGameKeyEventAction.getInstance());
            end else if (y) > (0.0) then begin
                Self.listener.onCompleteMotionGestureInputEvent(TDownTrackballInputToGameKeyEventAction.getInstance());
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTrackballGameInputMotionEventProcessor.PROCESSOR := TTrackballGameInputMotionEventProcessor.Create();
  {AB:END}

end.


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
// package org.allbinary.android.input.motion.api1
unit GameInputMotionEventProcessorAPI1;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionEvent, BaseGameInputMotionEventProcessor, MotionRecognizer, LogUtil;

type
  {AB:TYPES}
  TGameInputMotionEventProcessorAPI1 = class(TBaseGameInputMotionEventProcessor)
  public
    logUtil: TLogUtil;
    motionRecognizer: TMotionRecognizer;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameInputMotionEventProcessorAPI1; static;
        constructor Create;
        procedure process(motionEvent_: TMotionEvent); override;
  end;

implementation
uses
  AllMotionRecognizer, NullUtil;


{AB:CODE}

procedure TGameInputMotionEventProcessorAPI1.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.motionRecognizer := TAllMotionRecognizer.Create();
end;
    

class function TGameInputMotionEventProcessorAPI1.getInstance: TGameInputMotionEventProcessorAPI1;
begin
        if (TGameInputMotionEventProcessorAPI1.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameInputMotionEventProcessorAPI1.instance := TGameInputMotionEventProcessorAPI1.Create();
        end;
        Exit(TGameInputMotionEventProcessorAPI1(TJava.ToObject(TGameInputMotionEventProcessorAPI1.instance)));
end;
    

constructor TGameInputMotionEventProcessorAPI1.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGameInputMotionEventProcessorAPI1.process(motionEvent_: TMotionEvent);
var
  x: Integer;
  y: Integer;
  action: Integer;
begin
        try
            x := Integer(Trunc(motionEvent_.getX()));
            y := Integer(Trunc(motionEvent_.getY()));
            action := motionEvent_.getAction();
            if (action) = (TMotionEvent.ACTION_DOWN) then begin
                Self.motionRecognizer.processStartMotionEvent(x, y, motionEvent_.getDeviceId(), 0);
            end else if ((action) = (TMotionEvent.ACTION_UP)) or ((action) = (TMotionEvent.ACTION_CANCEL)) then begin
                Self.motionRecognizer.processEndMotionEvent(x, y, motionEvent_.getDeviceId(), 0);
            end else if (action) = (TMotionEvent.ACTION_MOVE) then begin
                Self.motionRecognizer.processDraggedMotionEvent(x, y, motionEvent_.getDeviceId(), 0);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGameInputMotionEventProcessorAPI1.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.


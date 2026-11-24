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
// package org.allbinary.android.input.motion.api5
unit GameInputMotionEventProcessorAPI5;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionEvent, BaseGameInputMotionEventProcessor, DisplayInfoSingleton, MotionRecognizer, LogUtil;

type
  {AB:TYPES}
  TGameInputMotionEventProcessorAPI5 = class(TBaseGameInputMotionEventProcessor)
  public
    logUtil: TLogUtil;
    displayInfo: TDisplayInfoSingleton;
    motionRecognizerArray: TArray<TMotionRecognizer>;
    TOTAL_MINUS_ONE: Integer;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameInputMotionEventProcessorAPI5; static;
        constructor Create;
        function isValid(pointerId: Integer): Boolean;
        procedure process(motionEvent_: TMotionEvent); override;
  end;

implementation
uses
  GameInputMotionInfoAPI5, ScalableListener, AllMotionRecognizer, NullUtil, ForcedLogUtil;


{AB:CODE}

procedure TGameInputMotionEventProcessorAPI5.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.displayInfo := TDisplayInfoSingleton.getInstance();
  
  
end;
    

class function TGameInputMotionEventProcessorAPI5.getInstance: TGameInputMotionEventProcessorAPI5;
begin
        if (TGameInputMotionEventProcessorAPI5.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameInputMotionEventProcessorAPI5.instance := TGameInputMotionEventProcessorAPI5.Create();
        end;
        Exit(TGameInputMotionEventProcessorAPI5(TJava.ToObject(TGameInputMotionEventProcessorAPI5.instance)));
end;
    

constructor TGameInputMotionEventProcessorAPI5.Create;
var
  size: Integer;
  index: Integer;
begin
    inherited Create;
    InitFields;
        size := TGameInputMotionInfoAPI5.getInstance().MAX_POINTERS;
        Self.motionRecognizerArray := TJava.NewArray<TAllMotionRecognizer>(size);
        Self.TOTAL_MINUS_ONE := size;
        for index := 0 to size - 1 do begin
            Self.motionRecognizerArray[index] := TAllMotionRecognizer.Create();
        end;
end;
    

function TGameInputMotionEventProcessorAPI5.isValid(pointerId: Integer): Boolean;
var
  message: string;
begin
        if (pointerId) > (Self.TOTAL_MINUS_ONE) then begin
            message := 'Log that the pointer Ids are not what would be expected or Android has more than what I set my stuff to support pointerId: ';
            TForcedLogUtil.log(message + IntToStr(pointerId), TJava.Box(Self));
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

procedure TGameInputMotionEventProcessorAPI5.process(motionEvent_: TMotionEvent);
var
  action: Integer;
  total: Integer;
  message: string;
  totalMinusOne: Integer;
  pointerId: Integer;
  scalableListener_: IScalableListener;
  x: Integer;
  y: Integer;
  pointerIndex: Integer;
begin
        try
            action := motionEvent_.getAction();
            total := System.Length(Self.motionRecognizerArray);
            if (total) > (motionEvent_.getPointerCount()) then begin
                total := motionEvent_.getPointerCount();
            end else begin
                message := 'Log that Android has more pointers than I have expected so increase it motionEvent.getPointerCount(): ';
                TForcedLogUtil.log(message + TJava.ToString(motionEvent_.getPointerCount()), TJava.Box(Self));
            end;
            totalMinusOne := (total) - (1);
            if (action) = (TMotionEvent.ACTION_DOWN) then begin
                for pointerIndex := totalMinusOne downto 0 do begin
                    pointerId := motionEvent_.getPointerId(pointerIndex);
                    if Self.isValid(pointerId) then begin
                        scalableListener_ := Self.displayInfo.getScalableListener();
                        x := Integer(Trunc((TJava.Divide(((motionEvent_.getX(pointerIndex)) - (Self.displayInfo.getLeft())), scalableListener_.getRatio(Self.displayInfo.getRatio())))));
                        y := Integer(Trunc((TJava.Divide(((motionEvent_.getY(pointerIndex)) - (Self.displayInfo.getTop())), scalableListener_.getRatio(Self.displayInfo.getRatio())))));
                        Self.motionRecognizerArray[pointerId].processStartMotionEvent(x, y, motionEvent_.getDeviceId(), 0);
                    end;
                end;
            end else if ((action) = (TMotionEvent.ACTION_UP)) or ((action) = (TMotionEvent.ACTION_CANCEL)) then begin
                for pointerIndex := totalMinusOne downto 0 do begin
                    pointerId := motionEvent_.getPointerId(pointerIndex);
                    if Self.isValid(pointerId) then begin
                        scalableListener_ := Self.displayInfo.getScalableListener();
                        x := Integer(Trunc((TJava.Divide(((motionEvent_.getX(pointerIndex)) - (Self.displayInfo.getLeft())), scalableListener_.getRatio(Self.displayInfo.getRatio())))));
                        y := Integer(Trunc((TJava.Divide(((motionEvent_.getY(pointerIndex)) - (Self.displayInfo.getTop())), scalableListener_.getRatio(Self.displayInfo.getRatio())))));
                        Self.motionRecognizerArray[pointerId].processEndMotionEvent(x, y, motionEvent_.getDeviceId(), 0);
                    end;
                end;
            end else if (action) = (TMotionEvent.ACTION_MOVE) then begin
                for pointerIndex := totalMinusOne downto 0 do begin
                    pointerId := motionEvent_.getPointerId(pointerIndex);
                    if Self.isValid(pointerId) then begin
                        scalableListener_ := Self.displayInfo.getScalableListener();
                        x := Integer(Trunc((TJava.Divide(((motionEvent_.getX(pointerIndex)) - (Self.displayInfo.getLeft())), scalableListener_.getRatio(Self.displayInfo.getRatio())))));
                        y := Integer(Trunc((TJava.Divide(((motionEvent_.getY(pointerIndex)) - (Self.displayInfo.getTop())), scalableListener_.getRatio(Self.displayInfo.getRatio())))));
                        Self.motionRecognizerArray[pointerId].processDraggedMotionEvent(x, y, motionEvent_.getDeviceId(), 0);
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGameInputMotionEventProcessorAPI5.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.


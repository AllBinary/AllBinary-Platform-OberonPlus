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
// package org.allbinary.media.image.comparison.motion
unit TestInputForMotionRectanglesResultsWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AllBinaryEventObject, CommonStrings, MotionRectanglesResultsEvent, MotionRectanglesResultsListener;

type
  {AB:TYPES}
  TTestInputForMotionRectanglesResultsWorker = class(TInterfacedObject, IMotionRectanglesResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    index: Int64;
    running: Boolean;
    motionRectanglesVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getMotionRectanglesVector: TBasicArrayList; virtual;
        procedure onMotionRectanglesImageComparisonResultsEvent(motionRectanglesImageComparisonResultsEvent: TMotionRectanglesResultsEvent); virtual;
        procedure onEvent(allBinaryEventObject_: TAllBinaryEventObject); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure run; virtual;
  end;

implementation
uses
  MotionRectangles, BasicArrayListD, InputRobotFactory, InputRobotInterface, TempInputRobotNames, CommonLabels, TimeDelayHelper, ABHashtable;


{AB:CODE}

procedure TTestInputForMotionRectanglesResultsWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TTestInputForMotionRectanglesResultsWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTestInputForMotionRectanglesResultsWorker.Create;
begin
    inherited Create;
    InitFields;
        Self.motionRectanglesVector := TBasicArrayListD.Create();
end;
    

function TTestInputForMotionRectanglesResultsWorker.getMotionRectanglesVector: TBasicArrayList;
begin
        Exit(Self.motionRectanglesVector);
end;
    

procedure TTestInputForMotionRectanglesResultsWorker.onMotionRectanglesImageComparisonResultsEvent(motionRectanglesImageComparisonResultsEvent: TMotionRectanglesResultsEvent);
begin
        Self.getMotionRectanglesVector().add(motionRectanglesImageComparisonResultsEvent.getMotionRectangles());
        Self.run();
end;
    

procedure TTestInputForMotionRectanglesResultsWorker.onEvent(allBinaryEventObject_: TAllBinaryEventObject);
begin
        Self.onMotionRectanglesImageComparisonResultsEvent(TMotionRectanglesResultsEvent(TJava.ToObject(allBinaryEventObject_)));
end;
    

function TTestInputForMotionRectanglesResultsWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TTestInputForMotionRectanglesResultsWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TTestInputForMotionRectanglesResultsWorker.run;
var
  timeHelper: TTimeDelayHelper;
  motionRectangles_: TMotionRectangles;
  motionRectangleVector: TBasicArrayList;
  rectangle_: TRectangle;
  robotHashtable: TABHashtable<TObject, TObject>;
  inputTypeNameArray: TArray<TObject>;
  size: Integer;
  inputTypeNameString: string;
  inputRobotInterface_: IInputRobotInterface;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            timeHelper.setStartTimeTNT();
            motionRectangles_ := TMotionRectangles(TJava.ToObject(Self.getMotionRectanglesVector().get(0)));
            motionRectangleVector := motionRectangles_.getVector();
            if (motionRectangleVector.size()) > (0) then begin
                rectangle_ := TRectangle(TJava.ToObject(motionRectangleVector.get(0)));
                robotHashtable := TInputRobotFactory.getInstance().get();
                inputTypeNameArray := robotHashtable.keySet().toArray();
                size := System.Length(inputTypeNameArray);
                for index := 0 to size - 1 do begin
                    inputTypeNameString := TJava.UnboxString(TJava.ToObject(inputTypeNameArray[index]));
                    inputRobotInterface_ := (TJava.ToObject(robotHashtable.get(TJava.Box(inputTypeNameString))) as IInputRobotInterface);
                    inputRobotInterface_.mouseMoveToTarget(rectangle_);
                    if (inputRobotInterface_.getName().compareTo(TTempInputRobotNames.DX_NAME)) = (0) then begin
                        inputRobotInterface_.mousePress(TInputEvent.BUTTON1_MASK);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.mouseRelease(TInputEvent.BUTTON1_MASK);
                        inputRobotInterface_.mousePress(TInputEvent.BUTTON2_MASK);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.mouseRelease(TInputEvent.BUTTON2_MASK);
                        inputRobotInterface_.mousePress(TInputEvent.BUTTON3_MASK);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.mouseRelease(TInputEvent.BUTTON3_MASK);
                        inputRobotInterface_.keyPress(TKeyEvent.VK_1);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.keyRelease(TKeyEvent.VK_1);
                        inputRobotInterface_.keyPress(TKeyEvent.VK_2);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.keyRelease(TKeyEvent.VK_2);
                        inputRobotInterface_.keyPress(TKeyEvent.VK_3);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.keyRelease(TKeyEvent.VK_3);
                        inputRobotInterface_.keyPress(TKeyEvent.VK_4);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.keyRelease(TKeyEvent.VK_4);
                        inputRobotInterface_.keyPress(TKeyEvent.VK_F1);
                        SysUtils.Sleep(300);
                        inputRobotInterface_.keyRelease(TKeyEvent.VK_F1);
                    end;
                end;
            end;
            Inc(Self.index);
            Self.getMotionRectanglesVector().remove(motionRectangles_);
            Self.logUtil.putF((TCommonLabels.getInstance().ELAPSED) + (timeHelper.getElapsedTNT()), TJava.Box(Self), Self.commonStrings.RUN);
            Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), Self.commonStrings.RUN);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


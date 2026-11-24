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
unit SaveMotionRectanglesResultsWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AllBinaryEventObject, CommonStrings, MotionRectanglesResultsEvent, MotionRectanglesResultsListener;

type
  {AB:TYPES}
  TSaveMotionRectanglesResultsWorker = class(TInterfacedObject, IMotionRectanglesResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    running: Boolean;
    motionRectanglesVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getMotionRectanglesVector: TBasicArrayList; virtual;
        procedure onMotionRectanglesImageComparisonResultsEvent(motionRectanglesResultsEvent_: TMotionRectanglesResultsEvent); virtual;
        procedure onEvent(allBinaryEventObject_: TAllBinaryEventObject); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure run; virtual;
  end;

implementation
uses
  MotionRectangles, MotionRectanglesImageInputOutput, BasicArrayListD, StdUtil, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TSaveMotionRectanglesResultsWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TSaveMotionRectanglesResultsWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSaveMotionRectanglesResultsWorker.Create;
begin
    inherited Create;
    InitFields;
        Self.motionRectanglesVector := TBasicArrayListD.Create();
end;
    

function TSaveMotionRectanglesResultsWorker.getMotionRectanglesVector: TBasicArrayList;
begin
        Exit(Self.motionRectanglesVector);
end;
    

procedure TSaveMotionRectanglesResultsWorker.onMotionRectanglesImageComparisonResultsEvent(motionRectanglesResultsEvent_: TMotionRectanglesResultsEvent);
begin
        Self.getMotionRectanglesVector().add(motionRectanglesResultsEvent_);
        Self.run();
end;
    

procedure TSaveMotionRectanglesResultsWorker.onEvent(allBinaryEventObject_: TAllBinaryEventObject);
begin
        Self.onMotionRectanglesImageComparisonResultsEvent(TMotionRectanglesResultsEvent(TJava.ToObject(allBinaryEventObject_)));
end;
    

function TSaveMotionRectanglesResultsWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSaveMotionRectanglesResultsWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSaveMotionRectanglesResultsWorker.run;
var
  timeHelper: TTimeDelayHelper;
  motionRectanglesResultsEvent_: TMotionRectanglesResultsEvent;
  motionRectangles_: TMotionRectangles;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            timeHelper.setStartTimeTNT();
            motionRectanglesResultsEvent_ := TMotionRectanglesResultsEvent(TJava.ToObject(Self.getMotionRectanglesVector().get(0)));
            motionRectangles_ := motionRectanglesResultsEvent_.getMotionRectangles();
            TMotionRectanglesImageInputOutput.Create().save(motionRectangles_, motionRectanglesResultsEvent_.getFrame());
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


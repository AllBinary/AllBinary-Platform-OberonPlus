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
// package org.allbinary.input.automation.module
unit AbstractInputAutomationWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CaptureWorkerInterface, LogUtil, ImageComparisonWorker, MotionRectanglesWorker, CommonStrings, RunnableInterface, InputAutomationActionInterface;

type
  {AB:TYPES}
  TAbstractInputAutomationWorker = class(TInterfacedObject, IRunnableInterface, IRunnable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    index: Int64;
    running: Boolean;
    inputAutomationActionInterface: IInputAutomationActionInterface;
    captureWorkerInterface: ICaptureWorkerInterface;
    imageComparisonWorker: TImageComparisonWorker;
    motionRectanglesWorker: TMotionRectanglesWorker;
    captureThread: TThread;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(inputAutomationActionInterface_: IInputAutomationActionInterface);
        procedure setThread(thread: TThread); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        function isAnyDataWorkerRunning: Boolean; virtual;
        procedure startDataWorkers; virtual;
        procedure waitForDataWorkers; virtual;
        procedure stopDataWorkers; virtual;
        procedure process; virtual;
        procedure run; virtual;
        function getInputAutomationActionInterface: IInputAutomationActionInterface; virtual;
        procedure setInputAutomationActionInterface(inputAutomationActionInterface_: IInputAutomationActionInterface); virtual;
        function getCaptureWorker: ICaptureWorkerInterface; virtual;
        procedure setCaptureWorker(captureWorkerInterface_: ICaptureWorkerInterface); virtual;
        function getImageComparisonWorker: TImageComparisonWorker; virtual;
        procedure setImageComparisonWorker(imageComparisonWorker_: TImageComparisonWorker); virtual;
        function getMotionRectanglesWorker: TMotionRectanglesWorker; virtual;
        procedure setMotionRectanglesWorker(motionRectanglesWorker_: TMotionRectanglesWorker); virtual;
  end;

implementation
uses
  CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TAbstractInputAutomationWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
end;

function TAbstractInputAutomationWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbstractInputAutomationWorker.Create(inputAutomationActionInterface_: IInputAutomationActionInterface);
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TAbstractInputAutomationWorker.setThread(thread: TThread);
begin
end;
    

function TAbstractInputAutomationWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbstractInputAutomationWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbstractInputAutomationWorker.isAnyDataWorkerRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        if ((Self.captureThread) <> (nil)) and (((((not (Self.captureThread.Finished)) or (Self.getCaptureWorker().isRunning())) or (Self.getMotionRectanglesWorker().isRunning())) or (Self.getImageComparisonWorker().isRunning()))) then begin
            Exit(True);
        end;
        Exit(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAbstractInputAutomationWorker.startDataWorkers;
begin
    TJava.MonitorEnter(Self);
    try
        if not (Self.isAnyDataWorkerRunning()) then begin
            Self.captureThread := TThread.Create(True);
            Self.logUtil.putF('Starting CaptureWorkers - Need more images - Thread State: ' + Self.captureThread.getState().toString(), TJava.Box(Self), 'startCaptureWorkers');
            Self.captureThread.start();
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAbstractInputAutomationWorker.waitForDataWorkers;
begin
    TJava.MonitorEnter(Self);
    try
        while Self.isAnyDataWorkerRunning() do begin
            Self.logUtil.putF('Waiting', TJava.Box(Self), Self.commonStrings.RUN);
            SysUtils.Sleep(250);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAbstractInputAutomationWorker.stopDataWorkers;
begin
        Self.getCaptureWorker().setRunning(False);
end;
    

// throws Exception
procedure TAbstractInputAutomationWorker.process;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TAbstractInputAutomationWorker.run;
var
  timeHelper: TTimeDelayHelper;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            while Self.isRunning() do begin
                timeHelper.setStartTimeTNT();
                Self.process();
                Inc(Self.index);
                Self.logUtil.putF(TJava.ToString((TCommonLabels.getInstance().ELAPSED) + (timeHelper.getElapsedTNT())) + ' Index: ' + IntToStr(Self.index), TJava.Box(Self), Self.commonStrings.RUN);
            end;
            Self.stopDataWorkers();
            Self.waitForDataWorkers();
            Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), Self.commonStrings.RUN);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            end;
        end;
end;
    

function TAbstractInputAutomationWorker.getInputAutomationActionInterface: IInputAutomationActionInterface;
begin
        Exit(Self.inputAutomationActionInterface);
end;
    

procedure TAbstractInputAutomationWorker.setInputAutomationActionInterface(inputAutomationActionInterface_: IInputAutomationActionInterface);
begin
        Self.inputAutomationActionInterface := inputAutomationActionInterface_;
end;
    

function TAbstractInputAutomationWorker.getCaptureWorker: ICaptureWorkerInterface;
begin
        Exit(Self.captureWorkerInterface);
end;
    

procedure TAbstractInputAutomationWorker.setCaptureWorker(captureWorkerInterface_: ICaptureWorkerInterface);
begin
        Self.captureWorkerInterface := captureWorkerInterface_;
end;
    

function TAbstractInputAutomationWorker.getImageComparisonWorker: TImageComparisonWorker;
begin
        Exit(Self.imageComparisonWorker);
end;
    

procedure TAbstractInputAutomationWorker.setImageComparisonWorker(imageComparisonWorker_: TImageComparisonWorker);
begin
        Self.imageComparisonWorker := imageComparisonWorker_;
end;
    

function TAbstractInputAutomationWorker.getMotionRectanglesWorker: TMotionRectanglesWorker;
begin
        Exit(Self.motionRectanglesWorker);
end;
    

procedure TAbstractInputAutomationWorker.setMotionRectanglesWorker(motionRectanglesWorker_: TMotionRectanglesWorker);
begin
        Self.motionRectanglesWorker := motionRectanglesWorker_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


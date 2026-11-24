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
// package org.allbinary.input.media.image.capture
unit SaveCapturedImageWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AllBinaryEventObject, BasicEventHandler, CommonStrings, CapturedImageWorkerResultsEvent, CapturedImageWorkerResultsListener;

type
  {AB:TYPES}
  TSaveCapturedImageWorker = class(TBasicEventHandler, ICapturedImageWorkerResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    running: Boolean;
    capturedImageWorkerResultsEventVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure onCaptureEvent(capturedImageEvent: TCapturedImageWorkerResultsEvent); virtual;
        procedure onEvent(allBinaryEventObject_: TAllBinaryEventObject); virtual;
        procedure run; virtual;
  end;

implementation
uses
  CapturedImageInputOutput, BasicArrayListD, StdUtil, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TSaveCapturedImageWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.capturedImageWorkerResultsEventVector := TBasicArrayListD.Create();
end;

function TSaveCapturedImageWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSaveCapturedImageWorker.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TSaveCapturedImageWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSaveCapturedImageWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSaveCapturedImageWorker.onCaptureEvent(capturedImageEvent: TCapturedImageWorkerResultsEvent);
begin
        Self.capturedImageWorkerResultsEventVector.add(TJava.Box(capturedImageEvent));
        Self.run();
end;
    

procedure TSaveCapturedImageWorker.onEvent(allBinaryEventObject_: TAllBinaryEventObject);
begin
        Self.onCaptureEvent(TCapturedImageWorkerResultsEvent(TJava.ToObject(allBinaryEventObject_)));
end;
    

procedure TSaveCapturedImageWorker.run;
var
  timeHelper: TTimeDelayHelper;
  capturedImageWorkerResultsEvent_: TCapturedImageWorkerResultsEvent;
  screenBufferedImage: TBufferedImage;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            timeHelper.setStartTimeTNT();
            capturedImageWorkerResultsEvent_ := (TCapturedImageWorkerResultsEvent(TJava.ToObject(Self.capturedImageWorkerResultsEventVector.get(0))));
            screenBufferedImage := capturedImageWorkerResultsEvent_.getBufferedImage();
            TCapturedImageInputOutput.Create().save(screenBufferedImage, capturedImageWorkerResultsEvent_.getFrame());
            Self.capturedImageWorkerResultsEventVector.remove(capturedImageWorkerResultsEvent_);
            Self.logUtil.putF((TCommonLabels.getInstance().ELAPSED) + (timeHelper.getElapsedTNT()), TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(False);
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


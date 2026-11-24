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
unit ScreenCaptureImagesWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicEventHandler, CommonStrings, ScreenScavangerRobot, CaptureWorkerInterface;

type
  {AB:TYPES}
  TScreenCaptureImagesWorker = class(TBasicEventHandler, ICaptureWorkerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    running: Boolean;
    screenScavangerRobot: TScreenScavangerRobot;
    class var index: Int64;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure setThread(thread: TThread); virtual;
        procedure run; virtual;
  end;

implementation
uses
  ProcessingFrameIndexFactory, CapturedBufferedImagesCacheSingleton, CapturedImageWorkerResultsEvent, BufferedImageFrameCacheable, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TScreenCaptureImagesWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TScreenCaptureImagesWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TScreenCaptureImagesWorker.Create;
begin
    inherited Create;
    InitFields;
        Self.screenScavangerRobot := TScreenScavangerRobot.Create();
        TScreenCaptureImagesWorker.index := TProcessingFrameIndexFactory.next();
end;
    

function TScreenCaptureImagesWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TScreenCaptureImagesWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TScreenCaptureImagesWorker.setThread(thread: TThread);
begin
end;
    

procedure TScreenCaptureImagesWorker.run;
var
  timeHelper: TTimeDelayHelper;
  bufferedImage_: TBufferedImage;
  frame: Int64;
  capturedImageEvent: TCapturedImageWorkerResultsEvent;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            while Self.isRunning() do begin
                timeHelper.setStartTimeTNT();
                bufferedImage_ := Self.screenScavangerRobot.getScreenAsBufferedImages()[0];
                frame := TScreenCaptureImagesWorker.index;
                Inc(TScreenCaptureImagesWorker.index);
                TCapturedBufferedImagesCacheSingleton.getInstance().add(TBufferedImageFrameCacheable.Create(bufferedImage_, frame));
                capturedImageEvent := TCapturedImageWorkerResultsEvent.Create(Self, frame, bufferedImage_);
                Self.fireEvent(capturedImageEvent);
                Self.logUtil.putF((TCommonLabels.getInstance().ELAPSED) + (timeHelper.getElapsedTNT()), TJava.Box(Self), Self.commonStrings.RUN);
                Self.setRunning(False);
            end;
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


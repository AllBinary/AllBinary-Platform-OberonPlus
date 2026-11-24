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
// package org.allbinary.input.automation.module.generic
unit SavedCaptureImagesWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SavedCaptureGenericProfileDataWorkerType, CaptureWorkerInterface, ScreenScavangerRobot, LogUtil, BasicEventHandler, CommonStrings;

type
  {AB:TYPES}
  TSavedCaptureImagesWorker = class(TBasicEventHandler, ICaptureWorkerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    running: Boolean;
    screenScavangerRobot: TScreenScavangerRobot;
    savedCaptureGenericProfileDataWorkerType: TSavedCaptureGenericProfileDataWorkerType;
    class var index: Int64;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(savedCaptureGenericProfileDataWorkerType_: TSavedCaptureGenericProfileDataWorkerType);
        procedure setThread(thread: TThread); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure run; virtual;
  end;

implementation
uses
  CapturedBufferedImagesCacheSingleton, CapturedImageWorkerResultsEvent, ProcessingFrameIndexFactory, LongUtil, StringMaker, MediaDataFactory, BufferedImageFrameCacheable, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TSavedCaptureImagesWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TSavedCaptureImagesWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSavedCaptureImagesWorker.Create(savedCaptureGenericProfileDataWorkerType_: TSavedCaptureGenericProfileDataWorkerType);
begin
    inherited Create;
    InitFields;
        Self.savedCaptureGenericProfileDataWorkerType := savedCaptureGenericProfileDataWorkerType_;
        Self.screenScavangerRobot := TScreenScavangerRobot.Create();
        TSavedCaptureImagesWorker.index := TProcessingFrameIndexFactory.next();
end;
    

// throws Exception
procedure TSavedCaptureImagesWorker.setThread(thread: TThread);
begin
end;
    

function TSavedCaptureImagesWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSavedCaptureImagesWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSavedCaptureImagesWorker.run;
var
  timeHelper: TTimeDelayHelper;
  frame: Int64;
  filePathStringBuffer: TStringMaker;
  filePath: string;
  file_: TFile;
  bufferedImage_: TBufferedImage;
  capturedImageEvent: TCapturedImageWorkerResultsEvent;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            while Self.isRunning() do begin
                timeHelper.setStartTimeTNT();
                frame := TSavedCaptureImagesWorker.index;
                filePathStringBuffer := TStringMaker.Create();
                filePathStringBuffer.append(Self.savedCaptureGenericProfileDataWorkerType.getPath());
                filePathStringBuffer.append(TLongUtil.fillIn(frame.toString()));
                filePathStringBuffer.append(TMediaDataFactory.getInstance().JPG.getExtension());
                filePath := filePathStringBuffer.toString();
                Self.logUtil.putF('Loading Image File Path: ' + filePath, TJava.Box(Self), Self.commonStrings.RUN);
                file_ := TFile.Create(filePath);
                if file_.isFile() then begin
                    bufferedImage_ := TImageIO.read(file_);
                    Inc(TSavedCaptureImagesWorker.index);
                    TCapturedBufferedImagesCacheSingleton.getInstance().add(TBufferedImageFrameCacheable.Create(bufferedImage_, frame));
                    capturedImageEvent := TCapturedImageWorkerResultsEvent.Create(Self, frame, bufferedImage_);
                    Self.fireEvent(capturedImageEvent);
                end else begin
                    Self.logUtil.putF('Could Not Load File: ' + filePath, TJava.Box(Self), Self.commonStrings.RUN);
                end;
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


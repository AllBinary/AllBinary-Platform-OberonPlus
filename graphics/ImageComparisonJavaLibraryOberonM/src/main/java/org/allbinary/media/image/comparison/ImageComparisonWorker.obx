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
// package org.allbinary.media.image.comparison
unit ImageComparisonWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CapturedImageWorkerResultsEvent, CapturedImageWorkerResultsListener, LogUtil, AllBinaryEventObject, BasicEventHandler, CommonStrings, ImageComparatorConstraintsInterface, ImageComparator;

type
  {AB:TYPES}
  TImageComparisonWorker = class(TBasicEventHandler, ICapturedImageWorkerResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    bufferedImageVector: TBasicArrayList;
    imageComparatorConstraintsInterface: IImageComparatorConstraintsInterface;
    imageComparator: TImageComparator;
    running: Boolean;
    index2: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface);
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure onCaptureEvent(capturedImageWorkerResultsEvent_: TCapturedImageWorkerResultsEvent); virtual;
        procedure onEvent(allBinaryEventObject_: TAllBinaryEventObject); virtual;
        procedure run; virtual;
  end;

implementation
uses
  ImageComparisonResult, ImageComparisonResultFrameCacheable, ImageComparisonResultCacheSingleton, ImageComparisonResultsEvent, BasicArrayListD, StdUtil, StringMaker, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TImageComparisonWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.bufferedImageVector := TBasicArrayListD.Create();
  
  
  
  
end;

function TImageComparisonWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageComparisonWorker.Create(imageComparatorConstraintsInterface_: IImageComparatorConstraintsInterface);
begin
    inherited Create;
    InitFields;
        Self.imageComparatorConstraintsInterface := imageComparatorConstraintsInterface_;
        Self.imageComparator := TImageComparator.Create(imageComparatorConstraintsInterface_);
end;
    

function TImageComparisonWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImageComparisonWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImageComparisonWorker.onCaptureEvent(capturedImageWorkerResultsEvent_: TCapturedImageWorkerResultsEvent);
begin
    TJava.MonitorEnter(Self);
    try
        Self.bufferedImageVector.add(TJava.Box(capturedImageWorkerResultsEvent_));
        if (Self.bufferedImageVector.size()) > (1) then begin
            Self.run();
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImageComparisonWorker.onEvent(allBinaryEventObject_: TAllBinaryEventObject);
begin
    TJava.MonitorEnter(Self);
    try
        Self.onCaptureEvent(TCapturedImageWorkerResultsEvent(TJava.ToObject(allBinaryEventObject_)));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImageComparisonWorker.run;
var
  timeHelper: TTimeDelayHelper;
  capturedImageWorkerResultsEvent_: TArray<TCapturedImageWorkerResultsEvent>;
  imageComparisonResult_: TImageComparisonResult;
  frame: Int64;
  imageComparisonResultFrameCacheable_: TImageComparisonResultFrameCacheable;
  message: string;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            timeHelper.setStartTimeTNT();
            if Self.imageComparatorConstraintsInterface.isFrameAllowed(Self.index2) then begin
                capturedImageWorkerResultsEvent_ := TJava.NewArray<TCapturedImageWorkerResultsEvent>(2);
                capturedImageWorkerResultsEvent_[0] := TCapturedImageWorkerResultsEvent(TJava.ToObject(Self.bufferedImageVector.get(0)));
                capturedImageWorkerResultsEvent_[1] := TCapturedImageWorkerResultsEvent(TJava.ToObject(Self.bufferedImageVector.get(1)));
                if (Self.imageComparatorConstraintsInterface.isImageValid(capturedImageWorkerResultsEvent_[0].getBufferedImage())) and (Self.imageComparatorConstraintsInterface.isImageValid(capturedImageWorkerResultsEvent_[1].getBufferedImage())) then begin
                    imageComparisonResult_ := Self.imageComparator.compare(capturedImageWorkerResultsEvent_[0].getBufferedImage(), capturedImageWorkerResultsEvent_[1].getBufferedImage(), capturedImageWorkerResultsEvent_[0].getFrame(), capturedImageWorkerResultsEvent_[1].getFrame(), 0);
                    frame := capturedImageWorkerResultsEvent_[1].getFrame();
                    imageComparisonResultFrameCacheable_ := TImageComparisonResultFrameCacheable.Create(imageComparisonResult_, frame);
                    TImageComparisonResultCacheSingleton.getInstance().add(imageComparisonResultFrameCacheable_);
                    Self.fireEvent(TImageComparisonResultsEvent.Create(Self, imageComparisonResult_));
                    Self.logUtil.putF(TStringMaker.Create().append('Image Comparison Result: ').append(imageComparisonResult_.toString()).append(' for frame: ').appendlong(frame).toString(), TJava.Box(Self), Self.commonStrings.RUN);
                end else begin
                    Self.logUtil.putF('An Image Was Not Valid: Image Worker Event Processing terminated', TJava.Box(Self), Self.commonStrings.RUN);
                end;
            end;
            Self.bufferedImageVector.remove(0);
            Inc(Self.index2);
            message := TStringMaker.Create().append('Frame: ').appendint(Self.index2).append(TCommonLabels.getInstance().ELAPSED).appendlong(Int64(Trunc(timeHelper.getElapsedTNT()))).toString();
            Self.logUtil.putF(message, TJava.Box(Self), Self.commonStrings.RUN);
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


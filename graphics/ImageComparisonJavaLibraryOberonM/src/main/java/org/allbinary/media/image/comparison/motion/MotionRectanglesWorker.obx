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
unit MotionRectanglesWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AllBinaryEventObject, BasicEventHandler, ImageComparisonResultsEvent, ImageComparisonResultsListener, CommonStrings, MotionRectangleConstraintsInterface;

type
  {AB:TYPES}
  TMotionRectanglesWorker = class(TBasicEventHandler, IImageComparisonResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageComparisonInfoVector: TBasicArrayList;
    motionRectangleConstraintsInterface: IMotionRectangleConstraintsInterface;
    index: Int64;
    running: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface);
        procedure onImageComparisonResultsEvent(imageComparisonResultsEvent_: TImageComparisonResultsEvent); virtual;
        procedure onEvent(allBinaryEventObject_: TAllBinaryEventObject); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure run; virtual;
  end;

implementation
uses
  AllMotionRectangles, AllMotionRectanglesResultsCacheSingleton, MotionRectanglesResultsFrameCacheable, ConsolidateMotionRectangles, ConsolidatedMotionRectanglesResultsCacheSingleton, ConstrainedMotionRectangles, ConstrainedMotionRectanglesResultsCacheSingleton, MotionRectanglesResultsEvent, MotionRectangles, BasicArrayListD, StdUtil, ImageComparisonResult, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TMotionRectanglesWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageComparisonInfoVector := TBasicArrayListD.Create();
  
  
  
end;

function TMotionRectanglesWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMotionRectanglesWorker.Create(motionRectangleConstraintsInterface_: IMotionRectangleConstraintsInterface);
begin
    inherited Create;
    InitFields;
        Self.motionRectangleConstraintsInterface := motionRectangleConstraintsInterface_;
end;
    

procedure TMotionRectanglesWorker.onImageComparisonResultsEvent(imageComparisonResultsEvent_: TImageComparisonResultsEvent);
begin
        Self.imageComparisonInfoVector.add(TJava.Box(imageComparisonResultsEvent_));
        Self.run();
end;
    

procedure TMotionRectanglesWorker.onEvent(allBinaryEventObject_: TAllBinaryEventObject);
begin
        Self.onImageComparisonResultsEvent(TImageComparisonResultsEvent(TJava.ToObject(allBinaryEventObject_)));
end;
    

function TMotionRectanglesWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMotionRectanglesWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TMotionRectanglesWorker.run;
var
  timeHelper: TTimeDelayHelper;
  imageComparisonResultsEvent_: TImageComparisonResultsEvent;
  imageComparisonInfo: TImageComparisonResult;
  allMotionRectangles_: TAllMotionRectangles;
  consolidatedMotionRectangles: TConsolidateMotionRectangles;
  constrainedMotionRectangles_: TConstrainedMotionRectangles;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            timeHelper.setStartTimeTNT();
            imageComparisonResultsEvent_ := TImageComparisonResultsEvent(TJava.ToObject(Self.imageComparisonInfoVector.get(0)));
            imageComparisonInfo := TImageComparisonResult(TJava.ToObject(imageComparisonResultsEvent_.getImageComparisonResult()));
            Self.logUtil.putF(imageComparisonInfo.toString(), TJava.Box(Self), Self.commonStrings.RUN);
            allMotionRectangles_ := TAllMotionRectangles.Create(imageComparisonInfo);
            TAllMotionRectanglesResultsCacheSingleton.getInstance().add(TMotionRectanglesResultsFrameCacheable.Create(allMotionRectangles_, imageComparisonInfo.getFrameTwo()));
            consolidatedMotionRectangles := TConsolidateMotionRectangles.Create(allMotionRectangles_);
            TConsolidatedMotionRectanglesResultsCacheSingleton.getInstance().add(TMotionRectanglesResultsFrameCacheable.Create(consolidatedMotionRectangles, imageComparisonInfo.getFrameTwo()));
            constrainedMotionRectangles_ := TConstrainedMotionRectangles.Create(Self.motionRectangleConstraintsInterface, consolidatedMotionRectangles);
            constrainedMotionRectangles_.applyMotionRectangleConstraints(consolidatedMotionRectangles);
            TConstrainedMotionRectanglesResultsCacheSingleton.getInstance().add(TMotionRectanglesResultsFrameCacheable.Create(constrainedMotionRectangles_, imageComparisonInfo.getFrameTwo()));
            Self.fireEvent(TMotionRectanglesResultsEvent.Create(Self, imageComparisonInfo.getFrameTwo(), TMotionRectangles(TJava.ToObject(constrainedMotionRectangles_))));
            Self.imageComparisonInfoVector.remove(imageComparisonResultsEvent_);
            Inc(Self.index);
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


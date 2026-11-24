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
unit SaveImageComparisonWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AllBinaryEventObject, CommonStrings, ImageComparisonResultsEvent, ImageComparisonResultsListener;

type
  {AB:TYPES}
  TSaveImageComparisonWorker = class(TInterfacedObject, IImageComparisonResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    running: Boolean;
    imageComparisonInfoVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure onImageComparisonResultsEvent(imageComparisonResultsEvent_: TImageComparisonResultsEvent); virtual;
        procedure onEvent(allBinaryEventObject_: TAllBinaryEventObject); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure run; virtual;
  end;

implementation
uses
  ImageComparisonResult, ComparisonImageInputOutput, BasicArrayListD, StdUtil, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TSaveImageComparisonWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.imageComparisonInfoVector := TBasicArrayListD.Create();
end;

function TSaveImageComparisonWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSaveImageComparisonWorker.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TSaveImageComparisonWorker.onImageComparisonResultsEvent(imageComparisonResultsEvent_: TImageComparisonResultsEvent);
begin
        Self.imageComparisonInfoVector.add(TJava.Box(imageComparisonResultsEvent_));
        Self.run();
end;
    

procedure TSaveImageComparisonWorker.onEvent(allBinaryEventObject_: TAllBinaryEventObject);
begin
        Self.onImageComparisonResultsEvent(TImageComparisonResultsEvent(TJava.ToObject(allBinaryEventObject_)));
end;
    

function TSaveImageComparisonWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSaveImageComparisonWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TSaveImageComparisonWorker.run;
var
  timeHelper: TTimeDelayHelper;
  imageComparisonResultsEvent_: TImageComparisonResultsEvent;
  imageComparisonInfo: TImageComparisonResult;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            timeHelper.setStartTimeTNT();
            imageComparisonResultsEvent_ := TImageComparisonResultsEvent(TJava.ToObject(Self.imageComparisonInfoVector.get(0)));
            imageComparisonInfo := imageComparisonResultsEvent_.getImageComparisonResult();
            Self.logUtil.putF(imageComparisonInfo.toString(), TJava.Box(Self), Self.commonStrings.RUN);
            TComparisonImageInputOutput.Create().save(imageComparisonInfo, imageComparisonInfo.getFrameTwo());
            Self.imageComparisonInfoVector.remove(imageComparisonInfo);
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


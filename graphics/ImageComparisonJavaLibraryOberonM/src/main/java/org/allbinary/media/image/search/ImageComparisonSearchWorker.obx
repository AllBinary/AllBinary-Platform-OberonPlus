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
// package org.allbinary.media.image.search
unit ImageComparisonSearchWorker;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AllBinaryEventObject, BasicEventHandler, ImageComparisonResultsEvent, ImageComparisonResultsListener, CommonStrings, ImageComparisonSearchConstraintsInterface;

type
  {AB:TYPES}
  TImageComparisonSearchWorker = class(TBasicEventHandler, IImageComparisonResultsListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageComparisonInfoVector: TBasicArrayList;
    index: Int64;
    running: Boolean;
    imageSearchConstraintsInterface: IImageComparisonSearchConstraintsInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(imageSearchConstraintsInterface: IImageComparisonSearchConstraintsInterface);
        procedure onImageComparisonResultsEvent(imageComparisonResultsEvent_: TImageComparisonResultsEvent); virtual;
        procedure onEvent(allBinaryEventObject_: TAllBinaryEventObject); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(running: Boolean); virtual;
        procedure run; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, ImageComparisonResult, CommonLabels, TimeDelayHelper;


{AB:CODE}

procedure TImageComparisonSearchWorker.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
end;

function TImageComparisonSearchWorker.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageComparisonSearchWorker.Create(imageSearchConstraintsInterface: IImageComparisonSearchConstraintsInterface);
begin
    inherited Create;
    InitFields;
        Self.imageComparisonInfoVector := TBasicArrayListD.Create();
        Self.imageSearchConstraintsInterface := imageSearchConstraintsInterface;
end;
    

procedure TImageComparisonSearchWorker.onImageComparisonResultsEvent(imageComparisonResultsEvent_: TImageComparisonResultsEvent);
begin
        Self.imageComparisonInfoVector.add(TJava.Box(imageComparisonResultsEvent_.getImageComparisonResult()));
        Self.run();
end;
    

procedure TImageComparisonSearchWorker.onEvent(allBinaryEventObject_: TAllBinaryEventObject);
begin
        Self.onImageComparisonResultsEvent(TImageComparisonResultsEvent(TJava.ToObject(allBinaryEventObject_)));
end;
    

function TImageComparisonSearchWorker.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.running);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImageComparisonSearchWorker.setRunning(running: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
        Self.running := running;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImageComparisonSearchWorker.run;
var
  timeHelper: TTimeDelayHelper;
  imageComparisonInfo: TImageComparisonResult;
  latestBufferedImage: TBufferedImage;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.RUN);
            Self.setRunning(True);
            timeHelper := TTimeDelayHelper.Create(1000);
            timeHelper.setStartTimeTNT();
            imageComparisonInfo := TImageComparisonResult(TJava.ToObject(Self.imageComparisonInfoVector.get(0)));
            Self.logUtil.putF(imageComparisonInfo.toString(), TJava.Box(Self), Self.commonStrings.RUN);
            latestBufferedImage := imageComparisonInfo.getBufferedImages()[1];
            Self.imageComparisonInfoVector.remove(imageComparisonInfo);
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


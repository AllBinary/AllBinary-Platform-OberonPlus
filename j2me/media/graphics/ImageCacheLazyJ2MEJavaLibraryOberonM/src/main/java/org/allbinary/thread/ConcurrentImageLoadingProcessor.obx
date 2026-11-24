{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.thread
unit ConcurrentImageLoadingProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageCache, LogUtil, ABRunnable, BaseImageLoadingProcessor;

type
  {AB:TYPES}
  TImageCacheRunnable = class(TABRunnable)
  public
    imageCache: TImageCache;
    procedure InitFields;
        constructor Create(imageCache_: TImageCache);
        procedure run; override;
  end;
  TConcurrentImageLoadingProcessor = class(TBaseImageLoadingProcessor)
  public
    logUtil: TLogUtil;
    runnable: TABRunnable;
    procedure InitFields;
        constructor Create(imageCache_: TImageCache);
        procedure runTask; override;
  end;

implementation
uses
  ImageThreadPool, ProgressCanvas, ProgressCanvasFactory, CommonStrings;


{AB:CODE}

procedure TImageCacheRunnable.InitFields;
begin
  
end;
    

    constructor TImageCacheRunnable.Create(imageCache_: TImageCache);
begin
        inherited Create;
        InitFields;
            Self.imageCache := imageCache_;
end;
    

    procedure TImageCacheRunnable.run;
var
  logUtil_: TLogUtil;
  progressCanvas_: TProgressCanvas;
  commonStrings_: TCommonStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            try
                Self.setRunning(True);
                Self.imageCache.waitForLoadNow();
                Self.imageCache.loadImages();
                Self.imageCache.loadRemainingAnimations();
                Self.setRunning(False);
                progressCanvas_ := TProgressCanvasFactory.getInstance();
                if not (progressCanvas_.inProgress) then begin
                    progressCanvas_.endFromInitialLazyLoadingComplete();
                end;
            except
                on e: SysUtils.Exception do begin
                Self.setRunning(False);
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                end;
            end;
end;

procedure TConcurrentImageLoadingProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TConcurrentImageLoadingProcessor.Create(imageCache_: TImageCache);
begin
    inherited Create;
    InitFields;
        Self.runnable := TImageCacheRunnable.Create(imageCache_);
end;
    

procedure TConcurrentImageLoadingProcessor.runTask;
begin
        if not (Self.runnable.isRunning()) then begin
            TImageThreadPool.getInstance().runTask(Self.runnable);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


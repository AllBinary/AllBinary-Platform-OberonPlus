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
// package org.allbinary.graphics.canvas.transition.progress
unit LazyProgressCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, ProgressCanvas;

type
  {AB:TYPES}
  TLazyProgressCanvas = class(TProgressCanvas)
  public
        constructor Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure start; override;
        procedure end_; override;
        procedure inGame; override;
        procedure endFromInitialLazyLoadingComplete; override;
        procedure endIfPaintedSinceStart; override;
  end;

implementation
uses
  Processor, NullPaintable, ImageCacheFactory;


{AB:CODE}
    

constructor TLazyProgressCanvas.Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, backgroundBasicColor, foregroundBasicColor);
end;
    

procedure TLazyProgressCanvas.start;
begin
        inherited start();
        Self.hasPainted := False;
end;
    

procedure TLazyProgressCanvas.end_;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME);
            Self.endActual();
            Self.paintable := Self.GAUGE_PAINTABLE;
            TImageCacheFactory.getInstance().runTask();
            TImageCacheFactory.getInstance().progressEnded();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME);
            end;
        end;
end;
    

procedure TLazyProgressCanvas.inGame;
begin
        Self.inGameProcessor := TProcessor.getInstance();
end;
    

procedure TLazyProgressCanvas.endFromInitialLazyLoadingComplete;
begin
        inherited endFromInitialLazyLoadingComplete();
        Self.paintable := TNullPaintable.getInstance();
end;
    

procedure TLazyProgressCanvas.endIfPaintedSinceStart;
begin
        if ((Self.paintable) = (Self.GAUGE_PAINTABLE)) and (Self.hasPainted) then begin
            Self.endFromInitialLazyLoadingComplete();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


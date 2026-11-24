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
// package org.allbinary.media.image.comparison.pixel
unit PixelDeltaFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AutomaticCacheInterface, PixelDelta;

type
  {AB:TYPES}
  TPixelDeltaFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var cacheInterface: IAutomaticCacheInterface;
    procedure InitFields;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getInstance(x: Integer; y: Integer; rgb1: Integer; rgb2: Integer): TPixelDelta; static;
  end;

implementation
uses
  GPoint, PointFactory, CacheInterfaceFactory, CachePolicyFactory, CacheTypeFactory, ColorDelta, ColorDeltaFactory, CommonStrings;


{AB:CODE}

procedure TPixelDeltaFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class procedure TPixelDeltaFactory.StaticInitializer;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  STATIC_BLOCK: string;
  instance: string;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        instance := 'PixelDeltaFactory';
        try
            logUtil_.putFS(commonStrings_.START, instance, STATIC_BLOCK);
            TPixelDeltaFactory.cacheInterface := (TJava.ToObject(TCacheInterfaceFactory.getInstance(TCacheTypeFactory.getInstance().CACHE, TCachePolicyFactory.getInstance().THIRTY_MINUTES_TEN_THOUSAND_MAX)) as IAutomaticCacheInterface);
            logUtil_.putFS(commonStrings_.END_, instance, STATIC_BLOCK);
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(instance), STATIC_BLOCK, TJava.Box(e));
            end;
        end;
end;
    

constructor TPixelDeltaFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
class function TPixelDeltaFactory.getInstance(x: Integer; y: Integer; rgb1: Integer; rgb2: Integer): TPixelDelta;
var
  point: TGPoint;
  colorDelta_: TColorDelta;
  pixelDelta_: TPixelDelta;
begin
        point := TPointFactory.getInstance().createXY(x, y);
        colorDelta_ := TColorDeltaFactory.getInstance(rgb1, rgb2);
        pixelDelta_ := TPixelDelta(TJava.ToObject(TPixelDeltaFactory.cacheInterface.get(TPixelDelta.getKey(point, colorDelta_))));
        if (pixelDelta_) = (nil) then begin
            pixelDelta_ := TPixelDelta.Create(point, colorDelta_);
        end;
        Exit(pixelDelta_);
end;

initialization
  {AB:INITIALIZATION}
  TPixelDeltaFactory.cacheInterface := nil;
  TPixelDeltaFactory.StaticInitializer;
  {AB:END}

end.


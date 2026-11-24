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
// package org.allbinary.media.image.comparison.color
unit ColorDeltaFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AutomaticCacheInterface, ColorDelta;

type
  {AB:TYPES}
  TColorDeltaFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var cacheInterface: IAutomaticCacheInterface;
    procedure InitFields;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getInstance(rgb1: Integer; rgb2: Integer): TColorDelta; static;
  end;

implementation
uses
  CacheInterfaceFactory, CachePolicyFactory, CacheTypeFactory, CommonStrings;


{AB:CODE}

procedure TColorDeltaFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class procedure TColorDeltaFactory.StaticInitializer;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  STATIC_BLOCK: string;
  instance: string;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        instance := 'ColorDeltaFactory';
        try
            logUtil_.putFS(commonStrings_.START, instance, STATIC_BLOCK);
            TColorDeltaFactory.cacheInterface := (TJava.ToObject(TCacheInterfaceFactory.getInstance(TCacheTypeFactory.getInstance().CACHE, TCachePolicyFactory.getInstance().THIRTY_MINUTES_TEN_THOUSAND_MAX)) as IAutomaticCacheInterface);
            logUtil_.putFS(commonStrings_.END_, instance, STATIC_BLOCK);
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(instance), STATIC_BLOCK, TJava.Box(e));
            end;
        end;
end;
    

constructor TColorDeltaFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
class function TColorDeltaFactory.getInstance(rgb1: Integer; rgb2: Integer): TColorDelta;
var
  colorDelta_: TColorDelta;
begin
        colorDelta_ := TColorDelta(TJava.ToObject(TColorDeltaFactory.cacheInterface.get(TColorDelta.getKey(rgb1, rgb2))));
        if (colorDelta_) = (nil) then begin
            colorDelta_ := TColorDelta.Create(rgb1, rgb2);
        end;
        Exit(colorDelta_);
end;

initialization
  {AB:INITIALIZATION}
  TColorDeltaFactory.cacheInterface := nil;
  TColorDeltaFactory.StaticInitializer;
  {AB:END}

end.


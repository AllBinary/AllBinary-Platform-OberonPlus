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
unit CapturedBufferedImagesCacheSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AutomaticCacheInterface, CacheInterface;

type
  {AB:TYPES}
  TCapturedBufferedImagesCacheSingleton = class(TObject)
  public
    logUtil: TLogUtil;
    class var cacheInterface: IAutomaticCacheInterface;
    procedure InitFields;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getInstance: ICacheInterface; static;
  end;

implementation
uses
  CacheInterfaceFactory, CachePolicyFactory, CacheTypeFactory, CommonStrings;


{AB:CODE}

procedure TCapturedBufferedImagesCacheSingleton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TCapturedBufferedImagesCacheSingleton.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TCapturedBufferedImagesCacheSingleton.getInstance: ICacheInterface;
begin
        Exit(TCapturedBufferedImagesCacheSingleton.cacheInterface);
end;
    

class procedure TCapturedBufferedImagesCacheSingleton.StaticInitializer;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  STATIC_BLOCK: string;
  instance: string;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        instance := 'CapturedBufferedImagesCacheSingleton';
        try
            logUtil_.putFS(commonStrings_.START, instance, STATIC_BLOCK);
            TCapturedBufferedImagesCacheSingleton.cacheInterface := (TJava.ToObject(TCacheInterfaceFactory.getInstance((TCacheTypeFactory.getInstance().SET_), (TCachePolicyFactory.getInstance().ONE_MINUTE_FIVE_MAX))) as IAutomaticCacheInterface);
            logUtil_.putFS(commonStrings_.END_, instance, STATIC_BLOCK);
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(instance), STATIC_BLOCK, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCapturedBufferedImagesCacheSingleton.cacheInterface := nil;
  TCapturedBufferedImagesCacheSingleton.StaticInitializer;
  {AB:END}

end.


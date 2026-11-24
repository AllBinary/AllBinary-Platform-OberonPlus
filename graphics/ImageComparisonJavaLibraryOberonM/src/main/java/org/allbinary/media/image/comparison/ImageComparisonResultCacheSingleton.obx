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
unit ImageComparisonResultCacheSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CacheInterface;

type
  {AB:TYPES}
  TImageComparisonResultCacheSingleton = class(TObject)
  public
    logUtil: TLogUtil;
    class var cacheInterface: ICacheInterface;
    procedure InitFields;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getInstance: ICacheInterface; static;
  end;

implementation
uses
  CacheInterfaceFactory, CachePolicyFactory, CacheTypeFactory, CommonStrings;


{AB:CODE}

procedure TImageComparisonResultCacheSingleton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class procedure TImageComparisonResultCacheSingleton.StaticInitializer;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  STATIC_BLOCK: string;
  instance: string;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        instance := 'ImageComparisonCacheSingleton';
        try
            logUtil_.putFS(commonStrings_.START, instance, STATIC_BLOCK);
            TImageComparisonResultCacheSingleton.cacheInterface := TCacheInterfaceFactory.getInstance(TCacheTypeFactory.getInstance().CACHE, TCachePolicyFactory.getInstance().ONE_MINUTE_FIVE_MAX);
            logUtil_.putFS(commonStrings_.END_, instance, STATIC_BLOCK);
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(instance), STATIC_BLOCK, TJava.Box(e));
            end;
        end;
end;
    

constructor TImageComparisonResultCacheSingleton.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TImageComparisonResultCacheSingleton.getInstance: ICacheInterface;
begin
        Exit(TImageComparisonResultCacheSingleton.cacheInterface);
end;

initialization
  {AB:INITIALIZATION}
  TImageComparisonResultCacheSingleton.cacheInterface := nil;
  TImageComparisonResultCacheSingleton.StaticInitializer;
  {AB:END}

end.


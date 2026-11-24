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
// package org.allbinary.media.image.cache
unit BufferedImagePoolSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PoolInterface;

type
  {AB:TYPES}
  TBufferedImagePoolSingleton = class(TObject)
  public
    class var poolInterface: IPoolInterface;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getInstance: IPoolInterface; static;
  end;

implementation
uses
  BufferedImageCacheableFactory, LogUtil, CachePolicyFactory, PoolInterfaceFactory, PoolTypeFactory, CommonStrings;


{AB:CODE}
    

class procedure TBufferedImagePoolSingleton.StaticInitializer;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  STATIC_BLOCK: string;
  instance: string;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        instance := 'BufferedImagePoolSingleton';
        try
            logUtil_.putFS(commonStrings_.START, instance, STATIC_BLOCK);
            TBufferedImagePoolSingleton.poolInterface := TPoolInterfaceFactory.getInstance(TBufferedImageCacheableFactory.Create(), TPoolTypeFactory.getInstance().VECTOR_POOL, TCachePolicyFactory.getInstance().MAX_TIME_THOUSAND_MAX);
            logUtil_.putFS(commonStrings_.END_, instance, STATIC_BLOCK);
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(instance), STATIC_BLOCK, TJava.Box(e));
            end;
        end;
end;
    

constructor TBufferedImagePoolSingleton.Create;
begin
    inherited Create;
end;
    

class function TBufferedImagePoolSingleton.getInstance: IPoolInterface;
begin
        Exit(TBufferedImagePoolSingleton.poolInterface);
end;

initialization
  {AB:INITIALIZATION}
  TBufferedImagePoolSingleton.poolInterface := nil;
  TBufferedImagePoolSingleton.StaticInitializer;
  {AB:END}

end.


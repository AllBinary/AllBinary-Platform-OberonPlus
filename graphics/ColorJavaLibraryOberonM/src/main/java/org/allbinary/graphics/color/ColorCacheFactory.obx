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
// package org.allbinary.graphics.color
unit ColorCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AutomaticCacheInterface;

type
  {AB:TYPES}
  TColorCacheFactory = class(TObject)
  public
    class var cacheInterface: IAutomaticCacheInterface;
    class procedure StaticInitializer; static;
        constructor Create;
        class function getInstance: IAutomaticCacheInterface; static;
  end;

implementation
uses
  ColorCacheableFactory, LogUtil, AutomaticCacheInterfaceFactory, CachePolicyFactory, CacheTypeFactory, CommonStrings;


{AB:CODE}
    

class procedure TColorCacheFactory.StaticInitializer;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  STATIC_BLOCK: string;
begin
        logUtil_ := TLogUtil.getInstance();
        commonStrings_ := TCommonStrings.getInstance();
        STATIC_BLOCK := 'Static Block';
        try
            logUtil_.putF(commonStrings_.START, TJava.Box(TColorCacheFactory), STATIC_BLOCK);
            TColorCacheFactory.cacheInterface := TAutomaticCacheInterfaceFactory.getInstance(TColorCacheableFactory.Create(), TCacheTypeFactory.getInstance().CACHE, TCachePolicyFactory.getInstance().THIRTY_MINUTES_TEN_THOUSAND_MAX);
            logUtil_.putF(commonStrings_.END_, TJava.Box(TColorCacheFactory), STATIC_BLOCK);
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(TColorCacheFactory), STATIC_BLOCK, TJava.Box(e));
            end;
        end;
end;
    

constructor TColorCacheFactory.Create;
begin
    inherited Create;
end;
    

class function TColorCacheFactory.getInstance: IAutomaticCacheInterface;
begin
        Exit(TColorCacheFactory.cacheInterface);
end;

initialization
  {AB:INITIALIZATION}
  TColorCacheFactory.cacheInterface := nil;
  TColorCacheFactory.StaticInitializer;
  {AB:END}

end.


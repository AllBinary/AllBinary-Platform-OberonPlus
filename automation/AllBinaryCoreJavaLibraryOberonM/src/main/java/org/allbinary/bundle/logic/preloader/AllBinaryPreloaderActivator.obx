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
// package org.allbinary.bundle.logic.preloader
unit AllBinaryPreloaderActivator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BundleActivator, BundleContext, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TAllBinaryPreloaderActivator = class(TInterfacedObject, IBundleActivator)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var context: TBundleContext;
    class var CRYPT_REGISTRY_NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        class function getBundleContext: TBundleContext; static;
        procedure start(context: TBundleContext); virtual;
        procedure registerAsService; virtual;
        procedure stop(context: TBundleContext); virtual;
  end;

implementation
uses
  ServiceReference, ServiceRegistration, CryptServiceFactory, StdUtil, ABHashtable;


{AB:CODE}

procedure TAllBinaryPreloaderActivator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TAllBinaryPreloaderActivator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAllBinaryPreloaderActivator.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TAllBinaryPreloaderActivator.getBundleContext: TBundleContext;
begin
        Exit(TAllBinaryPreloaderActivator.context);
end;
    

// throws Exception
procedure TAllBinaryPreloaderActivator.start(context: TBundleContext);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'start');
            TAllBinaryPreloaderActivator.context := context;
            Self.registerAsService();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'start', TJava.Box(e));
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryPreloaderActivator.registerAsService;
var
  properties: TABHashtable<TObject, TObject>;
  serviceRegistration_: TServiceRegistration;
  serviceReference_: TServiceReference;
begin
        properties := TStdUtil.getInstance().createHashtable();
        serviceRegistration_ := TAllBinaryPreloaderActivator.context.registerService(TAllBinaryPreloaderActivator.CRYPT_REGISTRY_NAME, TCryptServiceFactory.Create(), properties);
        serviceReference_ := serviceRegistration_.getReference();
        serviceReference_ := TAllBinaryPreloaderActivator.context.getServiceReference(TAllBinaryPreloaderActivator.CRYPT_REGISTRY_NAME);
        if (serviceReference_) = (nil) then begin
            raise SysUtils.Exception.Create('No Such Service Reference');
        end;
end;
    

// throws Exception
procedure TAllBinaryPreloaderActivator.stop(context: TBundleContext);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'stop');
end;

initialization
  {AB:INITIALIZATION}
  
  TAllBinaryPreloaderActivator.CRYPT_REGISTRY_NAME := 'bundle.abcs.logic.system.loader.CryptService';
  {AB:END}

end.


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
// package org.allbinary.osgi.service
unit InputAutomationServiceConsumer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BundleContext, ServiceReference, LogUtil, OSGIServiceVisitorInterface, CommonStrings, OSGIServiceUtil;

type
  {AB:TYPES}
  TInputAutomationServiceConsumer = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    osgiServiceUtil: TOSGIServiceUtil;
    registryName: string;
    bundleContext: TBundleContext;
    osgiServiceVisitorInterface: IOSGIServiceVisitorInterface;
    procedure InitFields;
        constructor Create(registryName: string; bundleContext_: TBundleContext; osgiServiceVisitorInterface_: IOSGIServiceVisitorInterface);
        procedure process; virtual;
        function getServiceReferences: TArray<TServiceReference>;
        function getBundleContext: TBundleContext; virtual;
        procedure setBundleContext(aBundleContext: TBundleContext); virtual;
        function getRegistryName: string; virtual;
        procedure setRegistryName(registryName: string); virtual;
        function getOsgiServiceVisitorInterface: IOSGIServiceVisitorInterface; virtual;
        procedure setOsgiServiceVisitorInterface(osgiServiceVisitorInterface_: IOSGIServiceVisitorInterface); virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, OSGIServiceInterface;


{AB:CODE}

procedure TInputAutomationServiceConsumer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.osgiServiceUtil := TOSGIServiceUtil.getInstance();
  
  
  
end;
    

constructor TInputAutomationServiceConsumer.Create(registryName: string; bundleContext_: TBundleContext; osgiServiceVisitorInterface_: IOSGIServiceVisitorInterface);
begin
    inherited Create;
    InitFields;
        Self.setRegistryName(registryName);
        Self.setBundleContext(bundleContext_);
        Self.setOsgiServiceVisitorInterface(osgiServiceVisitorInterface_);
end;
    

// throws Exception
procedure TInputAutomationServiceConsumer.process;
var
  vector: TBasicArrayList;
  size: Integer;
  osgiServiceInterface_: IOSGIServiceInterface;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.PROCESS);
        vector := Self.osgiServiceUtil.getServicesObjectVector(Self.getBundleContext(), Self.getServiceReferences());
        Self.logUtil.putF('Processing ' + IntToStr(vector.size()) + ' Services', TJava.Box(Self), Self.commonStrings.PROCESS);
        size := vector.size();
        
        for index := 0 to size - 1 do begin
            osgiServiceInterface_ := (TJava.ToObject(vector.get(index)) as IOSGIServiceInterface);
            if not (Self.getOsgiServiceVisitorInterface().visit(osgiServiceInterface_)) then begin
                raise SysUtils.Exception.Create('Unable to process service: ' + TJava.ToString(osgiServiceInterface_));
            end;
        end;
end;
    

// throws Exception
function TInputAutomationServiceConsumer.getServiceReferences: TArray<TServiceReference>;
begin
        Exit(Self.getBundleContext().getServiceReferences(Self.getRegistryName(), nil));
end;
    

function TInputAutomationServiceConsumer.getBundleContext: TBundleContext;
begin
        Exit(Self.bundleContext);
end;
    

procedure TInputAutomationServiceConsumer.setBundleContext(aBundleContext: TBundleContext);
begin
        Self.bundleContext := aBundleContext;
end;
    

function TInputAutomationServiceConsumer.getRegistryName: string;
begin
        Exit(Self.registryName);
end;
    

procedure TInputAutomationServiceConsumer.setRegistryName(registryName: string);
begin
        Self.registryName := registryName;
end;
    

function TInputAutomationServiceConsumer.getOsgiServiceVisitorInterface: IOSGIServiceVisitorInterface;
begin
        Exit(Self.osgiServiceVisitorInterface);
end;
    

procedure TInputAutomationServiceConsumer.setOsgiServiceVisitorInterface(osgiServiceVisitorInterface_: IOSGIServiceVisitorInterface);
begin
        Self.osgiServiceVisitorInterface := osgiServiceVisitorInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


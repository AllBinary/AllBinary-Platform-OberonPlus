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
// package org.allbinary.input.automation.module.osgi
unit InputAutomationModuleBundleActivator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BundleActivator, BundleContext, ServiceFactory, InputAutomationConfigurationModuleChangeListener, InputAutomationModuleFactoryInterface, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TInputAutomationModuleBundleActivator = class(TInterfacedObject, IBundleActivator)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    inputAutomationModuleInterface: TArray<IInputAutomationModuleFactoryInterface>;
    serviceFactory: TServiceFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure init; virtual;
        function getInputAutomationConfigurationModuleChangeListener(context: TBundleContext): TInputAutomationConfigurationModuleChangeListener;
        procedure addModules(context: TBundleContext);
        procedure registerAsService(bundleContext_: TBundleContext); virtual;
        procedure removeModules(context: TBundleContext);
        procedure start(context: TBundleContext); virtual;
        procedure stop(context: TBundleContext); virtual;
        function getInputAutomationModuleInterface: TArray<IInputAutomationModuleFactoryInterface>; virtual;
        procedure setInputAutomationModuleInterface(inputAutomationModuleInterface: TArray<IInputAutomationModuleFactoryInterface>); virtual;
        function getServiceFactory: TObject; virtual;
        procedure setServiceFactory(serviceObject: TServiceFactory); virtual;
  end;

implementation
uses
  ServiceReference, InputAutomationModuleServiceInterface, InputAutomationConfigurationModuleChangeEvent, InputAutomationConfigurationUtil, OSGIActivatorUtil;


{AB:CODE}

procedure TInputAutomationModuleBundleActivator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TInputAutomationModuleBundleActivator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationModuleBundleActivator.Create;
begin
    inherited Create;
    InitFields;
        Self.init();
end;
    

// throws Exception
procedure TInputAutomationModuleBundleActivator.init;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TInputAutomationModuleBundleActivator.getInputAutomationConfigurationModuleChangeListener(context: TBundleContext): TInputAutomationConfigurationModuleChangeListener;
var
  serviceReference_: TServiceReference;
  inputAutomationConfigurationModuleChangeListener_: TInputAutomationConfigurationModuleChangeListener;
begin
        serviceReference_ := context.getServiceReference(TInputAutomationConfigurationModuleChangeListener.getName());
        if (serviceReference_) <> (nil) then begin
            inputAutomationConfigurationModuleChangeListener_ := TInputAutomationConfigurationModuleChangeListener(TJava.ToObject(context.getService(serviceReference_)));
            if (inputAutomationConfigurationModuleChangeListener_) = (nil) then begin
                raise SysUtils.Exception.Create('No Service For ServiceReference');
            end;
            Exit(inputAutomationConfigurationModuleChangeListener_);
        end else begin
            Self.logUtil.putF('No ServiceReference: ' + TInputAutomationConfigurationModuleChangeListener.getName(), TJava.Box(Self), 'addModules');
            Exit(nil);
        end;
end;
    

procedure TInputAutomationModuleBundleActivator.addModules(context: TBundleContext);
var
  inputAutomationConfigurationModuleChangeListener_: TInputAutomationConfigurationModuleChangeListener;
  inputAutomationConfigurationModuleChangeEvent_: TInputAutomationConfigurationModuleChangeEvent;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'addModules');
            inputAutomationConfigurationModuleChangeListener_ := Self.getInputAutomationConfigurationModuleChangeListener(context);
            if (inputAutomationConfigurationModuleChangeListener_) <> (nil) then begin
                for index := 0 to System.Length(Self.getInputAutomationModuleInterface()) - 1 do begin
                    inputAutomationConfigurationModuleChangeEvent_ := TInputAutomationConfigurationUtil.getChangeEvent(Self.getInputAutomationModuleInterface()[index]);
                    inputAutomationConfigurationModuleChangeListener_.onAdd(inputAutomationConfigurationModuleChangeEvent_);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'addModules');
            end;
        end;
end;
    

// throws Exception
procedure TInputAutomationModuleBundleActivator.registerAsService(bundleContext_: TBundleContext);
begin
        TOSGIActivatorUtil.registerAsService(bundleContext_, Self.getServiceFactory(), IInputAutomationModuleServiceInterface.getName());
end;
    

procedure TInputAutomationModuleBundleActivator.removeModules(context: TBundleContext);
var
  inputAutomationConfigurationModuleChangeListener_: TInputAutomationConfigurationModuleChangeListener;
  inputAutomationConfigurationModuleChangeEvent_: TInputAutomationConfigurationModuleChangeEvent;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'removeModules');
            inputAutomationConfigurationModuleChangeListener_ := Self.getInputAutomationConfigurationModuleChangeListener(context);
            if (inputAutomationConfigurationModuleChangeListener_) <> (nil) then begin
                for index := 0 to System.Length(Self.getInputAutomationModuleInterface()) - 1 do begin
                    inputAutomationConfigurationModuleChangeEvent_ := TInputAutomationConfigurationUtil.getChangeEvent(Self.getInputAutomationModuleInterface()[index]);
                    inputAutomationConfigurationModuleChangeListener_.onRemove(inputAutomationConfigurationModuleChangeEvent_);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removeModules');
            end;
        end;
end;
    

// throws Exception
procedure TInputAutomationModuleBundleActivator.start(context: TBundleContext);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.START);
        Self.addModules(context);
        Self.registerAsService(context);
end;
    

// throws Exception
procedure TInputAutomationModuleBundleActivator.stop(context: TBundleContext);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'stop');
        Self.removeModules(context);
end;
    

function TInputAutomationModuleBundleActivator.getInputAutomationModuleInterface: TArray<IInputAutomationModuleFactoryInterface>;
begin
        Exit(Self.inputAutomationModuleInterface);
end;
    

procedure TInputAutomationModuleBundleActivator.setInputAutomationModuleInterface(inputAutomationModuleInterface: TArray<IInputAutomationModuleFactoryInterface>);
begin
        Self.inputAutomationModuleInterface := inputAutomationModuleInterface;
end;
    

function TInputAutomationModuleBundleActivator.getServiceFactory: TObject;
begin
        Exit(TJava.Box(Self.serviceFactory));
end;
    

procedure TInputAutomationModuleBundleActivator.setServiceFactory(serviceObject: TServiceFactory);
begin
        Self.serviceFactory := serviceObject;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


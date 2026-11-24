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
// package org.allbinary.input.automation.robot.osgi
unit InputAutomationRobotBundleActivator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BundleActivator, BundleContext, ServiceFactory, InputAutomationRobotChangeListener, InputRobotInterface, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TInputAutomationRobotBundleActivator = class(TInterfacedObject, IBundleActivator)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    inputRobotInterface: TArray<IInputRobotInterface>;
    serviceFactory: TServiceFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure init; virtual;
        procedure registerAsService(bundleContext_: TBundleContext); virtual;
        function getInputAutomationRobotChangeListener(context: TBundleContext): TInputAutomationRobotChangeListener;
        procedure addRobots(context: TBundleContext);
        procedure removeRobots(context: TBundleContext);
        procedure start(context: TBundleContext); virtual;
        procedure stop(context: TBundleContext); virtual;
        function getServiceFactory: TObject; virtual;
        procedure setServiceFactory(serviceObject: TServiceFactory); virtual;
        function getInputRobotInterface: TArray<IInputRobotInterface>; virtual;
        procedure setInputRobotInterface(inputRobotInterface: TArray<IInputRobotInterface>); virtual;
  end;

implementation
uses
  InputAutomationRobotUtil, InputAutomationRobotChangeEvent, ServiceReference, InputAutomationRobotServiceInterface, OSGIActivatorUtil;


{AB:CODE}

procedure TInputAutomationRobotBundleActivator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TInputAutomationRobotBundleActivator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationRobotBundleActivator.Create;
begin
    inherited Create;
    InitFields;
        Self.init();
end;
    

// throws Exception
procedure TInputAutomationRobotBundleActivator.init;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TInputAutomationRobotBundleActivator.registerAsService(bundleContext_: TBundleContext);
begin
        TOSGIActivatorUtil.registerAsService(bundleContext_, Self.getServiceFactory(), IInputAutomationRobotServiceInterface.getName());
end;
    

// throws Exception
function TInputAutomationRobotBundleActivator.getInputAutomationRobotChangeListener(context: TBundleContext): TInputAutomationRobotChangeListener;
var
  serviceReference_: TServiceReference;
  inputAutomationRobotChangeListener_: TInputAutomationRobotChangeListener;
begin
        serviceReference_ := context.getServiceReference(TInputAutomationRobotChangeListener.getName());
        if (serviceReference_) <> (nil) then begin
            inputAutomationRobotChangeListener_ := TInputAutomationRobotChangeListener(TJava.ToObject(context.getService(serviceReference_)));
            if (inputAutomationRobotChangeListener_) = (nil) then begin
                raise SysUtils.Exception.Create('No Service For ServiceReference');
            end;
            Exit(inputAutomationRobotChangeListener_);
        end else begin
            Self.logUtil.putF('No ServiceReference: ' + TInputAutomationRobotChangeListener.getName(), TJava.Box(Self), 'getInputAutomationRobotChangeListener');
            Exit(nil);
        end;
end;
    

procedure TInputAutomationRobotBundleActivator.addRobots(context: TBundleContext);
var
  inputAutomationRobotChangeListener_: TInputAutomationRobotChangeListener;
  inputAutomationRobotChangeEvent_: TInputAutomationRobotChangeEvent;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'addRobots');
            inputAutomationRobotChangeListener_ := Self.getInputAutomationRobotChangeListener(context);
            if (inputAutomationRobotChangeListener_) <> (nil) then begin
                for index := 0 to System.Length(Self.getInputRobotInterface()) - 1 do begin
                    inputAutomationRobotChangeEvent_ := TInputAutomationRobotUtil.getChangeEvent(Self.getInputRobotInterface()[index]);
                    inputAutomationRobotChangeListener_.onAdd(inputAutomationRobotChangeEvent_);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'addModules');
            end;
        end;
end;
    

procedure TInputAutomationRobotBundleActivator.removeRobots(context: TBundleContext);
var
  inputAutomationRobotChangeListener_: TInputAutomationRobotChangeListener;
  inputAutomationRobotChangeEvent_: TInputAutomationRobotChangeEvent;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'removeRobots');
            inputAutomationRobotChangeListener_ := Self.getInputAutomationRobotChangeListener(context);
            if (inputAutomationRobotChangeListener_) <> (nil) then begin
                for index := 0 to System.Length(Self.getInputRobotInterface()) - 1 do begin
                    inputAutomationRobotChangeEvent_ := TInputAutomationRobotUtil.getChangeEvent(Self.getInputRobotInterface()[index]);
                    inputAutomationRobotChangeListener_.onRemove(inputAutomationRobotChangeEvent_);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removeRobots');
            end;
        end;
end;
    

// throws Exception
procedure TInputAutomationRobotBundleActivator.start(context: TBundleContext);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.START);
        Self.addRobots(context);
        Self.registerAsService(context);
end;
    

// throws Exception
procedure TInputAutomationRobotBundleActivator.stop(context: TBundleContext);
begin
        Self.logUtil.putF('Stop', TJava.Box(Self), Self.commonStrings.START);
        Self.removeRobots(context);
end;
    

function TInputAutomationRobotBundleActivator.getServiceFactory: TObject;
begin
        Exit(TJava.Box(Self.serviceFactory));
end;
    

procedure TInputAutomationRobotBundleActivator.setServiceFactory(serviceObject: TServiceFactory);
begin
        Self.serviceFactory := serviceObject;
end;
    

function TInputAutomationRobotBundleActivator.getInputRobotInterface: TArray<IInputRobotInterface>;
begin
        Exit(Self.inputRobotInterface);
end;
    

procedure TInputAutomationRobotBundleActivator.setInputRobotInterface(inputRobotInterface: TArray<IInputRobotInterface>);
begin
        Self.inputRobotInterface := inputRobotInterface;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


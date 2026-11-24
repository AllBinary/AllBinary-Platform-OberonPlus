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
unit InputAutomationModuleServiceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bundle, ServiceFactory, ServiceRegistration, InputAutomationModuleFactoryInterface, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TInputAutomationModuleServiceFactory = class(TInterfacedObject, IServiceFactory)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    inputAutomationModuleInterfaceArray: TArray<IInputAutomationModuleFactoryInterface>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getService(bundle_: TBundle; registration: TServiceRegistration): TObject; virtual;
        procedure ungetService(bundle_: TBundle; registration: TServiceRegistration; service: TObject); virtual;
        function getInputAutomationModuleInterfaceArray: TArray<IInputAutomationModuleFactoryInterface>; virtual;
        procedure setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray: TArray<IInputAutomationModuleFactoryInterface>); virtual;
  end;

implementation
uses
  InputAutomationModuleService;


{AB:CODE}

procedure TInputAutomationModuleServiceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TInputAutomationModuleServiceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationModuleServiceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInputAutomationModuleServiceFactory.getService(bundle_: TBundle; registration: TServiceRegistration): TObject;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getService');
        Exit(TJava.Box(TInputAutomationModuleService.Create(Self.getInputAutomationModuleInterfaceArray())));
end;
    

procedure TInputAutomationModuleServiceFactory.ungetService(bundle_: TBundle; registration: TServiceRegistration; service: TObject);
begin
end;
    

function TInputAutomationModuleServiceFactory.getInputAutomationModuleInterfaceArray: TArray<IInputAutomationModuleFactoryInterface>;
begin
        Exit(Self.inputAutomationModuleInterfaceArray);
end;
    

procedure TInputAutomationModuleServiceFactory.setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray: TArray<IInputAutomationModuleFactoryInterface>);
begin
        Self.inputAutomationModuleInterfaceArray := inputAutomationModuleInterfaceArray;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


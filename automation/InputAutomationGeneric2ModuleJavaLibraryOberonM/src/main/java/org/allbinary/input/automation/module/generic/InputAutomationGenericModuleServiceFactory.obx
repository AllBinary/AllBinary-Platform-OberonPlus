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
// package org.allbinary.input.automation.module.generic
unit InputAutomationGenericModuleServiceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputAutomationModuleServiceFactory, LogUtil;

type
  {AB:TYPES}
  TInputAutomationGenericModuleServiceFactory = class(TInputAutomationModuleServiceFactory)
  public
    logUtil: TLogUtil;
    class var inputAutomationGenericModuleServiceFactory: TInputAutomationGenericModuleServiceFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TInputAutomationGenericModuleServiceFactory; static;
  end;

implementation
uses
  GenericModuleFactory, InputAutomationModuleFactoryInterface;


{AB:CODE}

procedure TInputAutomationGenericModuleServiceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TInputAutomationGenericModuleServiceFactory.Create;
var
  inputAutomationModuleInterfaceArray: TArray<IInputAutomationModuleFactoryInterface>;
begin
    inherited Create;
    InitFields;
        try
            inputAutomationModuleInterfaceArray := TJava.NewArray<IInputAutomationModuleFactoryInterface>(1);
            inputAutomationModuleInterfaceArray[0] := TGenericModuleFactory.Create();
            Self.setInputAutomationModuleInterfaceArray(inputAutomationModuleInterfaceArray);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

class function TInputAutomationGenericModuleServiceFactory.getInstance: TInputAutomationGenericModuleServiceFactory;
begin
        Exit(TInputAutomationGenericModuleServiceFactory.inputAutomationGenericModuleServiceFactory);
end;

initialization
  {AB:INITIALIZATION}
  TInputAutomationGenericModuleServiceFactory.inputAutomationGenericModuleServiceFactory := TInputAutomationGenericModuleServiceFactory.Create();
  {AB:END}

end.


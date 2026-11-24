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
// package bundle.input.automation.module.generic
unit InputAutomationGenericModuleBundleActivator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputAutomationModuleBundleActivator;

type
  {AB:TYPES}
  TInputAutomationGenericModuleBundleActivator = class(TInputAutomationModuleBundleActivator)
  public
        constructor Create;
        procedure init; virtual;
  end;

implementation
uses
  InputAutomationGenericModuleServiceFactory;


{AB:CODE}
    

constructor TInputAutomationGenericModuleBundleActivator.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TInputAutomationGenericModuleBundleActivator.init;
var
  inputAutomationGenericModuleServiceFactory_: TInputAutomationGenericModuleServiceFactory;
begin
        inputAutomationGenericModuleServiceFactory_ := TInputAutomationGenericModuleServiceFactory.getInstance();
        Self.setInputAutomationModuleInterface(inputAutomationGenericModuleServiceFactory_.getInputAutomationModuleInterfaceArray());
        Self.setServiceFactory(inputAutomationGenericModuleServiceFactory_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


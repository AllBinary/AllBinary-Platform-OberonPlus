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
// package org.allbinary.input.automation.configuration
unit InputAutomationConfigurationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputAutomationModuleFactoryInterface, InputAutomationConfigurationModuleChangeEvent;

type
  {AB:TYPES}
  TInputAutomationConfigurationUtil = class(TObject)
  public
        constructor Create;
        class function getChangeEvent(inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface): TInputAutomationConfigurationModuleChangeEvent; static;
  end;

implementation
uses
  InputAutomationModuleConfiguration;


{AB:CODE}
    

constructor TInputAutomationConfigurationUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TInputAutomationConfigurationUtil.getChangeEvent(inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface): TInputAutomationConfigurationModuleChangeEvent;
var
  inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration;
  inputAutomationConfigurationModuleChangeEvent_: TInputAutomationConfigurationModuleChangeEvent;
begin
        inputAutomationModuleConfiguration_ := TInputAutomationModuleConfiguration.Create(inputAutomationModuleInterface);
        inputAutomationConfigurationModuleChangeEvent_ := TInputAutomationConfigurationModuleChangeEvent.Create(inputAutomationModuleConfiguration_);
        Exit(inputAutomationConfigurationModuleChangeEvent_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


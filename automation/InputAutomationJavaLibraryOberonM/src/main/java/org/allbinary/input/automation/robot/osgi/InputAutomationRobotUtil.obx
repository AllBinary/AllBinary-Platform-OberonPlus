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
unit InputAutomationRobotUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputRobotInterface, InputAutomationRobotChangeEvent;

type
  {AB:TYPES}
  TInputAutomationRobotUtil = class(TObject)
  public
        constructor Create;
        class function getChangeEvent(inputRobotInterface_: IInputRobotInterface): TInputAutomationRobotChangeEvent; static;
  end;

implementation
uses
  InputAutomationRobotInterfaceWrapper;


{AB:CODE}
    

constructor TInputAutomationRobotUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TInputAutomationRobotUtil.getChangeEvent(inputRobotInterface_: IInputRobotInterface): TInputAutomationRobotChangeEvent;
var
  inputAutomationRobotInterfaceWrapper_: TInputAutomationRobotInterfaceWrapper;
  inputAutomationRobotChangeEvent_: TInputAutomationRobotChangeEvent;
begin
        inputAutomationRobotInterfaceWrapper_ := TInputAutomationRobotInterfaceWrapper.Create(inputRobotInterface_);
        inputAutomationRobotChangeEvent_ := TInputAutomationRobotChangeEvent.Create(inputAutomationRobotInterfaceWrapper_);
        Exit(inputAutomationRobotChangeEvent_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


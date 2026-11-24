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
unit InputAutomationRobotServiceConsumer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BundleContext, InputAutomationServiceConsumer;

type
  {AB:TYPES}
  TInputAutomationRobotServiceConsumer = class(TInputAutomationServiceConsumer)
  public
        constructor Create(bundleContext_: TBundleContext);
  end;

implementation
uses
  InputAutomationRobotOSGIServiceVisitor, InputAutomationRobotServiceInterface;


{AB:CODE}
    

constructor TInputAutomationRobotServiceConsumer.Create(bundleContext_: TBundleContext);
begin
        inherited Create(IInputAutomationRobotServiceInterface.getName(), bundleContext_, TInputAutomationRobotOSGIServiceVisitor.Create());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


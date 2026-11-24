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
unit GenericModuleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbstractInputAutomationFactory, RunnableInterface;

type
  {AB:TYPES}
  TGenericModuleFactory = class(TAbstractInputAutomationFactory)
  public
    class var NAME: string;
        constructor Create;
        function getInstance: IRunnableInterface; virtual;
  end;

implementation
uses
  GenericInputAutomationAction, GenericInputAutomationWorker, InputAutomationActionInterface, InputAutomationModuleData, GenericModuleConfigurationJPanel, GenericProfile, NoImageComparatorConstraints, NoMotionRectangleConstraints;


{AB:CODE}
    

constructor TGenericModuleFactory.Create;
begin
        inherited Create(TGenericModuleFactory.NAME, TGenericModuleConfigurationJPanel.Create());
end;
    

// throws Exception
function TGenericModuleFactory.getInstance: IRunnableInterface;
var
  genericProfile_: TGenericProfile;
  inputAutomationActionInterface_: IInputAutomationActionInterface;
begin
    TJava.MonitorEnter(Self);
    try
        genericProfile_ := (TGenericModuleConfigurationJPanel(TJava.ToObject(Self.getConfigurationJPanel()))).getSelectedGenericProfile();
        inputAutomationActionInterface_ := (TJava.ToObject(TGenericInputAutomationAction.Create()) as IInputAutomationActionInterface);
        Exit((TJava.ToObject(TGenericInputAutomationWorker.Create(inputAutomationActionInterface_, genericProfile_, TNoMotionRectangleConstraints.Create(), TNoImageComparatorConstraints.Create())) as IRunnableInterface));
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TGenericModuleFactory.NAME := 'Generic' + TJava.ToString(TInputAutomationModuleData.MODULE_NAME_END);
  {AB:END}

end.


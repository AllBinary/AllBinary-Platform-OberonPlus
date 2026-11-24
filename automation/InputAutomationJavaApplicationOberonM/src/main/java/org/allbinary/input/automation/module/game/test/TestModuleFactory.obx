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
// package org.allbinary.input.automation.module.game.test
unit TestModuleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbstractInputAutomationFactory, BlankModuleConfigurationJPanel, RunnableInterface, JPanel;

type
  {AB:TYPES}
  TTestModuleFactory = class(TAbstractInputAutomationFactory)
  public
    blankModuleConfigurationJPanel: TBlankModuleConfigurationJPanel;
    class var NAME: string;
    procedure InitFields;
        constructor Create;
        function getName: string; virtual;
        function getConfigurationJPanel: TJPanel; virtual;
        function getInstance: IRunnableInterface; virtual;
  end;

implementation
uses
  InputAutomationModuleData;


{AB:CODE}

procedure TTestModuleFactory.InitFields;
begin
  
end;
    

constructor TTestModuleFactory.Create;
begin
        inherited Create(TTestModuleFactory.NAME, TBlankModuleConfigurationJPanel.Create());
        InitFields;
end;
    

function TTestModuleFactory.getName: string;
begin
        Exit(TTestModuleFactory.NAME);
end;
    

function TTestModuleFactory.getConfigurationJPanel: TJPanel;
begin
        Exit(Self.blankModuleConfigurationJPanel);
end;
    

// throws Exception
function TTestModuleFactory.getInstance: IRunnableInterface;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(nil);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TTestModuleFactory.NAME := 'Test New Game' + TJava.ToString(TInputAutomationModuleData.MODULE_NAME_END);
  {AB:END}

end.


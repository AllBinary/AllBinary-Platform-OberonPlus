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
// package org.allbinary.input.automation.module
unit AbstractInputAutomationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, JPanel, InputAutomationModuleFactoryInterface;

type
  {AB:TYPES}
  TAbstractInputAutomationFactory = class(IInputAutomationModuleFactoryInterface)
  public
    name: string;
    jPanel: TJPanel;
    helpSet: THelpSet;
    procedure InitFields;
        constructor Create(name: string; jPanel_: TJPanel; helpSet_: THelpSet); overload;
        constructor Create(name: string; jPanel_: TJPanel); overload;
        function getName: string; virtual;
        function getConfigurationJPanel: TJPanel; virtual;
        function getHelpSet: THelpSet; virtual;
  end;

implementation
uses
  JavaHelpUtil;


{AB:CODE}

procedure TAbstractInputAutomationFactory.InitFields;
begin
  
  
  
end;
    

constructor TAbstractInputAutomationFactory.Create(name: string; jPanel_: TJPanel; helpSet_: THelpSet);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.jPanel := jPanel_;
        Self.helpSet := helpSet_;
end;
    

constructor TAbstractInputAutomationFactory.Create(name: string; jPanel_: TJPanel);
var
  url_: TURL;
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.jPanel := jPanel_;
        url_ := Self.ClassType.getResource('/help/Help.hs');
        Self.helpSet := TJavaHelpUtil.getInstance().getHelpSet(url_);
end;
    

function TAbstractInputAutomationFactory.getName: string;
begin
        Exit(Self.name);
end;
    

function TAbstractInputAutomationFactory.getConfigurationJPanel: TJPanel;
begin
        Exit(Self.jPanel);
end;
    

function TAbstractInputAutomationFactory.getHelpSet: THelpSet;
begin
        Exit(Self.helpSet);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


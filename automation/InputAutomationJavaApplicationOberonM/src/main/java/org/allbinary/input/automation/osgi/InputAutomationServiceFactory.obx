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
// package org.allbinary.input.automation.osgi
unit InputAutomationServiceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bundle, ServiceFactory, ServiceRegistration, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TInputAutomationServiceFactory = class(TInterfacedObject, IServiceFactory)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var inputAutomationServiceFactory: TInputAutomationServiceFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        class function getInstance: TInputAutomationServiceFactory; static;
        function getService(bundle_: TBundle; registration: TServiceRegistration): TObject; virtual;
        procedure ungetService(bundle_: TBundle; registration: TServiceRegistration; service: TObject); virtual;
  end;

implementation
uses
  InputAutomationJFrame;


{AB:CODE}

procedure TInputAutomationServiceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TInputAutomationServiceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationServiceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TInputAutomationServiceFactory.getInstance: TInputAutomationServiceFactory;
begin
        Exit(TInputAutomationServiceFactory.inputAutomationServiceFactory);
end;
    

function TInputAutomationServiceFactory.getService(bundle_: TBundle; registration: TServiceRegistration): TObject;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getService');
        Exit(TJava.Box(TInputAutomationJFrame.getInstance()));
end;
    

procedure TInputAutomationServiceFactory.ungetService(bundle_: TBundle; registration: TServiceRegistration; service: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TInputAutomationServiceFactory.inputAutomationServiceFactory := TInputAutomationServiceFactory.Create();
  {AB:END}

end.


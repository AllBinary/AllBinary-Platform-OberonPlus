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
unit InputAutomationModuleOSGIServiceVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, OSGIServiceInterface, OSGIServiceVisitorInterface, CommonStrings;

type
  {AB:TYPES}
  TInputAutomationModuleOSGIServiceVisitor = class(TInterfacedObject, IOSGIServiceVisitorInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function visit(anyType: TObject): TObject; overload; virtual;
        function visit(osgiServiceInterface_: IOSGIServiceInterface): Boolean; overload; virtual;
  end;

implementation
uses
  InputAutomationModuleService, InputAutomationJFrame, InputAutomationConfigurationUtil, InputAutomationModuleFactoryInterface;


{AB:CODE}

procedure TInputAutomationModuleOSGIServiceVisitor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TInputAutomationModuleOSGIServiceVisitor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationModuleOSGIServiceVisitor.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInputAutomationModuleOSGIServiceVisitor.visit(anyType: TObject): TObject;
begin
        Exit(TJava.Box(Self.visit((TJava.ToObject(anyType) as IOSGIServiceInterface))));
end;
    

function TInputAutomationModuleOSGIServiceVisitor.visit(osgiServiceInterface_: IOSGIServiceInterface): Boolean;
var
  inputAutomationModuleService_: TInputAutomationModuleService;
  inputAutomationModuleInterfaceArray: TArray<IInputAutomationModuleFactoryInterface>;
  index: Integer;
begin
        try
            inputAutomationModuleService_ := TInputAutomationModuleService(TJava.ToObject(osgiServiceInterface_));
            inputAutomationModuleInterfaceArray := inputAutomationModuleService_.getInputAutomationModuleInterfaceArray();
            for index := 0 to System.Length(inputAutomationModuleInterfaceArray) - 1 do begin
                TInputAutomationJFrame.getInstance().onAdd(TInputAutomationConfigurationUtil.getChangeEvent(inputAutomationModuleInterfaceArray[index]));
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'visit', TJava.Box(e));
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


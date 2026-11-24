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
unit InputAutomationRobotOSGIServiceVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, OSGIServiceInterface, OSGIServiceVisitorInterface, CommonStrings;

type
  {AB:TYPES}
  TInputAutomationRobotOSGIServiceVisitor = class(TInterfacedObject, IOSGIServiceVisitorInterface)
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
  InputAutomationRobotServiceInterface, InputRobotFactory, InputRobotInterface;


{AB:CODE}

procedure TInputAutomationRobotOSGIServiceVisitor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TInputAutomationRobotOSGIServiceVisitor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInputAutomationRobotOSGIServiceVisitor.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInputAutomationRobotOSGIServiceVisitor.visit(anyType: TObject): TObject;
begin
        Exit(TJava.Box(Self.visit((TJava.ToObject(anyType) as IOSGIServiceInterface))));
end;
    

function TInputAutomationRobotOSGIServiceVisitor.visit(osgiServiceInterface_: IOSGIServiceInterface): Boolean;
var
  inputAutomationRobotServiceInterface_: IInputAutomationRobotServiceInterface;
  inputRobotInterfaceArray: TArray<IInputRobotInterface>;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'visit');
            inputAutomationRobotServiceInterface_ := (TJava.ToObject(osgiServiceInterface_) as IInputAutomationRobotServiceInterface);
            inputRobotInterfaceArray := inputAutomationRobotServiceInterface_.getInputRobotInterfaceArray();
            for index := 0 to System.Length(inputRobotInterfaceArray) - 1 do begin
                Self.logUtil.putF('Adding: ' + inputRobotInterfaceArray[index].getName(), TJava.Box(Self), 'visit');
                TInputRobotFactory.getInstance().add(TJava.ToObject(inputRobotInterfaceArray[index]));
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


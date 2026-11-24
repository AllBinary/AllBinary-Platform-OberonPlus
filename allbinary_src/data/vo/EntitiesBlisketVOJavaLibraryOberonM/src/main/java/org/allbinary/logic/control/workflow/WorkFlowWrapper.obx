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
// package org.allbinary.logic.control.workflow
unit WorkFlowWrapper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, WorkFlowInterface;

type
  {AB:TYPES}
  TWorkFlowWrapper = class(TInterfacedObject, IWorkFlowInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    anyType: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(anyType: TObject);
        function getWorkFlowObject: TObject; virtual;
        function getName: string; virtual;
        function getStoreName: string; virtual;
        function process: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TWorkFlowWrapper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TWorkFlowWrapper.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWorkFlowWrapper.Create(anyType: TObject);
begin
    inherited Create;
    InitFields;
        Self.anyType := TJava.Box(anyType);
end;
    

function TWorkFlowWrapper.getWorkFlowObject: TObject;
begin
        Exit(TJava.Box(Self.anyType));
end;
    

// throws Exception
function TWorkFlowWrapper.getName: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := helperClass.getMethod('getName', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.anyType, nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Reflection Exception';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getName()', TJava.Box(e));
            end;
            raise SysUtils.Exception.Create(error);
            end;
        end;
end;
    

// throws Exception
function TWorkFlowWrapper.getStoreName: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := helperClass.getMethod('getStoreName', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.anyType, nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Reflection Exception';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getStoreName()', TJava.Box(e));
            end;
            raise SysUtils.Exception.Create(error);
            end;
        end;
end;
    

// throws Exception
function TWorkFlowWrapper.process: Integer;
var
  helperClass: TClass;
  method_: TMethod;
  result_: Integer;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := helperClass.getMethod(Self.commonStrings.PROCESS, nil);
            result_ := Integer(method_.invoke(Self.anyType, nil));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Reflection Exception';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
            raise SysUtils.Exception.Create(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.logic.communication.log
unit LogUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogFormatUtil, Log;

type
  {AB:TYPES}
  // ActualPlatform
  TLogUtil = class(TObject)
  public
    logger: TLogger;
    logFormatUtil: TLogFormatUtil;
    class var instance: TLogUtil;
    procedure InitFields;
        class function getInstance: TLogUtil; static;
        constructor Create;
        procedure init; virtual;
        procedure putL(log_: TLog); virtual;
        procedure put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); virtual;
  end;

implementation
uses
  PreLogUtil, StringMaker, CommonStrings;


{AB:CODE}

procedure TLogUtil.InitFields;
begin
  Self.logger := TLogger.getLogger(TLogUtil.getName());
  Self.logFormatUtil := TLogFormatUtil.getInstance();
end;
    

class function TLogUtil.getInstance: TLogUtil;
begin
        Exit(TLogUtil.instance);
end;
    

constructor TLogUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TLogUtil.init;
begin
        TPreLogUtil.put('Loggin Initialized', TJava.Box(Self), 'init()');
end;
    

procedure TLogUtil.putL(log_: TLog);
var
  exception: TObject;
  specialMessage: string;
  anyType: TObject;
  functionName: string;
  className: string;
  clazz: TClass;
  message: string;
begin
        exception := TJava.Box(log_.getThrowable());
        try
            if (exception) <> (nil) then begin
                specialMessage := log_.getSpecialMessage();
                anyType := TJava.Box(log_.getObject());
                functionName := log_.getFunctionName();
                className := TCommonStrings.getInstance().EMPTY;
                clazz := TJava.ToObject(anyType).ClassType;
                if (clazz.ClassName) <> ('') then begin
                    className := clazz.ClassName;
                end;
                message := Self.logFormatUtil.get(className, functionName, specialMessage, TJava.Box(exception));
                Self.logger.log(TLevel.INFO, TJava.Box(message));
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;
    

procedure TLogUtil.put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  clazz: TClass;
  message: string;
begin
        try
            className := TCommonStrings.getInstance().EMPTY;
            clazz := TJava.ToObject(anyType).ClassType;
            if (clazz.ClassName) <> ('') then begin
                className := clazz.ClassName;
            end;
            message := Self.logFormatUtil.getS(className, functionName, specialMessage);
            if (exception) <> (nil) then begin
                Self.logger.log(TLevel.SEVERE, message, exception);
            end else begin
                Self.logger.log(TLevel.INFO, TJava.Box(message));
            end;
        except
            on e: SysUtils.Exception do begin
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TLogUtil.instance := TLogUtil.Create();
  {AB:END}

end.


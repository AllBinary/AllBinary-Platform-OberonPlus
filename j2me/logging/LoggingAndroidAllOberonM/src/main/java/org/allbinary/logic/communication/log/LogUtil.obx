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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonSeps, LogFormatUtil, Log;

type
  {AB:TYPES}
  // ActualPlatform
  TLogUtil = class(TObject)
  public
    commonSeps: TCommonSeps;
    logFormatUtil: TLogFormatUtil;
    LABEL_: string;
    class var instance: TLogUtil;
    procedure InitFields;
        class function getInstance: TLogUtil; static;
        constructor Create;
        procedure putL(log_: TLog); virtual;
        procedure putF(specialMessage: string; anyType: TObject; functionName: string); virtual;
        procedure putFS(specialMessage: string; string_: string; functionName: string); virtual;
        procedure put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); virtual;
        procedure putS(specialMessage: string; string_: string; functionName: string; exception: TObject); virtual;
  end;

implementation
uses
  NullUtil, TsUtil, StringMaker;


{AB:CODE}

procedure TLogUtil.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
  Self.logFormatUtil := TLogFormatUtil.getInstance();
  Self.LABEL_ := 'org.allbinary';
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
    

procedure TLogUtil.putL(log_: TLog);
var
  specialMessage: string;
  anyType: TObject;
  functionName: string;
  exception: TObject;
begin
        specialMessage := log_.getSpecialMessage();
        anyType := TJava.Box(log_.getObject());
        functionName := log_.getFunctionName();
        exception := TJava.Box(log_.getThrowable());
        Self.put(specialMessage, TJava.Box(anyType), functionName, TJava.Box(exception));
end;
    

procedure TLogUtil.putF(specialMessage: string; anyType: TObject; functionName: string);
begin
        Self.put(specialMessage, TJava.Box(anyType), functionName, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

procedure TLogUtil.putFS(specialMessage: string; string_: string; functionName: string);
begin
        Self.putS(specialMessage, string_, functionName, TNullUtil.getInstance().NULL_OBJECT);
end;
    

procedure TLogUtil.put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  message: string;
begin
        className := Self.LABEL_;
        className := TJava.NewString(TStringMaker.Create().append(TJava.ToObject(anyType).ClassType.ClassName).append(Self.commonSeps.COLON).append(IntToHex(TTsUtil.getInstance().hashCode(TJava.Box(anyType)))).toString());
        message := Self.logFormatUtil.get(className, functionName, specialMessage, TJava.Box(exception));
        Tandroid.util.Log.i(Self.LABEL_, message);
end;
    

procedure TLogUtil.putS(specialMessage: string; string_: string; functionName: string; exception: TObject);
var
  className: string;
  message: string;
begin
        className := Self.LABEL_;
        className := TJava.NewString(TStringMaker.Create().append(string_).append(Self.commonSeps.COLON).append(IntToHex(TTsUtil.getInstance().hashCode(TJava.Box(string_)))).toString());
        message := Self.logFormatUtil.get(className, functionName, specialMessage, TJava.Box(exception));
        Tandroid.util.Log.i(Self.LABEL_, message);
end;

initialization
  {AB:INITIALIZATION}
  TLogUtil.instance := TLogUtil.Create();
  {AB:END}

end.


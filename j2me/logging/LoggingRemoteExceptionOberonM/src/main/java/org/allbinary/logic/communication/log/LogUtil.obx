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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StringMaker, AbeClientInformationInterface, TimeDelayHelper, Log;

type
  {AB:TYPES}
  // ActualPlatform
  TLogUtil = class(TObject)
  public
    MESSAGE: string;
    isFirstException: Boolean;
    timeDelayHelper: TTimeDelayHelper;
    abeClientInformation: IAbeClientInformationInterface;
    stringBuffer: TStringMaker;
    class var instance: TLogUtil;
    procedure InitFields;
        class function getInstance: TLogUtil; static;
        constructor Create;
        procedure putL(log_: TLog); virtual;
        procedure putF(specialMessage: string; anyType: TObject; functionName: string); virtual;
        procedure putFS(specialMessage: string; className: string; functionName: string); virtual;
        procedure put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject); virtual;
  end;

implementation
uses
  LogFormatUtil, XmlRpcRemoteLogClient, XmlRpcException, CommonSeps, SpecialMessageUtil, CommonStrings, ABHashtable;


{AB:CODE}

procedure TLogUtil.InitFields;
begin
  Self.MESSAGE := 'message';
  Self.isFirstException := True;
  Self.timeDelayHelper := TTimeDelayHelper.Create(200000);
  
  Self.stringBuffer := TStringMaker.Create();
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
        if (log_) = (nil) then begin
            Exit;
        end;
        specialMessage := log_.getSpecialMessage();
        anyType := TJava.Box(log_.getObject());
        functionName := log_.getFunctionName();
        exception := TJava.Box(log_.getThrowable());
        Self.put(specialMessage, TJava.Box(anyType), functionName, TJava.Box(exception));
end;
    

procedure TLogUtil.putF(specialMessage: string; anyType: TObject; functionName: string);
begin
end;
    

procedure TLogUtil.putFS(specialMessage: string; className: string; functionName: string);
begin
end;
    

procedure TLogUtil.put(specialMessage: string; anyType: TObject; functionName: string; exception: TObject);
var
  className: string;
  message: string;
  hashtable: TABHashtable<TObject, TObject>;
begin
        if (exception) <> (nil) then begin
            if (CompareStr(TJava.ToObject(exception).ClassType.ClassName, TXmlRpcException.getName())) = (0) then begin
                Exit;
            end;
            if (CompareStr(TJava.ToObject(exception).ClassType.ClassName, TIOException.getName())) = (0) then begin
                Exit;
            end;
            if (Self.isFirstException) or (Self.timeDelayHelper.isTimeTNT()) then begin
                className := TCommonStrings.getInstance().EMPTY;
                Self.isFirstException := False;
                if ((anyType) <> (nil)) and ((TJava.ToObject(anyType).ClassType.ClassName) <> ('')) then begin
                    className := TJava.NewString(TJava.ToObject(anyType).ClassType.ClassName);
                end;
                message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
                try
                    WriteLn('Eeeek');
                    if (Self.abeClientInformation) = (nil) then begin
                        raise SysUtils.Exception.Create('');
                    end;
                    hashtable := Self.abeClientInformation.toHashtable();
                    Self.stringBuffer.delete_(0, Self.stringBuffer.length());
                    Self.stringBuffer.append(message);
                    Self.stringBuffer.append(TCommonSeps.getInstance().SPACE);
                    Self.stringBuffer.append(TSpecialMessageUtil.getInstance().get());
                    hashtable.put(TJava.Box(Self.MESSAGE), TJava.Box(Self.stringBuffer.toString()));
                    TXmlRpcRemoteLogClient.Create(Self.abeClientInformation).get(hashtable);
                except
                    on e: SysUtils.Exception do begin
                    WriteLn('Exception');
                    WriteLn(e.Message);
                    end;
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TLogUtil.instance := TLogUtil.Create();
  {AB:END}

end.


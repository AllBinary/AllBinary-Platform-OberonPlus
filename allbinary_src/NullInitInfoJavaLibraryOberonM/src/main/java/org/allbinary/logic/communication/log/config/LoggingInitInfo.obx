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
// package org.allbinary.logic.communication.log.config
unit LoggingInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TLoggingInitInfo = class(TObject)
  public
    class var logConfigInfoList: TBasicArrayList;
    class var hasRead: Boolean;
        constructor Create;
        class procedure write; static;
        class procedure read; static;
        class procedure setHasRead(value: Boolean); static;
        class procedure updateIfNeeded; static;
        function isValid: Boolean; virtual;
        class procedure set_(logConfigInfoList: TBasicArrayList); static;
        class function get: TBasicArrayList; static;
        class function getTypeList: TBasicArrayList; static;
        function getNumberOfLogConfigs: Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  LogConfig, BasicArrayListD;


{AB:CODE}
    

constructor TLoggingInitInfo.Create;
begin
    inherited Create;
end;
    

// throws Exception
class procedure TLoggingInitInfo.write;
begin
    TJava.MonitorEnter(nil);
    try
        try
            TLoggingInitInfo.hasRead := False;
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

// throws Exception
class procedure TLoggingInitInfo.read;
begin
    TJava.MonitorEnter(nil);
    try
        try
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class procedure TLoggingInitInfo.setHasRead(value: Boolean);
begin
    TJava.MonitorEnter(nil);
    try
        TLoggingInitInfo.hasRead := value;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

// throws Exception
class procedure TLoggingInitInfo.updateIfNeeded;
begin
    TJava.MonitorEnter(nil);
    try
        if not (TLoggingInitInfo.hasRead) then begin
            TLoggingInitInfo.read();
            TLoggingInitInfo.hasRead := True;
            if (TLoggingInitInfo.logConfigInfoList) = (nil) then begin
                raise SysUtils.Exception.Create('Read Failed');
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

function TLoggingInitInfo.isValid: Boolean;
begin
        try
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

class procedure TLoggingInitInfo.set_(logConfigInfoList: TBasicArrayList);
begin
    TJava.MonitorEnter(nil);
    try
        TLoggingInitInfo.logConfigInfoList := logConfigInfoList;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

// throws Exception
class function TLoggingInitInfo.get: TBasicArrayList;
begin
        TLoggingInitInfo.updateIfNeeded();
        Exit(TLoggingInitInfo.logConfigInfoList);
end;
    

// throws Exception
class function TLoggingInitInfo.getTypeList: TBasicArrayList;
var
  allLogTypeVector: TBasicArrayList;
  size: Integer;
  logConfigInfo: TLogConfig;
  logTypeVector: TBasicArrayList;
  index: Integer;
begin
        TLoggingInitInfo.updateIfNeeded();
        allLogTypeVector := TBasicArrayListD.Create();
        size := TLoggingInitInfo.logConfigInfoList.size();
        for index := 0 to size - 1 do begin
            logConfigInfo := TLogConfig(TJava.ToObject(TLoggingInitInfo.logConfigInfoList.objectArray[index]));
            logTypeVector := logConfigInfo.getTypeVector();
            if logConfigInfo.isEnabled() then begin
                allLogTypeVector.addAllList(logTypeVector);
            end;
        end;
        Exit(allLogTypeVector);
end;
    

// throws Exception
function TLoggingInitInfo.getNumberOfLogConfigs: Integer;
begin
        Exit(TLoggingInitInfo.logConfigInfoList.size());
end;
    

function TLoggingInitInfo.toString: string;
begin
        try
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            Exit('Error');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TLoggingInitInfo.logConfigInfoList := nil;
  TLoggingInitInfo.hasRead := False;
  {AB:END}

end.


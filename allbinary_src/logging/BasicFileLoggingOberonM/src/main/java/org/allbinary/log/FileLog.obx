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
// package org.allbinary.log
unit FileLog;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StringUtil;

type
  {AB:TYPES}
  TFileLog = class(TObject)
  public
    class var stringUtil: TStringUtil;
    class var logLength: Int64;
    class var logPath: string;
    class var extension: string;
    class var fileName: string;
    class var backupFileName: string;
    class var ORG_ALLBINARY: string;
    class var firstTime: Boolean;
    class var logFile: TFile;
    class var logFileBak: TFile;
    class var fileOut: TBufferedWriter;
    class var backupIndex: Integer;
        constructor Create;
        class function createLogFile: Boolean; static;
        class function createLogFileBackup: Boolean; static;
        class function put(specialMessage: string; anyType: TObject; functionName: string): string; overload; static;
        class function put(specialMessage: string; anyType: TObject; functionName: string; exception: SysUtils.Exception): string; overload; static;
        class function put(specialMessage: string; className: string; functionName: string): string; overload; static;
        class function put(specialMessage: string; className: string; functionName: string; exception: SysUtils.Exception): string; overload; static;
        class function getFilePath: string; static;
  end;

implementation
uses
  CommonSeps, LogFormatUtil, StringMaker;


{AB:CODE}
    

constructor TFileLog.Create;
begin
    inherited Create;
end;
    

class function TFileLog.createLogFile: Boolean;
var
  raFile: TRandomAccessFile;
  canWrite: Boolean;
begin
    TJava.MonitorEnter(nil);
    try
        try
            TFileLog.logFile := TFile.Create(TFileLog.logPath, TFileLog.fileName);
            if not (TFileLog.firstTime) then begin
                TFileLog.fileOut := TBufferedWriter.Create(TFileWriter.Create(TFileLog.logFile));
            end else begin
                TFileLog.firstTime := False;
                raFile := TRandomAccessFile.Create(TFileLog.logFile, 'rw');
                raFile.seek(raFile.length());
                TFileLog.fileOut := TBufferedWriter.Create(TFileWriter.Create(raFile.getFD()));
            end;
            canWrite := TFileLog.logFile.canWrite();
            Exit(canWrite);
        except
            on e: SysUtils.Exception do begin
            WriteLn('Error Creating Log: ' + TJava.ToString(e));
            Exit(False);
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TFileLog.createLogFileBackup: Boolean;
var
  stringMaker_: TStringMaker;
  line: string;
  tmpOut: TBufferedWriter;
  tmpIn: TBufferedReader;
begin
    TJava.MonitorEnter(nil);
    try
        try
            stringMaker_ := TStringMaker.Create();
            TFileLog.logFileBak := TFile.Create(TFileLog.logPath, stringMaker_.append(TFileLog.backupFileName).append(TCommonSeps.getInstance().PERIOD).appendint(TFileLog.backupIndex).toString());
            while TFileLog.logFileBak.isFile() do begin
                Inc(TFileLog.backupIndex);
                stringMaker_.delete_(0, stringMaker_.length());
                TFileLog.logFileBak := TFile.Create(TFileLog.logPath, stringMaker_.append(TFileLog.backupFileName).append(TCommonSeps.getInstance().PERIOD).appendint(TFileLog.backupIndex).toString());
            end;
            line := '';
            tmpOut := TBufferedWriter.Create(TFileWriter.Create(TFileLog.logFileBak));
            tmpIn := TBufferedReader.Create(TFileReader.Create(TFileLog.logFile));
            while tmpIn.ready() do begin
                line := tmpIn.readLine();
                tmpOut.write(line, 0, System.Length(line));
                tmpOut.newLine();
            end;
            tmpOut.flush();
            tmpOut.close();
            tmpIn.close();
            TFileLog.logFile.delete_();
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            WriteLn('Error Creating Backup: ' + TJava.ToString(e));
            Exit(False);
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TFileLog.put(specialMessage: string; anyType: TObject; functionName: string): string;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TFileLog.put(specialMessage, TJava.Box(anyType), functionName, nil));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TFileLog.put(specialMessage: string; anyType: TObject; functionName: string; exception: SysUtils.Exception): string;
var
  length: Int64;
  className: string;
  message: string;
begin
    TJava.MonitorEnter(nil);
    try
        try
            if (TFileLog.firstTime) = (True) then begin
                TFileLog.createLogFileBackup();
                if (TFileLog.createLogFile()) = (False) then begin
                    Exit(TJava.NewString('Log File Creation Error'));
                end;
            end;
            length := Int64(TFileLog.logFile.length());
            if (length) > (TFileLog.logLength) then begin
                if (not ((TFileLog.createLogFileBackup()))) or ((TFileLog.createLogFile()) = (False)) then begin
                    Exit(TJava.NewString('Couldn''t Create a Backup file'));
                end;
            end;
            className := TJava.NewString(TFileLog.stringUtil.NULL_STRING);
            if (functionName) = ('') then begin
                functionName := TJava.NewString(TFileLog.stringUtil.NULL_STRING);
            end;
            if (specialMessage) = ('') then begin
                specialMessage := TJava.NewString(TFileLog.stringUtil.NULL_STRING);
            end;
            if (TJava.ToObject(anyType).ClassType.ClassName) <> ('') then begin
                className := TJava.NewString(TJava.ToObject(anyType).ClassType.ClassName);
            end;
            message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
            TFileLog.fileOut.write(message, 0, System.Length(message));
            TFileLog.fileOut.newLine();
            TFileLog.fileOut.flush();
            Exit(TJava.NewString(TJava.ToString(TFileLog.ORG_ALLBINARY) + message));
        except
            on e: SysUtils.Exception do begin
            Exit(TJava.NewString('Error: ' + TJava.ToString(e)));
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TFileLog.put(specialMessage: string; className: string; functionName: string): string;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TFileLog.put(specialMessage, TJava.Box(className), functionName, nil));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TFileLog.put(specialMessage: string; className: string; functionName: string; exception: SysUtils.Exception): string;
var
  length: Int64;
  message: string;
begin
    TJava.MonitorEnter(nil);
    try
        try
            if (TFileLog.firstTime) = (True) then begin
                TFileLog.createLogFileBackup();
                if (TFileLog.createLogFile()) = (False) then begin
                    Exit(TJava.NewString('Log File Creation Error'));
                end;
            end;
            length := Int64(TFileLog.logFile.length());
            if (length) > (TFileLog.logLength) then begin
                if (not ((TFileLog.createLogFileBackup()))) or ((TFileLog.createLogFile()) = (False)) then begin
                    Exit(TJava.NewString('Couldn''t Create a Backup file'));
                end;
            end;
            if (functionName) = ('') then begin
                functionName := TJava.NewString(TFileLog.stringUtil.NULL_STRING);
            end;
            if (specialMessage) = ('') then begin
                specialMessage := TJava.NewString(TFileLog.stringUtil.NULL_STRING);
            end;
            message := TLogFormatUtil.getInstance().get(className, functionName, specialMessage, TJava.Box(exception));
            TFileLog.fileOut.write(message, 0, System.Length(message));
            TFileLog.fileOut.newLine();
            TFileLog.fileOut.flush();
            Exit(TJava.NewString(TJava.ToString(TFileLog.ORG_ALLBINARY) + message));
        except
            on e: SysUtils.Exception do begin
            Exit(TJava.NewString('Error: ' + TJava.ToString(e)));
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TFileLog.getFilePath: string;
begin
        Exit((TFileLog.logPath) + (TFileLog.fileName));
end;

initialization
  {AB:INITIALIZATION}
  TFileLog.stringUtil := TStringUtil.getInstance();
  TFileLog.logLength := 33000000;
  TFileLog.logPath := 'g:\log\';
  TFileLog.extension := TJava.NewString('dat');
  TFileLog.fileName := TJava.NewString('log.' + TJava.ToString(TFileLog.extension));
  TFileLog.backupFileName := TFileLog.fileName.concat('.bak');
  TFileLog.ORG_ALLBINARY := 'org.allbinary: ';
  TFileLog.firstTime := True;
  TFileLog.logFile := TFile.Create(TFileLog.logPath, TFileLog.fileName);
  
  
  
  {AB:END}

end.


// Generated Code Do Not Modify
// package org.allbinary.logic.system.os.env
unit RuntimeEnvironmentVariables;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TRuntimeEnvironmentVariables = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
        constructor Create;
        function getTest1: string; virtual;
        function getVariable(var_: string): string; virtual;
        function get: TProperties; virtual;
        function getTempDir: string; virtual;
        function getLibraryPath: string; virtual;
        function getClassPath: string; virtual;
        procedure updateLibraryPath(libPath: string); virtual;
        function getUserHome: string; virtual;
        function getUserDir: string; virtual;
        procedure set_; virtual;
        procedure setVariable(var_: string; val: string); virtual;
  end;

implementation
uses
  GenericOperatingSystem, OperatingSystemFactory, OperatingSystems;


{AB:CODE}

procedure TRuntimeEnvironmentVariables.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

constructor TRuntimeEnvironmentVariables.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TRuntimeEnvironmentVariables.getTest1: string;
begin
        Exit(TJava.GetProperty('java.java.home'));
end;
    

function TRuntimeEnvironmentVariables.getVariable(var_: string): string;
var
  environmentVariables: TProperties;
begin
        environmentVariables := Self.get();
        Exit(environmentVariables.getProperty(var_));
end;
    

function TRuntimeEnvironmentVariables.get: TProperties;
var
  process: TProcess;
  environmentVariables: TProperties;
  operatingSystemInterface: TGenericOperatingSystem;
  osName: string;
  linuxCommand: string;
  windowsCommand: string;
  solarisCommand: string;
  operatingSystems_: TOperatingSystems;
  processInputStreamReader: TInputStreamReader;
  bufferedReader_: TBufferedReader;
  keyValuePair: string;
  index: Integer;
  key: string;
  value: string;
begin
        try
            
            environmentVariables := TProperties.Create();
            operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
            osName := operatingSystemInterface.getName();
            linuxCommand := 'env';
            windowsCommand := 'cmd.exe /c set';
            solarisCommand := linuxCommand;
            operatingSystems_ := TOperatingSystems.getInstance();
            if (CompareStr(osName, operatingSystems_.LINUX)) = (0) then begin
                process := TRuntime.getRuntime().exec(linuxCommand);
            end else if ((Pos(TJava.ToString(operatingSystems_.WINDOWS), osName) - 1)) >= (0) then begin
                process := TRuntime.getRuntime().exec(windowsCommand);
            end else if (CompareStr(osName, operatingSystems_.SOLARIS)) = (0) then begin
                process := TRuntime.getRuntime().exec(solarisCommand);
            end else begin
                raise SysUtils.Exception.Create('');
            end;
            processInputStreamReader := TInputStreamReader.Create(process.getInputStream());
            bufferedReader_ := TBufferedReader.Create(processInputStreamReader);
            
            while ((TJava.Assign(keyValuePair, bufferedReader_.readLine()))) <> (nil) do begin
                index := (Pos(TJava.ToString('='), keyValuePair) - 1);
                key := Copy(keyValuePair, (0) + 1, (index) - (0));
                value := Copy(keyValuePair, ((index) + (1)) + 1, MaxInt);
                environmentVariables.put(key, value);
            end;
            Exit(environmentVariables);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'get()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TRuntimeEnvironmentVariables.getTempDir: string;
begin
        try
            Exit(TJava.GetProperty('java.io.tmpdir'));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getTempDir()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TRuntimeEnvironmentVariables.getLibraryPath: string;
begin
        try
            Exit(TJava.GetProperty('java.library.path'));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getLibraryPath()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TRuntimeEnvironmentVariables.getClassPath: string;
begin
        try
            Exit(TJava.GetProperty('java.class.path'));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getClassPath()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TRuntimeEnvironmentVariables.updateLibraryPath(libPath: string);
var
  existingPath: string;
begin
        try
            existingPath := Self.getLibraryPath();
            TSystem.setProperty('java.library.path', libPath + ':' + existingPath);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updateLibraryPath()', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TRuntimeEnvironmentVariables.getUserHome: string;
begin
        try
            Exit(TJava.GetProperty('user.home'));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getUserHome()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TRuntimeEnvironmentVariables.getUserDir: string;
begin
        try
            Exit(TJava.GetProperty('user.dir'));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getUserDir()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TRuntimeEnvironmentVariables.set_;
begin
        try
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'get()', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TRuntimeEnvironmentVariables.setVariable(var_: string; val: string);
var
  process: TProcess;
  operatingSystemInterface: TGenericOperatingSystem;
  operatingSystems_: TOperatingSystems;
  osName: string;
  windowsCommand: string;
begin
        try
            
            operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
            operatingSystems_ := TOperatingSystems.getInstance();
            osName := operatingSystemInterface.getName();
            windowsCommand := 'cmd.exe /c set' + var_ + '=' + val;
            if (CompareStr(osName, operatingSystems_.LINUX)) = (0) then begin
                raise SysUtils.Exception.Create('');
            end else if ((Pos(TJava.ToString(operatingSystems_.WINDOWS), osName) - 1)) >= (0) then begin
                process := TRuntime.getRuntime().exec(windowsCommand);
            end else if (CompareStr(osName, operatingSystems_.SOLARIS)) = (0) then begin
                raise SysUtils.Exception.Create('');
            end else begin
                raise SysUtils.Exception.Create('');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().OSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setVariable()', TJava.Box(e));
            end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


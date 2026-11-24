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
// package org.allbinary.logic.communication.ftp.configuration
unit FtpConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FtpConfigurationInterface;

type
  {AB:TYPES}
  TFtpConfiguration = class(TInterfacedObject, IFtpConfigurationInterface)
  public
    ftpServer: string;
    ftpPath: string;
    ftpUserName: string;
    ftpPassword: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function getServer: string; virtual;
        function getPath: string; virtual;
        function getUserName: string; virtual;
        function getPassword: string; virtual;
        procedure setServer(value: string); virtual;
        procedure setPath(value: string); virtual;
        procedure setUserName(value: string); virtual;
        procedure setPassword(value: string); virtual;
  end;

implementation
uses
  FtpConfigurationData;


{AB:CODE}

procedure TFtpConfiguration.InitFields;
begin
  
  
  
  
end;

function TFtpConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFtpConfiguration.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TFtpConfiguration.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.ftpServer := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TFtpConfigurationData.SERVER))));
        Self.ftpPath := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TFtpConfigurationData.PATH))));
        Self.ftpUserName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TFtpConfigurationData.USERNAME))));
        Self.ftpPassword := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TFtpConfigurationData.PASSWORD))));
end;
    

function TFtpConfiguration.getServer: string;
begin
        Exit(Self.ftpServer);
end;
    

function TFtpConfiguration.getPath: string;
begin
        Exit(Self.ftpPath);
end;
    

function TFtpConfiguration.getUserName: string;
begin
        Exit(Self.ftpUserName);
end;
    

function TFtpConfiguration.getPassword: string;
begin
        Exit(Self.ftpPassword);
end;
    

procedure TFtpConfiguration.setServer(value: string);
begin
        Self.ftpServer := value;
end;
    

procedure TFtpConfiguration.setPath(value: string);
begin
        Self.ftpPath := value;
end;
    

procedure TFtpConfiguration.setUserName(value: string);
begin
        Self.ftpUserName := value;
end;
    

procedure TFtpConfiguration.setPassword(value: string);
begin
        Self.ftpPassword := value;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


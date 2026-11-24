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
// package org.allbinary.business.init.db
unit DbConnectionInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DatabaseConnectionInfoInterface;

type
  {AB:TYPES}
  TDbConnectionInfo = class(TInterfacedObject, IDatabaseConnectionInfoInterface)
  public
    jdbcDriver: string;
    name: string;
    userName: string;
    password: string;
    schema: string;
    server: string;
    port: string;
    url: string;
    host: string;
    SCHEMA_SEP: string;
    USER_NAME_KEY: string;
    PASSWORD_KEY: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure updateUrl;
        function getUrl: string; virtual;
        function getJdbcDriver: string; virtual;
        function getName: string; virtual;
        function getUserName: string; virtual;
        function getPassword: string; virtual;
        procedure updateHost;
        function getHost: string; virtual;
        function getSchema: string; virtual;
        function getServer: string; virtual;
        function getPort: string; virtual;
        procedure setJdbcDriver(value: string); virtual;
        procedure setName(value: string); virtual;
        procedure setUserName(value: string); virtual;
        procedure setPassword(value: string); virtual;
        procedure setSchema(value: string); virtual;
        procedure setServer(value: string); virtual;
        procedure setPort(value: string); virtual;
        function getUserNameKey: string;
        function getPasswordKey: string;
  end;

implementation
uses
  AbPathData, StringMaker, CommonSeps;


{AB:CODE}

procedure TDbConnectionInfo.InitFields;
begin
  
  
  
  
  
  
  
  
  
  Self.SCHEMA_SEP := '://';
  Self.USER_NAME_KEY := '?user=';
  Self.PASSWORD_KEY := '&password=';
end;

function TDbConnectionInfo.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDbConnectionInfo.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDbConnectionInfo.updateUrl;
var
  stringBuffer: TStringMaker;
begin
        Self.updateHost();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.getHost());
        stringBuffer.append(Self.getName());
        stringBuffer.append(Self.getUserNameKey());
        stringBuffer.append(Self.getUserName());
        stringBuffer.append(Self.getPasswordKey());
        stringBuffer.append(Self.getPassword());
        Self.url := stringBuffer.toString();
end;
    

function TDbConnectionInfo.getUrl: string;
begin
        Exit(Self.url);
end;
    

function TDbConnectionInfo.getJdbcDriver: string;
begin
        Exit(Self.jdbcDriver);
end;
    

function TDbConnectionInfo.getName: string;
begin
        Exit(Self.name);
end;
    

function TDbConnectionInfo.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TDbConnectionInfo.getPassword: string;
begin
        Exit(Self.password);
end;
    

procedure TDbConnectionInfo.updateHost;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.getSchema());
        stringBuffer.append(Self.SCHEMA_SEP);
        stringBuffer.append(Self.getServer());
        if ((Self.getPort()) <> (nil)) and ((Self.getPort().length()) > (1)) then begin
            stringBuffer.append(TCommonSeps.getInstance().COLON);
            stringBuffer.append(Self.getPort());
        end;
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Self.host := stringBuffer.toString();
end;
    

function TDbConnectionInfo.getHost: string;
begin
        Exit(Self.host);
end;
    

function TDbConnectionInfo.getSchema: string;
begin
        Exit(Self.schema);
end;
    

function TDbConnectionInfo.getServer: string;
begin
        Exit(Self.server);
end;
    

function TDbConnectionInfo.getPort: string;
begin
        Exit(Self.port);
end;
    

procedure TDbConnectionInfo.setJdbcDriver(value: string);
begin
        Self.jdbcDriver := value;
end;
    

procedure TDbConnectionInfo.setName(value: string);
begin
        Self.name := value;
        Self.updateUrl();
end;
    

procedure TDbConnectionInfo.setUserName(value: string);
begin
        Self.userName := value;
        Self.updateUrl();
end;
    

procedure TDbConnectionInfo.setPassword(value: string);
begin
        Self.password := value;
        Self.updateUrl();
end;
    

procedure TDbConnectionInfo.setSchema(value: string);
begin
        Self.schema := value;
        Self.updateUrl();
end;
    

procedure TDbConnectionInfo.setServer(value: string);
begin
        Self.server := value;
        Self.updateUrl();
end;
    

procedure TDbConnectionInfo.setPort(value: string);
begin
        Self.port := value;
        Self.updateUrl();
end;
    

function TDbConnectionInfo.getUserNameKey: string;
begin
        Exit(Self.USER_NAME_KEY);
end;
    

function TDbConnectionInfo.getPasswordKey: string;
begin
        Exit(Self.PASSWORD_KEY);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


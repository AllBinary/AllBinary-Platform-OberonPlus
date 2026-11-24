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
// package org.allbinary.logic.communication.smtp.configuration.server
unit EmailServerConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, EmailServerConfigurationInterface;

type
  {AB:TYPES}
  TEmailServerConfiguration = class(TInterfacedObject, IEmailServerConfigurationInterface)
  public
    logUtil: TLogUtil;
    accountName: string;
    password: string;
    smtpServer: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        constructor Create(account: string; password: string; server: string); overload;
        procedure setSmtpServer(value: string); virtual;
        function getSmtpServer: string; virtual;
        function getAccountName: string; virtual;
        procedure setAccountName(accountName: string); virtual;
        function getPassword: string; virtual;
        procedure setPassword(password: string); virtual;
        procedure log; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  EmailServerConfigurationData, StringUtil, CommonStrings;


{AB:CODE}

procedure TEmailServerConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;

function TEmailServerConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEmailServerConfiguration.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
        end;
        Self.setSmtpServer(TStringUtil.getInstance().EMPTY_STRING);
end;
    

constructor TEmailServerConfiguration.Create(hashMap_: TJavaHashMap<TObject, TObject>);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), 'EmailServerConfiguration(HashMap)');
        end;
        Self.setAccountName(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEmailServerConfigurationData.ACCOUNT)))));
        Self.setPassword(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEmailServerConfigurationData.PASSWORD)))));
        Self.setSmtpServer(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEmailServerConfigurationData.SERVER)))));
        Self.log();
end;
    

constructor TEmailServerConfiguration.Create(account: string; password: string; server: string);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), 'EmailServerConfiguration(HashMap)');
        end;
        Self.setAccountName(account);
        Self.setPassword(password);
        Self.setSmtpServer(server);
        Self.log();
end;
    

procedure TEmailServerConfiguration.setSmtpServer(value: string);
begin
        Self.smtpServer := value;
end;
    

function TEmailServerConfiguration.getSmtpServer: string;
begin
        Exit(Self.smtpServer);
end;
    

function TEmailServerConfiguration.getAccountName: string;
begin
        Exit(Self.accountName);
end;
    

procedure TEmailServerConfiguration.setAccountName(accountName: string);
begin
        Self.accountName := accountName;
end;
    

function TEmailServerConfiguration.getPassword: string;
begin
        Exit(Self.password);
end;
    

procedure TEmailServerConfiguration.setPassword(password: string);
begin
        Self.password := password;
end;
    

procedure TEmailServerConfiguration.log;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.toString(), TJava.Box(Self), 'EmailServerConfiguration');
        end;
end;
    

function TEmailServerConfiguration.toString: string;
begin
        Exit('Email Server Configuration:'#10'' + 'Smtp Server: '#10'' + TJava.ToString(Self.getSmtpServer()) + ''#10'Account Name: ' + TJava.ToString(Self.getAccountName()) + ''#10'Password: ' + TJava.ToString(Self.getPassword()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


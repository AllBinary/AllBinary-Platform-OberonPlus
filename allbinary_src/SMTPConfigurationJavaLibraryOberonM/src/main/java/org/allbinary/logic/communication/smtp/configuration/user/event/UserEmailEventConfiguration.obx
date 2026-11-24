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
// package org.allbinary.logic.communication.smtp.configuration.user.event
unit UserEmailEventConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, UserEmailEventConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailEventConfiguration = class(TInterfacedObject, IUserEmailEventConfigurationInterface)
  public
    logUtil: TLogUtil;
    name: string;
    eventListenerClassPath: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function getEventListenerClassPath: string; virtual;
        procedure setEventListenerClassPath(eventListenerClassPath: string); virtual;
        function log: string; virtual;
  end;

implementation
uses
  UserEmailEventConfigurationData, StringUtil;


{AB:CODE}

procedure TUserEmailEventConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TUserEmailEventConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailEventConfiguration.Create;
begin
    inherited Create;
    InitFields;
        Self.setName(TStringUtil.getInstance().EMPTY_STRING);
        Self.setEventListenerClassPath(TStringUtil.getInstance().EMPTY_STRING);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF('New', TJava.Box(Self), ' Constructor');
        end;
end;
    

constructor TUserEmailEventConfiguration.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.setName(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TUserEmailEventConfigurationData.NAME)))));
        Self.setEventListenerClassPath(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TUserEmailEventConfigurationData.LISTENER_CLASSPATH)))));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF('Log: ' + TJava.ToString(Self.log()), TJava.Box(Self), ' Constructor');
        end;
end;
    

function TUserEmailEventConfiguration.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TUserEmailEventConfiguration.setName(name: string);
begin
        Self.name := name;
end;
    

function TUserEmailEventConfiguration.getEventListenerClassPath: string;
begin
        Exit(Self.eventListenerClassPath);
end;
    

procedure TUserEmailEventConfiguration.setEventListenerClassPath(eventListenerClassPath: string);
begin
        Self.eventListenerClassPath := eventListenerClassPath;
end;
    

function TUserEmailEventConfiguration.log: string;
begin
        Exit(''#10'User Email Event Log Info:' + ''#10'Name: ' + Self.getName() + ''#10'EventListenerClassPath: ' + TJava.ToString(Self.getEventListenerClassPath()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


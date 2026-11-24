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
unit UserEmailEventsConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserInterface, LogUtil, UserEmailEventListenerInterface, UserEmailEventNameData, AbeClientInformationInterface, CommonStrings, UserEmailEventConfigurationInterface, UserEmailEventsConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailEventsConfiguration = class(TInterfacedObject, IUserEmailEventsConfigurationInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    emailEventHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        procedure init;
        function getEventConfigurationHashMap: TJavaHashMap<TObject, TObject>; virtual;
        procedure addUserEmailEventConfiguration(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface); virtual;
        function getEventListener(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userInterface_: IUserInterface): IUserEmailEventListenerInterface; virtual;
  end;

implementation
uses
  UserEmailEventListenerFactory, StdUtil;


{AB:CODE}

procedure TUserEmailEventsConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TUserEmailEventsConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailEventsConfiguration.Create;
begin
    inherited Create;
    InitFields;
        Self.init();
end;
    

constructor TUserEmailEventsConfiguration.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.init();
end;
    

procedure TUserEmailEventsConfiguration.init;
begin
        Self.emailEventHashMap := TStdUtil.getInstance().createHashMap();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), ' Constructor');
        end;
end;
    

function TUserEmailEventsConfiguration.getEventConfigurationHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.emailEventHashMap);
end;
    

procedure TUserEmailEventsConfiguration.addUserEmailEventConfiguration(userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface);
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF('Adding: ' + TJava.ToString(userEmailEventConfigurationInterface_.log()), TJava.Box(Self), 'addUserEmailEventConfiguration');
        end;
        Self.emailEventHashMap.put(TJava.Box(userEmailEventConfigurationInterface_.getName()), TJava.Box(userEmailEventConfigurationInterface_));
end;
    

// throws Exception
function TUserEmailEventsConfiguration.getEventListener(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userInterface_: IUserInterface): IUserEmailEventListenerInterface;
var
  userEmailEventConfigurationInterface_: IUserEmailEventConfigurationInterface;
begin
        userEmailEventConfigurationInterface_ := (TJava.ToObject(Self.emailEventHashMap.get(TJava.Box(userEmailEventNameData_.toString()))) as IUserEmailEventConfigurationInterface);
        Exit(TUserEmailEventListenerFactory.getInstance(abeClientInformation, userEmailEventConfigurationInterface_, userInterface_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


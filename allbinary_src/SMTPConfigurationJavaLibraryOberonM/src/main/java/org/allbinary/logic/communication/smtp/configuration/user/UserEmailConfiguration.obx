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
// package org.allbinary.logic.communication.smtp.configuration.user
unit UserEmailConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, UserEmailEventsConfigurationInterface, CommonStrings, UserEmailConfigurationInterface;

type
  {AB:TYPES}
  TUserEmailConfiguration = class(TInterfacedObject, IUserEmailConfigurationInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    userEmailEventsConfigurationInterface: IUserEmailEventsConfigurationInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function getUserEmailEventsConfigurationInterface: IUserEmailEventsConfigurationInterface; virtual;
        procedure setUserEmailEventsConfigurationInterface(userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface); virtual;
  end;

implementation
uses
  UserEmailEventsConfiguration;


{AB:CODE}

procedure TUserEmailConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TUserEmailConfiguration.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEmailConfiguration.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.setUserEmailEventsConfigurationInterface(TUserEmailEventsConfiguration.Create());
end;
    

constructor TUserEmailConfiguration.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.setUserEmailEventsConfigurationInterface(TUserEmailEventsConfiguration.Create(hashMap_));
end;
    

function TUserEmailConfiguration.getUserEmailEventsConfigurationInterface: IUserEmailEventsConfigurationInterface;
begin
        Exit(Self.userEmailEventsConfigurationInterface);
end;
    

procedure TUserEmailConfiguration.setUserEmailEventsConfigurationInterface(userEmailEventsConfigurationInterface_: IUserEmailEventsConfigurationInterface);
begin
        Self.userEmailEventsConfigurationInterface := userEmailEventsConfigurationInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


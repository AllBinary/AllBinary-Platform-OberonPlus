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
// package org.allbinary.logic.communication.smtp.event.handler.factory
unit UserEmailEventHandlerSingletons;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserInterface, LogUtil, UserEmailEventNameData, UserEmailEventHandler, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TUserEmailEventHandlerSingletons = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    userEmailEventHandlerHashMap: TJavaHashMap<TObject, TObject>;
    class var instance: TUserEmailEventHandlerSingletons;
    procedure InitFields;
        class function getInstance: TUserEmailEventHandlerSingletons; overload; static;
        constructor Create;
        function getInstance(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userInterface_: IUserInterface): TUserEmailEventHandler; overload; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StdUtil, EmailEventHandlerUtil, LogUserEmailEventListenerModule;


{AB:CODE}

procedure TUserEmailEventHandlerSingletons.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.userEmailEventHandlerHashMap := TStdUtil.getInstance().createHashMap();
end;
    

class function TUserEmailEventHandlerSingletons.getInstance: TUserEmailEventHandlerSingletons;
begin
        Exit(TUserEmailEventHandlerSingletons.instance);
end;
    

constructor TUserEmailEventHandlerSingletons.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
function TUserEmailEventHandlerSingletons.getInstance(abeClientInformation: IAbeClientInformationInterface; userEmailEventNameData_: TUserEmailEventNameData; userInterface_: IUserInterface): TUserEmailEventHandler;
var
  userEmailEventHandler_: TUserEmailEventHandler;
  newUserEmailEventHandler: TUserEmailEventHandler;
  vector: TBasicArrayList;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
        end;
        userEmailEventHandler_ := TUserEmailEventHandler(TJava.ToObject(Self.userEmailEventHandlerHashMap.get(TJava.Box(userEmailEventNameData_))));
        if (userEmailEventHandler_) = (nil) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Creating New Named UserEmailEventHandler', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            end;
            newUserEmailEventHandler := TUserEmailEventHandler.Create();
            vector := TEmailEventHandlerUtil.getUserEmailEventListenerVector(abeClientInformation, userEmailEventNameData_, userInterface_);
            newUserEmailEventHandler.addListener(vector);
            newUserEmailEventHandler.addListener(TLogUserEmailEventListenerModule.Create());
            Self.userEmailEventHandlerHashMap.put(TJava.Box(userEmailEventNameData_), TJava.Box(newUserEmailEventHandler));
            Exit(newUserEmailEventHandler);
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Returning existing UserEmailEventHandler', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            end;
            Exit(userEmailEventHandler_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TUserEmailEventHandlerSingletons.instance := TUserEmailEventHandlerSingletons.Create();
  {AB:END}

end.


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
unit StoreAdminUserEmailEventHandlerSingletons;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, LogUtil, UserEmailEventNameData, UserEmailEventHandler, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TStoreAdminUserEmailEventHandlerSingletons = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    userEmailEventHandlerHashMap: TJavaHashMap<TObject, TObject>;
    class var instance: TStoreAdminUserEmailEventHandlerSingletons;
    procedure InitFields;
        class function getInstance: TStoreAdminUserEmailEventHandlerSingletons; overload; static;
        constructor Create;
        function getInstance(userEmailEventNameData_: TUserEmailEventNameData; abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface): TUserEmailEventHandler; overload; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, UserEntityFactory, StdUtil, EmailEventHandlerUtil;


{AB:CODE}

procedure TStoreAdminUserEmailEventHandlerSingletons.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.userEmailEventHandlerHashMap := TStdUtil.getInstance().createHashMap();
end;
    

class function TStoreAdminUserEmailEventHandlerSingletons.getInstance: TStoreAdminUserEmailEventHandlerSingletons;
begin
        Exit(TStoreAdminUserEmailEventHandlerSingletons.instance);
end;
    

constructor TStoreAdminUserEmailEventHandlerSingletons.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
function TStoreAdminUserEmailEventHandlerSingletons.getInstance(userEmailEventNameData_: TUserEmailEventNameData; abeClientInformation: IAbeClientInformationInterface; storeFrontInterface_: IStoreFrontInterface): TUserEmailEventHandler;
var
  userEmailEventHandler_: TUserEmailEventHandler;
  userVector: TBasicArrayList;
  newUserEmailEventHandler: TUserEmailEventHandler;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
        end;
        userEmailEventHandler_ := TUserEmailEventHandler(TJava.ToObject(Self.userEmailEventHandlerHashMap.get(TJava.Box(userEmailEventNameData_))));
        if (userEmailEventHandler_) = (nil) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Creating New Named UserEmailEventHandler', TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            end;
            userVector := TUserEntityFactory.getInstance().getStoreManagers(storeFrontInterface_);
            newUserEmailEventHandler := TEmailEventHandlerUtil.getInstance().getEventHandler(abeClientInformation, userEmailEventNameData_, userVector);
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
  TStoreAdminUserEmailEventHandlerSingletons.instance := TStoreAdminUserEmailEventHandlerSingletons.Create();
  {AB:END}

end.


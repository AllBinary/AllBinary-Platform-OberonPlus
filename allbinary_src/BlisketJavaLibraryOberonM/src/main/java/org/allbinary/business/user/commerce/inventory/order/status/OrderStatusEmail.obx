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
// package org.allbinary.business.user.commerce.inventory.order.status
unit OrderStatusEmail;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, UserInterface, OrderHistory, LogUtil, AbeClientInformationInterface, CommonStrings;

type
  {AB:TYPES}
  TOrderStatusEmail = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abeClientInformation: IAbeClientInformationInterface;
    orderHistory: TOrderHistory;
    storeFrontInterface: IStoreFrontInterface;
    user: IUserInterface;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; orderHistory_: TOrderHistory);
        procedure process; virtual;
        procedure notifyStoreAdmin;
        procedure notifyUser;
  end;

implementation
uses
  StoreFrontFactory, UserEntityFactory, UserEmailEventNameData, UserEmailEventHandler, AdminUserEmailEventHandlerSingletons, StoreAdminUserEmailEventHandlerSingletons, UserEmailEventHandlerSingletons, AdminEmailInfo, BasicEmailInfo, EmailInfo, StoreEmailInfo;


{AB:CODE}

procedure TOrderStatusEmail.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
end;
    

constructor TOrderStatusEmail.Create(abeClientInformation: IAbeClientInformationInterface; orderHistory_: TOrderHistory);
var
  storeName: string;
begin
    inherited Create;
    InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.orderHistory := orderHistory_;
        storeName := orderHistory_.getStoreName();
        Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        Self.user := TUserEntityFactory.getInstance().getUser(orderHistory_.getUserName());
end;
    

// throws Exception
procedure TOrderStatusEmail.process;
begin
        Self.notifyStoreAdmin();
        Self.notifyUser();
end;
    

// throws Exception
procedure TOrderStatusEmail.notifyStoreAdmin;
var
  adminEmailSubject: string;
  adminEmailTextBody: string;
  adminBasicEmailInfo: TBasicEmailInfo;
  storeAdminBasicEmailInfo: TBasicEmailInfo;
  storeAdminEmailInfo: TEmailInfo;
  adminEmailInfo_: TEmailInfo;
  userEmailEventNameData_: TUserEmailEventNameData;
  adminUserEmailEventHandler: TUserEmailEventHandler;
  storeAdminUserEmailEventHandler: TUserEmailEventHandler;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Order Email', TJava.Box(Self), 'emailStoreAdmin');
            end;
            adminEmailSubject := 'Order ' + TJava.ToString(Self.orderHistory.getStatus()) + ' Attempt';
            adminEmailTextBody := 'Order attempt: ' + TJava.ToString(Self.orderHistory.getId()) + ' Preprocessing by: ' + TJava.ToString(Self.user.getUserName());
            adminBasicEmailInfo := TBasicEmailInfo(TJava.ToObject(TAdminEmailInfo.Create(adminEmailSubject, adminEmailTextBody)));
            storeAdminBasicEmailInfo := TBasicEmailInfo(TJava.ToObject(TStoreEmailInfo.Create(Self.storeFrontInterface, adminEmailSubject, adminEmailTextBody)));
            storeAdminEmailInfo := TEmailInfo.Create(storeAdminBasicEmailInfo);
            adminEmailInfo_ := TEmailInfo.Create(adminBasicEmailInfo);
            userEmailEventNameData_ := TUserEmailEventNameData.getInstance(Self.orderHistory.getStatus());
            adminUserEmailEventHandler := TAdminUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, userEmailEventNameData_);
            storeAdminUserEmailEventHandler := TStoreAdminUserEmailEventHandlerSingletons.getInstance().getInstance(userEmailEventNameData_, Self.abeClientInformation, Self.storeFrontInterface);
            storeAdminUserEmailEventHandler.receiveEmailInfo(userEmailEventNameData_, storeAdminEmailInfo);
            adminUserEmailEventHandler.receiveEmailInfo(userEmailEventNameData_, adminEmailInfo_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'emailAdmin', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
procedure TOrderStatusEmail.notifyUser;
var
  subject: string;
  textBody: string;
  basicEmailInfo_: TBasicEmailInfo;
  emailInfo_: TEmailInfo;
  userEmailEventNameData_: TUserEmailEventNameData;
  userEmailEventHandler_: TUserEmailEventHandler;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
                Self.logUtil.putF('Email User', TJava.Box(Self), 'notifyUser()');
            end;
            subject := 'Order ' + TJava.ToString(Self.orderHistory.getStatus()) + ' Attempt';
            textBody := 'Order attempt: ' + TJava.ToString(Self.orderHistory.getId()) + ' Preprocessing by: ' + TJava.ToString(Self.user.getUserName());
            basicEmailInfo_ := TBasicEmailInfo(TJava.ToObject(TStoreEmailInfo.Create(Self.storeFrontInterface, subject, textBody)));
            emailInfo_ := TEmailInfo.Create(basicEmailInfo_);
            userEmailEventNameData_ := TUserEmailEventNameData.getInstance(Self.orderHistory.getStatus());
            userEmailEventHandler_ := TUserEmailEventHandlerSingletons.getInstance().getInstance(Self.abeClientInformation, userEmailEventNameData_, Self.user);
            userEmailEventHandler_.receiveEmailInfo(userEmailEventNameData_, emailInfo_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'notifyUser', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


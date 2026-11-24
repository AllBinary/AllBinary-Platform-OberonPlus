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
// package admin.taghelpers
unit OrderHistoryRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TagHelper;

type
  {AB:TYPES}
  TOrderHistoryRequestHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    request: THttpServletRequest;
    id: string;
    groupId: string;
    status: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function setOrderStatus: string; overload; virtual;
        function setOrderStatus(newStatus: string): string; overload; virtual;
  end;

implementation
uses
  OrderData, OrderHistory, OrderHistoryData, OrderStatusEmail, ShippingMethodData, OrderHistoryEntityFactory, OrderItemsEntityFactory, ServiceClientInformationInterfaceFactory, CommonPhoneStrings;


{AB:CODE}

procedure TOrderHistoryRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  
  
end;
    

constructor TOrderHistoryRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.getFormData();
end;
    

procedure TOrderHistoryRequestHelper.getFormData;
begin
        Self.id := Self.request.getParameter(TOrderData.ID);
        Self.groupId := Self.request.getParameter(TShippingMethodData.GROUP);
        Self.status := Self.request.getParameter(TOrderHistoryData.STATUS);
end;
    

function TOrderHistoryRequestHelper.setOrderStatus: string;
var
  success: string;
  error: string;
begin
        try
            if (CompareStr(Self.groupId, TCommonPhoneStrings.getInstance().ZERO)) <> (0) then begin
                if TOrderItemsEntityFactory.getInstance().isEverythingShipped(Self.id) then begin
                    Self.status := TOrderHistoryData.SHIPPED;
                end else begin
                    Self.status := TOrderHistoryData.PARTIALLYSHIPPED;
                end;
            end;
            success := 'Status successfully set to: ' + Self.status;
            TOrderHistoryEntityFactory.getInstance().setStatus(Self.id, Self.status);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Success', TJava.Box(Self), 'setOrderStatus()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to set order status';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setOrderStatus()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TOrderHistoryRequestHelper.setOrderStatus(newStatus: string): string;
var
  success: string;
  orderHistory_: TOrderHistory;
  error: string;
begin
        try
            if (newStatus) = ('') then begin
                newStatus := Self.status;
            end;
            success := 'Status successfully set to: ' + newStatus;
            TOrderHistoryEntityFactory.getInstance().setStatus(Self.id, newStatus);
            orderHistory_ := TOrderHistoryEntityFactory.getInstance().getOrder(Self.id);
            TOrderStatusEmail.Create(Self.abeClientInformation, orderHistory_).process();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Success', TJava.Box(Self), 'setOrderStatus()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view order table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setOrderStatus(newStatus)', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


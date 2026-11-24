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
unit UpdateOrderHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TagHelper;

type
  {AB:TYPES}
  TUpdateOrderHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    entryId: string;
    orderId: string;
    userName: string;
    storeName: string;
    shipDate: string;
    orderDate: string;
    transDate: string;
    cancelDate: string;
    status: string;
    paymentMethod: string;
    name: string;
    type_: string;
    expiration: string;
    number: string;
    encryption: string;
    billingName: string;
    billingStreet: string;
    billingCity: string;
    billingState: string;
    billingCode: string;
    billingCountry: string;
    shippingName: string;
    shippingStreet: string;
    shippingCity: string;
    shippingState: string;
    shippingCode: string;
    shippingCountry: string;
    shippingMethodName: string;
    subTotal: string;
    shippingCost: string;
    tax: string;
    total: string;
    special: string;
    userComment: string;
    userCancelComment: string;
    storeComment: string;
    storeCancelComment: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function update: string; virtual;
  end;

implementation
uses
  StoreFrontData, EntryData, UserData, BillingAddressData, ShippingAddressData, OrderData, OrderHistoryData, PaymentData, ShippingMethodData, OrderHistoryEntityFactory, StdUtil;


{AB:CODE}

procedure TUpdateOrderHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TUpdateOrderHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.getFormData();
end;
    

procedure TUpdateOrderHelper.getFormData;
begin
        Self.entryId := Self.request.getParameter(TEntryData.getInstance().ID);
        Self.orderId := Self.request.getParameter(TOrderData.ID);
        Self.userName := Self.request.getParameter(TUserData.USERNAME);
        Self.storeName := Self.request.getParameter(TStoreFrontData.getInstance().NAME);
        Self.shipDate := Self.request.getParameter(TOrderHistoryData.SHIPPEDDATE);
        Self.orderDate := Self.request.getParameter(TOrderHistoryData.ORDERDATE);
        Self.transDate := Self.request.getParameter(TOrderHistoryData.TRANSDATE);
        Self.cancelDate := Self.request.getParameter(TOrderHistoryData.CANCELDATE);
        Self.status := Self.request.getParameter(TOrderHistoryData.STATUS);
        Self.paymentMethod := Self.request.getParameter(TPaymentData.METHOD);
        Self.name := Self.request.getParameter(TPaymentData.NAME);
        Self.type_ := Self.request.getParameter(TPaymentData.TYPE_);
        Self.expiration := Self.request.getParameter(TPaymentData.EXPIRATION);
        Self.number := Self.request.getParameter(TPaymentData.NUMBER);
        Self.encryption := Self.request.getParameter(TEntryData.getInstance().ENCRYPTION);
        Self.billingName := Self.request.getParameter(TBillingAddressData.NAME);
        Self.billingStreet := Self.request.getParameter(TBillingAddressData.STREET);
        Self.billingCity := Self.request.getParameter(TBillingAddressData.CITY);
        Self.billingState := Self.request.getParameter(TBillingAddressData.STATE);
        Self.billingCode := Self.request.getParameter(TBillingAddressData.CODE);
        Self.billingCountry := Self.request.getParameter(TBillingAddressData.COUNTRY);
        Self.shippingName := Self.request.getParameter(TShippingAddressData.NAME);
        Self.shippingStreet := Self.request.getParameter(TShippingAddressData.STREET);
        Self.shippingCity := Self.request.getParameter(TShippingAddressData.CITY);
        Self.shippingState := Self.request.getParameter(TShippingAddressData.STATE);
        Self.shippingCode := Self.request.getParameter(TShippingAddressData.CODE);
        Self.shippingCountry := Self.request.getParameter(TShippingAddressData.COUNTRY);
        Self.shippingMethodName := Self.request.getParameter(TShippingMethodData.NAME);
        Self.subTotal := Self.request.getParameter(TOrderHistoryData.SUBTOTAL);
        Self.shippingCost := Self.request.getParameter(TOrderHistoryData.SHIPPINGCOST);
        Self.tax := Self.request.getParameter(TOrderHistoryData.TAX);
        Self.total := Self.request.getParameter(TOrderHistoryData.TOTAL);
        Self.special := Self.request.getParameter(TEntryData.getInstance().SPECIAL);
        Self.userComment := Self.request.getParameter(TOrderData.CUSTOMERCOMMENT);
        Self.userCancelComment := Self.request.getParameter(TOrderData.CUSTOMERCANCELCOMMENT);
        Self.storeComment := Self.request.getParameter(TOrderData.STORECOMMENT);
        Self.storeCancelComment := Self.request.getParameter(TOrderData.STORECANCELCOMMENT);
end;
    

function TUpdateOrderHelper.update: string;
var
  success: string;
  orderHashMap: TJavaHashMap<TObject, TObject>;
  whereHashMap: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Successful update';
            orderHashMap := TStdUtil.getInstance().createHashMap();
            whereHashMap := TStdUtil.getInstance().createHashMap();
            orderHashMap.put(TJava.Box(TEntryData.getInstance().ID), TJava.Box(Self.entryId));
            orderHashMap.put(TJava.Box(TOrderData.ID), TJava.Box(Self.orderId));
            orderHashMap.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
            orderHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
            orderHashMap.put(TJava.Box(TOrderHistoryData.SHIPPEDDATE), TJava.Box(Self.shipDate));
            orderHashMap.put(TJava.Box(TOrderHistoryData.ORDERDATE), TJava.Box(Self.orderDate));
            orderHashMap.put(TJava.Box(TOrderHistoryData.TRANSDATE), TJava.Box(Self.transDate));
            orderHashMap.put(TJava.Box(TOrderHistoryData.CANCELDATE), TJava.Box(Self.cancelDate));
            orderHashMap.put(TJava.Box(TOrderHistoryData.STATUS), TJava.Box(Self.status));
            orderHashMap.put(TJava.Box(TPaymentData.METHOD), TJava.Box(Self.paymentMethod));
            orderHashMap.put(TJava.Box(TPaymentData.NAME), TJava.Box(Self.name));
            orderHashMap.put(TJava.Box(TPaymentData.TYPE_), TJava.Box(Self.type_));
            orderHashMap.put(TJava.Box(TPaymentData.EXPIRATION), TJava.Box(Self.expiration));
            orderHashMap.put(TJava.Box(TBillingAddressData.NAME), TJava.Box(Self.billingName));
            orderHashMap.put(TJava.Box(TBillingAddressData.STREET), TJava.Box(Self.billingStreet));
            orderHashMap.put(TJava.Box(TBillingAddressData.CITY), TJava.Box(Self.billingCity));
            orderHashMap.put(TJava.Box(TBillingAddressData.STATE), TJava.Box(Self.billingState));
            orderHashMap.put(TJava.Box(TBillingAddressData.CODE), TJava.Box(Self.billingCode));
            orderHashMap.put(TJava.Box(TBillingAddressData.COUNTRY), TJava.Box(Self.billingCountry));
            orderHashMap.put(TJava.Box(TShippingAddressData.NAME), TJava.Box(Self.shippingName));
            orderHashMap.put(TJava.Box(TShippingAddressData.STREET), TJava.Box(Self.shippingStreet));
            orderHashMap.put(TJava.Box(TShippingAddressData.CITY), TJava.Box(Self.shippingCity));
            orderHashMap.put(TJava.Box(TShippingAddressData.STATE), TJava.Box(Self.shippingState));
            orderHashMap.put(TJava.Box(TShippingAddressData.CODE), TJava.Box(Self.shippingCode));
            orderHashMap.put(TJava.Box(TShippingAddressData.COUNTRY), TJava.Box(Self.shippingCountry));
            orderHashMap.put(TJava.Box(TShippingMethodData.NAME), TJava.Box(Self.shippingMethodName));
            orderHashMap.put(TJava.Box(TOrderHistoryData.SUBTOTAL), TJava.Box(Self.subTotal));
            orderHashMap.put(TJava.Box(TOrderHistoryData.SHIPPINGCOST), TJava.Box(Self.shippingCost));
            orderHashMap.put(TJava.Box(TOrderHistoryData.TAX), TJava.Box(Self.tax));
            orderHashMap.put(TJava.Box(TOrderHistoryData.TOTAL), TJava.Box(Self.total));
            orderHashMap.put(TJava.Box(TEntryData.getInstance().SPECIAL), TJava.Box(Self.special));
            orderHashMap.put(TJava.Box(TOrderData.CUSTOMERCOMMENT), TJava.Box(Self.userComment));
            orderHashMap.put(TJava.Box(TOrderData.CUSTOMERCANCELCOMMENT), TJava.Box(Self.userCancelComment));
            orderHashMap.put(TJava.Box(TOrderData.STORECOMMENT), TJava.Box(Self.storeComment));
            orderHashMap.put(TJava.Box(TOrderData.STORECANCELCOMMENT), TJava.Box(Self.storeCancelComment));
            whereHashMap.put(TJava.Box(TOrderData.ID), TJava.Box(Self.orderId));
            TOrderHistoryEntityFactory.getInstance().update(whereHashMap, orderHashMap);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update order table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


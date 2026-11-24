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
// package org.allbinary.business.user.commerce.inventory.order
unit OrderHistory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StreetAddress, BasketInterface, Money, Payment, Document, Node, Order, OrderHistoryInterface;

type
  {AB:TYPES}
  TOrderHistory = class(TOrder, IOrderHistoryInterface)
  public
    userName: string;
    shippingAddress: TStreetAddress;
    billingAddress: TStreetAddress;
    payment: TPayment;
    shipDate: string;
    orderDate: string;
    transDate: string;
    cancelDate: string;
    status: string;
    subTotal: TMoney;
    shippingCost: TMoney;
    taxes: TMoney;
    total: TMoney;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basketInterface_: IBasketInterface); overload;
        constructor Create(basketInterface_: IBasketInterface; orderHistory_: TOrderHistory); overload;
        constructor Create(basketInterface_: IBasketInterface; orderHistoryHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure setUserName(value: string); virtual;
        procedure setDefaultShippingAddress(shippingAddress: TStreetAddress); virtual;
        procedure setBillingAddress(billingAddress: TStreetAddress); virtual;
        procedure setPaymentInfo(payment_: TPayment); virtual;
        procedure setShipDate(value: string); virtual;
        procedure setOrderDate(value: string); virtual;
        procedure setTransDate(value: string); virtual;
        procedure setCancelDate(value: string); virtual;
        procedure setStatus(value: string); virtual;
        procedure setSubTotal(value: TMoney); virtual;
        procedure setShippingCost(value: TMoney); virtual;
        procedure setTaxes(value: TMoney); virtual;
        procedure setTotal(value: TMoney); virtual;
        function getUserName: string; virtual;
        function getShippingAddress: TStreetAddress; virtual;
        function getBillingAddress: TStreetAddress; virtual;
        function getPaymentInfo: TPayment; virtual;
        function getShipDate: string; virtual;
        function getOrderDate: string; virtual;
        function getTransDate: string; virtual;
        function getCancelDate: string; virtual;
        function getStatus: string; virtual;
        function getSubTotal: TMoney; virtual;
        function getShippingCost: TMoney; virtual;
        function getTaxes: TMoney; virtual;
        function getTotal: TMoney; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getPaymentMethod: string; virtual;
  end;

implementation
uses
  OrderData, OrderHistoryData, StoreFrontData, EntryData, UserData, BillingAddressData, ShippingAddressData, MoneyException, PaymentData, ShippingMethodData, ModDomHelper, StdUtil, StringUtil;


{AB:CODE}

procedure TOrderHistory.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TOrderHistory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOrderHistory.Create(basketInterface_: IBasketInterface);
begin
        inherited Create(basketInterface_);
        InitFields;
end;
    

constructor TOrderHistory.Create(basketInterface_: IBasketInterface; orderHistory_: TOrderHistory);
begin
        inherited Create(orderHistory_.getStoreName(), basketInterface_, orderHistory_.getId(), orderHistory_.getShippingMethod(), orderHistory_.getSpecial(), orderHistory_.getPaymentMethod());
        InitFields;
        Self.userName := orderHistory_.getUserName();
        Self.shippingAddress := orderHistory_.getShippingAddress();
        Self.billingAddress := orderHistory_.getBillingAddress();
        Self.payment := orderHistory_.getPaymentInfo();
        Self.shipDate := orderHistory_.getShipDate();
        Self.orderDate := orderHistory_.getOrderDate();
        Self.transDate := orderHistory_.getTransDate();
        Self.cancelDate := orderHistory_.getCancelDate();
        Self.status := orderHistory_.getStatus();
        Self.subTotal := orderHistory_.getSubTotal();
        Self.shippingCost := orderHistory_.getShippingCost();
        Self.taxes := orderHistory_.getTaxes();
        Self.total := orderHistory_.getTotal();
        inherited setUserComments(TJava.UnboxString(TJava.ToObject(orderHistory_.getUserComments())));
        inherited setUserCancelComments(TJava.UnboxString(TJava.ToObject(orderHistory_.getUserCancelComments())));
        inherited setStoreComments(TJava.UnboxString(TJava.ToObject(orderHistory_.getStoreComments())));
        inherited setStoreCancelComments(TJava.UnboxString(TJava.ToObject(orderHistory_.getStoreCancelComments())));
end;
    

constructor TOrderHistory.Create(basketInterface_: IBasketInterface; orderHistoryHashMap: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME)))), basketInterface_, TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderData.ID)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TShippingMethodData.NAME)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TEntryData.getInstance().SPECIAL)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TPaymentData.METHOD)))));
        InitFields;
        Self.shippingAddress := TStreetAddress.Create(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TShippingAddressData.NAME)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TShippingAddressData.STREET)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TShippingAddressData.CITY)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TShippingAddressData.STATE)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TShippingAddressData.CODE)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TShippingAddressData.COUNTRY)))));
        Self.billingAddress := TStreetAddress.Create(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TBillingAddressData.NAME)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TBillingAddressData.STREET)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TBillingAddressData.CITY)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TBillingAddressData.STATE)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TBillingAddressData.CODE)))), TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TBillingAddressData.COUNTRY)))));
        Self.payment := TPayment.Create(orderHistoryHashMap);
        Self.userName := TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TUserData.USERNAME))));
        Self.orderDate := TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.ORDERDATE))));
        Self.shipDate := TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.SHIPPEDDATE))));
        Self.transDate := TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.TRANSDATE))));
        Self.cancelDate := TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.CANCELDATE))));
        Self.status := TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.STATUS))));
        Self.subTotal := TMoney.Create(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.SUBTOTAL)))));
        Self.total := TMoney.Create(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.TOTAL)))));
        Self.shippingCost := TMoney.Create(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.SHIPPINGCOST)))));
        Self.taxes := TMoney.Create(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderHistoryData.TAX)))));
        inherited setUserComments(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderData.CUSTOMERCOMMENT)))));
        inherited setUserCancelComments(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderData.CUSTOMERCANCELCOMMENT)))));
        inherited setStoreComments(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderData.STORECOMMENT)))));
        inherited setStoreCancelComments(TJava.UnboxString(TJava.ToObject(orderHistoryHashMap.get(TJava.Box(TOrderData.STORECANCELCOMMENT)))));
end;
    

procedure TOrderHistory.setUserName(value: string);
begin
        Self.userName := value;
end;
    

procedure TOrderHistory.setDefaultShippingAddress(shippingAddress: TStreetAddress);
begin
        Self.shippingAddress := shippingAddress;
end;
    

procedure TOrderHistory.setBillingAddress(billingAddress: TStreetAddress);
begin
        Self.billingAddress := billingAddress;
end;
    

procedure TOrderHistory.setPaymentInfo(payment_: TPayment);
begin
        Self.payment := payment_;
end;
    

procedure TOrderHistory.setShipDate(value: string);
begin
        Self.shipDate := value;
end;
    

procedure TOrderHistory.setOrderDate(value: string);
begin
        Self.orderDate := value;
end;
    

procedure TOrderHistory.setTransDate(value: string);
begin
        Self.transDate := value;
end;
    

procedure TOrderHistory.setCancelDate(value: string);
begin
        Self.cancelDate := value;
end;
    

procedure TOrderHistory.setStatus(value: string);
begin
        Self.status := value;
end;
    

procedure TOrderHistory.setSubTotal(value: TMoney);
begin
        Self.subTotal := value;
end;
    

procedure TOrderHistory.setShippingCost(value: TMoney);
begin
        Self.shippingCost := value;
end;
    

procedure TOrderHistory.setTaxes(value: TMoney);
begin
        Self.taxes := value;
end;
    

procedure TOrderHistory.setTotal(value: TMoney);
begin
        Self.total := value;
end;
    

function TOrderHistory.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TOrderHistory.getShippingAddress: TStreetAddress;
begin
        Exit(Self.shippingAddress);
end;
    

function TOrderHistory.getBillingAddress: TStreetAddress;
begin
        Exit(Self.billingAddress);
end;
    

function TOrderHistory.getPaymentInfo: TPayment;
begin
        Exit(Self.payment);
end;
    

function TOrderHistory.getShipDate: string;
begin
        Exit(Self.shipDate);
end;
    

function TOrderHistory.getOrderDate: string;
begin
        Exit(Self.orderDate);
end;
    

function TOrderHistory.getTransDate: string;
begin
        Exit(Self.transDate);
end;
    

function TOrderHistory.getCancelDate: string;
begin
        Exit(Self.cancelDate);
end;
    

function TOrderHistory.getStatus: string;
begin
        Exit(Self.status);
end;
    

function TOrderHistory.getSubTotal: TMoney;
begin
        Exit(Self.subTotal);
end;
    

function TOrderHistory.getShippingCost: TMoney;
begin
        Exit(Self.shippingCost);
end;
    

function TOrderHistory.getTaxes: TMoney;
begin
        Exit(Self.taxes);
end;
    

function TOrderHistory.getTotal: TMoney;
begin
        Exit(Self.total);
end;
    

function TOrderHistory.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
        hashMap_.put(TJava.Box(TOrderHistoryData.ORDERDATE), TJava.Box(Self.orderDate));
        hashMap_.put(TJava.Box(TOrderHistoryData.SHIPPEDDATE), TJava.Box(Self.shipDate));
        hashMap_.put(TJava.Box(TOrderHistoryData.TRANSDATE), TJava.Box(Self.transDate));
        hashMap_.put(TJava.Box(TOrderHistoryData.CANCELDATE), TJava.Box(Self.cancelDate));
        hashMap_.put(TJava.Box(TOrderHistoryData.ORDERDATEFORMATTED), TJava.Box(TJava.DateOf(StrToInt64(Self.orderDate)).toString()));
        hashMap_.put(TJava.Box(TOrderHistoryData.SHIPPEDDATEFORMATTED), TJava.Box(TJava.DateOf(StrToInt64(Self.shipDate)).toString()));
        hashMap_.put(TJava.Box(TOrderHistoryData.TRANSDATEFORMATTED), TJava.Box(TJava.DateOf(StrToInt64(Self.transDate)).toString()));
        hashMap_.put(TJava.Box(TOrderHistoryData.CANCELDATEFORMATTED), TJava.Box(TJava.DateOf(StrToInt64(Self.cancelDate)).toString()));
        hashMap_.put(TJava.Box(TOrderHistoryData.STATUS), TJava.Box(Self.status));
        hashMap_.put(TJava.Box(TOrderHistoryData.SUBTOTAL), TJava.Box(Self.subTotal.toString()));
        hashMap_.put(TJava.Box(TOrderHistoryData.TOTAL), TJava.Box(Self.total.toString()));
        hashMap_.put(TJava.Box(TOrderHistoryData.SHIPPINGCOST), TJava.Box(Self.shippingCost.toString()));
        hashMap_.put(TJava.Box(TOrderHistoryData.TAX), TJava.Box(Self.taxes.toString()));
        Exit(hashMap_);
end;
    

// throws Exception
function TOrderHistory.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  keySet: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  node_: TNode;
  billingAddressNode: TNode;
  shippingAddressNode: TNode;
  name: string;
  value: string;
  i: Integer;
begin
        hashMap_ := Self.toHashMap();
        keySet := hashMap_.keySet();
        keyArray := keySet.toArray();
        size := System.Length(keyArray);
        node_ := document_.createElement(TOrderHistoryData.ORDERHISTORY);
        node_.appendChild(inherited toXmlNode(document_));
        billingAddressNode := document_.createElement(TBillingAddressData.BILLINGADDRESS);
        billingAddressNode.appendChild(Self.billingAddress.toXmlNode(document_));
        shippingAddressNode := document_.createElement(TShippingAddressData.SHIPPINGADDRESS);
        shippingAddressNode.appendChild(Self.shippingAddress.toXmlNode(document_));
        node_.appendChild(billingAddressNode);
        node_.appendChild(shippingAddressNode);
        node_.appendChild(Self.payment.toXmlNode(document_));
        for i := 0 to size - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(keyArray[i]));
            value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(name))));
            value := TStringUtil.getInstance().getNonNull(value);
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
        end;
        Exit(node_);
end;
    

function TOrderHistory.getPaymentMethod: string;
begin
        Exit(inherited getPaymentMethod());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


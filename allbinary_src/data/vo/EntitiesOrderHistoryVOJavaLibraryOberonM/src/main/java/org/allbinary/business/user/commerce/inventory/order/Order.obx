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
unit Order;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, BasketInterface, Document, Node, OrderInterface;

type
  {AB:TYPES}
  TOrder = class(TInterfacedObject, IOrderInterface)
  public
    basket: IBasketInterface;
    paymentMethod: string;
    shippingType: string;
    storeName: string;
    special: string;
    id: string;
    userComment: string;
    userCancelComment: string;
    storeComment: string;
    storeCancelComment: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basket: IBasketInterface); overload;
        constructor Create(storeName: string; basket: IBasketInterface; id: string; shippingType: string; special: string; paymentMethod: string); overload;
        function isIdValid: Boolean; virtual;
        function isValid: Boolean; virtual;
        function getIdValidationInfo: string; virtual;
        procedure setShippingMethod(shippingType: string); virtual;
        procedure setPaymentMethod(value: string); virtual;
        procedure setSpecial(special: string); virtual;
        procedure setId(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        procedure setUserComments(value: string); virtual;
        procedure setUserCancelComments(value: string); virtual;
        procedure setStoreComments(value: string); virtual;
        procedure setStoreCancelComments(value: string); virtual;
        function getBasket: IBasketInterface; virtual;
        function getShippingMethod: string; virtual;
        function getPaymentMethod: string; virtual;
        function getSpecial: string; virtual;
        function getId: string; virtual;
        function getStoreName: string; virtual;
        function getUserComments: string; virtual;
        function getUserCancelComments: string; virtual;
        function getStoreComments: string; virtual;
        function getStoreCancelComments: string; virtual;
        function reviewOrder(paymentMethod: string): string; virtual;
        function viewOrder(paymentMethod: string): string; virtual;
        function emailOrder(userName: string; paymentMethod: string; storeFrontInterface_: IStoreFrontInterface): string; virtual;
        function toHashMapOrder: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  OrderHistoryData, OrderData, StoreFrontData, EntryData, PaymentData, ShippingMethodData, ModDomHelper, StdUtil, StringUtil;


{AB:CODE}

procedure TOrder.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
end;

function TOrder.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOrder.Create(basket: IBasketInterface);
begin
    inherited Create;
    InitFields;
        Self.basket := basket;
        Self.id := nil;
        Self.shippingType := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TOrder.Create(storeName: string; basket: IBasketInterface; id: string; shippingType: string; special: string; paymentMethod: string);
begin
    inherited Create;
    InitFields;
        Self.storeName := storeName;
        Self.basket := basket;
        Self.id := id;
        Self.shippingType := shippingType;
        Self.special := special;
        Self.paymentMethod := paymentMethod;
end;
    

function TOrder.isIdValid: Boolean;
begin
        if ((((Self.getId()) = (nil)) or ((Self.getId().compareTo(TStringUtil.getInstance().EMPTY_STRING)) = (0))) or ((Self.getId().length()) > (TOrderHistoryData.MAXIDLEN))) or (not (TJava.IsNumber(Self.getId()))) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TOrder.isValid: Boolean;
begin
        Exit(True);
end;
    

function TOrder.getIdValidationInfo: string;
var
  EMPTY_STRING: string;
begin
        EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
        if ((((Self.getId()) = (nil)) or ((Self.getId().compareTo(EMPTY_STRING)) = (0))) or ((Self.getId().length()) > (TOrderHistoryData.MAXIDLEN))) or (not (TJava.IsNumber(Self.getId()))) then begin
            Exit('Please enter a valid order Id < ' + TJava.ToString(TOrderHistoryData.MAXIDLEN) + ' digits in length.<br>');
        end;
        Exit(EMPTY_STRING);
end;
    

procedure TOrder.setShippingMethod(shippingType: string);
begin
        Self.shippingType := shippingType;
end;
    

procedure TOrder.setPaymentMethod(value: string);
begin
        Self.paymentMethod := value;
end;
    

procedure TOrder.setSpecial(special: string);
begin
        Self.special := special;
end;
    

procedure TOrder.setId(value: string);
begin
        Self.id := value;
end;
    

procedure TOrder.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

procedure TOrder.setUserComments(value: string);
begin
        Self.userComment := value;
end;
    

procedure TOrder.setUserCancelComments(value: string);
begin
        Self.userCancelComment := value;
end;
    

procedure TOrder.setStoreComments(value: string);
begin
        Self.storeComment := value;
end;
    

procedure TOrder.setStoreCancelComments(value: string);
begin
        Self.storeCancelComment := value;
end;
    

function TOrder.getBasket: IBasketInterface;
begin
        Exit(Self.basket);
end;
    

function TOrder.getShippingMethod: string;
begin
        Exit(Self.shippingType);
end;
    

function TOrder.getPaymentMethod: string;
begin
        Exit(Self.paymentMethod);
end;
    

function TOrder.getSpecial: string;
begin
        Exit(Self.special);
end;
    

function TOrder.getId: string;
begin
        Exit(Self.id);
end;
    

function TOrder.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

function TOrder.getUserComments: string;
begin
        Exit(Self.userComment);
end;
    

function TOrder.getUserCancelComments: string;
begin
        Exit(Self.userCancelComment);
end;
    

function TOrder.getStoreComments: string;
begin
        Exit(Self.storeComment);
end;
    

function TOrder.getStoreCancelComments: string;
begin
        Exit(Self.storeCancelComment);
end;
    

function TOrder.reviewOrder(paymentMethod: string): string;
begin
        Exit('Create your own Order.reviewOrder');
end;
    

function TOrder.viewOrder(paymentMethod: string): string;
begin
        Exit('Create your own Order.viewOrder');
end;
    

function TOrder.emailOrder(userName: string; paymentMethod: string; storeFrontInterface_: IStoreFrontInterface): string;
begin
        Exit('Create your own Order.emailOrder');
end;
    

function TOrder.toHashMapOrder: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TPaymentData.METHOD), TJava.Box(Self.paymentMethod));
        hashMap_.put(TJava.Box(TShippingMethodData.NAME), TJava.Box(Self.shippingType));
        hashMap_.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
        hashMap_.put(TJava.Box(TEntryData.getInstance().SPECIAL), TJava.Box(Self.special));
        hashMap_.put(TJava.Box(TOrderData.ID), TJava.Box(Self.id));
        hashMap_.put(TJava.Box(TOrderData.CUSTOMERCOMMENT), TJava.Box(Self.userComment));
        hashMap_.put(TJava.Box(TOrderData.CUSTOMERCANCELCOMMENT), TJava.Box(Self.userCancelComment));
        hashMap_.put(TJava.Box(TOrderData.STORECOMMENT), TJava.Box(Self.storeComment));
        hashMap_.put(TJava.Box(TOrderData.STORECANCELCOMMENT), TJava.Box(Self.storeCancelComment));
        Exit(hashMap_);
end;
    

// throws Exception
function TOrder.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  keySet: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  node_: TNode;
  name: string;
  value: string;
  i: Integer;
begin
        hashMap_ := Self.toHashMapOrder();
        keySet := hashMap_.keySet();
        keyArray := keySet.toArray();
        size := System.Length(keyArray);
        node_ := document_.createElement(TOrderData.ORDER);
        for i := 0 to size - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(keyArray[i]));
            value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(name))));
            value := TStringUtil.getInstance().getNonNull(value);
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.business.user.commerce.inventory.item
unit Item;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StreetAddress, BasicItem, OrderItemInterface;

type
  {AB:TYPES}
  TItem = class(TBasicItem, IOrderItemInterface)
  public
    group: string;
    tax: string;
    shippingType: string;
    shippingCost: string;
    shippedDate: string;
    shippingAddress: TStreetAddress;
    special: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(itemHashMap: TJavaHashMap<TObject, TObject>); overload;
        constructor Create; overload;
        procedure setData(itemHashMap: TJavaHashMap<TObject, TObject>);
        procedure setGroup(value: string); virtual;
        procedure setTax(value: string); virtual;
        procedure setShippingType(value: string); virtual;
        procedure setShippingCost(value: string); virtual;
        procedure setShippingAddress(value: TStreetAddress); virtual;
        procedure setSpecial(value: string); virtual;
        function getGroup: string; virtual;
        function getTax: string; virtual;
        function getShippingType: string; virtual;
        function getShippingCost: string; virtual;
        function getShippingAddress: TStreetAddress; virtual;
        function getSpecial: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  EntryData, ShippingAddressData, StreetAddressData, OrderHistoryData, MoneyException, ShippingMethodData, StringUtil;


{AB:CODE}

procedure TItem.InitFields;
begin
  
  
  
  
  
  
  
end;

function TItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TItem.Create(itemHashMap: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(itemHashMap);
        InitFields;
        Self.setData(itemHashMap);
end;
    

constructor TItem.Create;
var
  EMPTY: string;
begin
    inherited Create;
    InitFields;
        EMPTY := TStringUtil.getInstance().EMPTY_STRING;
        Self.group := EMPTY;
        Self.tax := EMPTY;
        Self.shippingType := EMPTY;
        Self.shippingCost := EMPTY;
        Self.shippingAddress := TStreetAddress.Create();
end;
    

procedure TItem.setData(itemHashMap: TJavaHashMap<TObject, TObject>);
begin
        Self.group := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TShippingMethodData.GROUP))));
        Self.tax := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TOrderHistoryData.TAX))));
        Self.shippingType := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TShippingMethodData.NAME))));
        Self.shippingCost := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TShippingMethodData.COST))));
        Self.shippedDate := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(TOrderHistoryData.SHIPPEDDATE))));
        itemHashMap.put(TJava.Box(TStreetAddressData.NAME), TJava.Box(itemHashMap.get(TJava.Box(TShippingAddressData.NAME))));
        itemHashMap.put(TJava.Box(TStreetAddressData.STREET), TJava.Box(itemHashMap.get(TJava.Box(TShippingAddressData.STREET))));
        itemHashMap.put(TJava.Box(TStreetAddressData.CITY), TJava.Box(itemHashMap.get(TJava.Box(TShippingAddressData.CITY))));
        itemHashMap.put(TJava.Box(TStreetAddressData.STATE), TJava.Box(itemHashMap.get(TJava.Box(TShippingAddressData.STATE))));
        itemHashMap.put(TJava.Box(TStreetAddressData.CODE), TJava.Box(itemHashMap.get(TJava.Box(TShippingAddressData.CODE))));
        itemHashMap.put(TJava.Box(TStreetAddressData.COUNTRY), TJava.Box(itemHashMap.get(TJava.Box(TShippingAddressData.COUNTRY))));
        Self.shippingAddress := TStreetAddress.Create(itemHashMap);
end;
    

procedure TItem.setGroup(value: string);
begin
        Self.group := value;
end;
    

procedure TItem.setTax(value: string);
begin
        Self.tax := value;
end;
    

procedure TItem.setShippingType(value: string);
begin
        Self.shippingType := value;
end;
    

procedure TItem.setShippingCost(value: string);
begin
        Self.shippingCost := value;
end;
    

procedure TItem.setShippingAddress(value: TStreetAddress);
begin
        Self.shippingAddress := value;
end;
    

procedure TItem.setSpecial(value: string);
begin
        Self.special := value;
end;
    

function TItem.getGroup: string;
begin
        Exit(Self.group);
end;
    

function TItem.getTax: string;
begin
        Exit(Self.tax);
end;
    

function TItem.getShippingType: string;
begin
        Exit(Self.shippingType);
end;
    

function TItem.getShippingCost: string;
begin
        Exit(Self.shippingCost);
end;
    

function TItem.getShippingAddress: TStreetAddress;
begin
        Exit(Self.shippingAddress);
end;
    

function TItem.getSpecial: string;
begin
        Exit(Self.special);
end;
    

function TItem.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := inherited toHashMap();
        hashMap_.put(TJava.Box(TShippingMethodData.GROUP), TJava.Box(Self.group));
        hashMap_.put(TJava.Box(TOrderHistoryData.TAX), TJava.Box(Self.tax));
        hashMap_.put(TJava.Box(TShippingMethodData.NAME), TJava.Box(Self.shippingType));
        hashMap_.put(TJava.Box(TShippingMethodData.COST), TJava.Box(Self.shippingCost));
        hashMap_.put(TJava.Box(TOrderHistoryData.SHIPPEDDATE), TJava.Box(Self.shippedDate));
        hashMap_.put(TJava.Box(TEntryData.getInstance().SPECIAL), TJava.Box(Self.special));
        Exit(hashMap_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.business.context.modules.storefront.statistics.orders.history
unit StoreFrontOrdersHistoryStatistics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, Money, StoreFrontOrdersHistoryStatisticsInterface;

type
  {AB:TYPES}
  TStoreFrontOrdersHistoryStatistics = class(TInterfacedObject, IStoreFrontOrdersHistoryStatisticsInterface)
  public
    numberOfOrdersLong: Int64;
    subTotalMoney: TMoney;
    shippingCostMoney: TMoney;
    taxesMoney: TMoney;
    totalMoney: TMoney;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontInterface_: IStoreFrontInterface);
        function getNumberOfOrders: Int64; virtual;
        function getSubTotal: TMoney; virtual;
        function getShippingCost: TMoney; virtual;
        function getTaxes: TMoney; virtual;
        function getTotal: TMoney; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
  end;

implementation
uses
  StoreFrontOrdersHistoryStatisticsData, BasicArrayListD, OrderHistoryInterface, OrderHistoryEntityFactory, OrderHistoryEntityInterface, StdUtil;


{AB:CODE}

procedure TStoreFrontOrdersHistoryStatistics.InitFields;
begin
  
  
  
  
  
end;

function TStoreFrontOrdersHistoryStatistics.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontOrdersHistoryStatistics.Create(storeFrontInterface_: IStoreFrontInterface);
var
  orderHistoryEntityInterface_: IOrderHistoryEntityInterface;
  orderHistoryInterfaceVector: TBasicArrayList;
  numberOfOrders: Int64;
  orderHistoryInterface_: IOrderHistoryInterface;
  size: Integer;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.subTotalMoney := TMoney.Create();
        Self.shippingCostMoney := TMoney.Create();
        Self.taxesMoney := TMoney.Create();
        Self.totalMoney := TMoney.Create();
        orderHistoryEntityInterface_ := TOrderHistoryEntityFactory.getInstance();
        orderHistoryInterfaceVector := orderHistoryEntityInterface_.getStoreOrders(storeFrontInterface_);
        numberOfOrders := 0;
        
        size := orderHistoryInterfaceVector.size();
        for index := 0 to size - 1 do begin
            orderHistoryInterface_ := (TJava.ToObject(orderHistoryInterfaceVector.get(index)) as IOrderHistoryInterface);
            numberOfOrders := (numberOfOrders) + (1);
            Self.subTotalMoney.add(orderHistoryInterface_.getSubTotal());
            Self.shippingCostMoney.add(orderHistoryInterface_.getShippingCost());
            Self.taxesMoney.add(orderHistoryInterface_.getTaxes());
            Self.totalMoney.add(orderHistoryInterface_.getTotal());
        end;
        Self.numberOfOrdersLong := numberOfOrders;
end;
    

function TStoreFrontOrdersHistoryStatistics.getNumberOfOrders: Int64;
begin
        Exit(Self.numberOfOrdersLong);
end;
    

function TStoreFrontOrdersHistoryStatistics.getSubTotal: TMoney;
begin
        Exit(Self.subTotalMoney);
end;
    

function TStoreFrontOrdersHistoryStatistics.getShippingCost: TMoney;
begin
        Exit(Self.shippingCostMoney);
end;
    

function TStoreFrontOrdersHistoryStatistics.getTaxes: TMoney;
begin
        Exit(Self.taxesMoney);
end;
    

function TStoreFrontOrdersHistoryStatistics.getTotal: TMoney;
begin
        Exit(Self.totalMoney);
end;
    

function TStoreFrontOrdersHistoryStatistics.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  storeFrontOrdersHistoryStatisticsData_: TStoreFrontOrdersHistoryStatisticsData;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        storeFrontOrdersHistoryStatisticsData_ := TStoreFrontOrdersHistoryStatisticsData.getInstance();
        hashMap_.put(TJava.Box(storeFrontOrdersHistoryStatisticsData_.NUMBEROFORDERS), TJava.Box(Self.getNumberOfOrders().toString()));
        hashMap_.put(TJava.Box(storeFrontOrdersHistoryStatisticsData_.SUBTOTAL), TJava.Box(Self.getSubTotal().toString()));
        hashMap_.put(TJava.Box(storeFrontOrdersHistoryStatisticsData_.SHIPPINGCOST), TJava.Box(Self.getShippingCost().toString()));
        hashMap_.put(TJava.Box(storeFrontOrdersHistoryStatisticsData_.TAXES), TJava.Box(Self.getTaxes().toString()));
        hashMap_.put(TJava.Box(storeFrontOrdersHistoryStatisticsData_.TOTAL), TJava.Box(Self.getTotal().toString()));
        Exit(hashMap_);
end;
    

function TStoreFrontOrdersHistoryStatistics.toVector: TBasicArrayList;
begin
        Exit(nil);
end;
    

function TStoreFrontOrdersHistoryStatistics.getKey: TObject;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.business.context.modules.storefront.statistics.inventory
unit StoreFrontInventoryStatistics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, Money, StoreFrontInventoryStatisticsInterface;

type
  {AB:TYPES}
  TStoreFrontInventoryStatistics = class(TInterfacedObject, IStoreFrontInventoryStatisticsInterface)
  public
    totalNumberOfItems: Int64;
    totalInventorySaleValueMoney: TMoney;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontInterface_: IStoreFrontInterface);
        function getNumber: Int64; virtual;
        function getTotal: TMoney; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
  end;

implementation
uses
  StoreFrontInventoryStatisticsData, BasicArrayListD, ItemInterface, InventoryEntityFactory, InventoryEntityInterface, StdUtil;


{AB:CODE}

procedure TStoreFrontInventoryStatistics.InitFields;
begin
  
  
end;

function TStoreFrontInventoryStatistics.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontInventoryStatistics.Create(storeFrontInterface_: IStoreFrontInterface);
var
  inventoryEntityInterface_: IInventoryEntityInterface;
  itemVector: TBasicArrayList;
  size: Integer;
  itemInterface_: IItemInterface;
  numberInStock: Integer;
  itemPriceMoney: TMoney;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.totalInventorySaleValueMoney := TMoney.Create();
        inventoryEntityInterface_ := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
        itemVector := inventoryEntityInterface_.getItems(storeFrontInterface_);
        size := itemVector.size();
        for index := 0 to size - 1 do begin
            itemInterface_ := (TJava.ToObject(itemVector.get(index)) as IItemInterface);
            numberInStock := TJava.IntValueOf(itemInterface_.getNumber());
            Self.totalNumberOfItems := (Self.totalNumberOfItems) + (Int64(numberInStock));
            itemPriceMoney := itemInterface_.getPrice();
            itemPriceMoney.multiply(numberInStock);
            Self.totalInventorySaleValueMoney.add(itemPriceMoney.toString());
        end;
end;
    

function TStoreFrontInventoryStatistics.getNumber: Int64;
begin
        Exit(Self.totalNumberOfItems);
end;
    

function TStoreFrontInventoryStatistics.getTotal: TMoney;
begin
        Exit(Self.totalInventorySaleValueMoney);
end;
    

function TStoreFrontInventoryStatistics.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TStoreFrontInventoryStatisticsData.getInstance().NUMBEROFITEMS), TJava.Box(Self.getNumber().toString()));
        hashMap_.put(TJava.Box(TStoreFrontInventoryStatisticsData.getInstance().TOTALVALUE), TJava.Box(Self.getTotal().toString()));
        Exit(hashMap_);
end;
    

function TStoreFrontInventoryStatistics.toVector: TBasicArrayList;
begin
        Exit(nil);
end;
    

function TStoreFrontInventoryStatistics.getKey: TObject;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.data.tables.user.commerce.inventory.order
unit OrderHistoryEntityInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, Order, OrderHistory, BasicDataTableInterface;

type
  {AB:TYPES}
  IOrderHistoryEntityInterface = interface(IBasicDataTableInterface) ['IOrderHistoryEntityInterface']
        procedure insert(userName: string; order_: TOrder);
        procedure setStatus(orderId: string; status: string);
        procedure setPaymentMethod(orderId: string; status: string);
        function getStoreOrders(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
        function getOrders(userName: string): TBasicArrayList; overload;
        function getOrders(status: string; fromDate: string; toDate: string): TBasicArrayList; overload;
        function getOrder(id: string): TOrderHistory;
        procedure update(whereHashMap: TJavaHashMap<TObject, TObject>; orderHashMap: TJavaHashMap<TObject, TObject>);
  end;
  TOrderHistoryEntityInterface = IOrderHistoryEntityInterface;

implementation
uses
  BasicArrayListD;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


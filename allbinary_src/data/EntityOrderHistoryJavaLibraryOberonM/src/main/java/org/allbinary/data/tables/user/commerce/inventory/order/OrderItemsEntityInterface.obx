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
unit OrderItemsEntityInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasketReview, OrderInterface, BasicDataTableInterface;

type
  {AB:TYPES}
  IOrderItemsEntityInterface = interface(IBasicDataTableInterface) ['IOrderItemsEntityInterface']
        procedure setStatus(orderId: string; groupId: string; status: string);
        function isEverythingShipped(orderId: string): Boolean;
        function getBasketReview(orderId: string): TBasketReview;
        procedure insert(userName: string; order: IOrderInterface); overload;
        procedure insert(values: TBasicArrayList); overload;
  end;
  TOrderItemsEntityInterface = IOrderItemsEntityInterface;

implementation
uses
  BasicArrayListD;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


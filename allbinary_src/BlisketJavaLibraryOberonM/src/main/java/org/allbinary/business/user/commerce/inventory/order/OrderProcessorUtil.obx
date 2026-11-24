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
unit OrderProcessorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Order;

type
  {AB:TYPES}
  TOrderProcessorUtil = class(TObject)
  public
    ORDER_PROCESSED: string;
    class var instance: TOrderProcessorUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOrderProcessorUtil; static;
        function process(userName: string; order_: TOrder): string; virtual;
  end;

implementation
uses
  OrderIdGenerator, OrderHistoryEntity, OrderItemsEntity;


{AB:CODE}

procedure TOrderProcessorUtil.InitFields;
begin
  Self.ORDER_PROCESSED := 'Order Processed';
end;

constructor TOrderProcessorUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOrderProcessorUtil.getInstance: TOrderProcessorUtil;
begin
        Exit(TOrderProcessorUtil.instance);
end;
    

// throws Exception
function TOrderProcessorUtil.process(userName: string; order_: TOrder): string;
var
  orderItems: TOrderItemsEntity;
  orderHistory: TOrderHistoryEntity;
begin
        orderItems := TOrderItemsEntity.Create();
        orderHistory := TOrderHistoryEntity.Create();
        order_.setId(TOrderIdGenerator.Create().getNext());
        orderItems.insert(userName, order_);
        orderHistory.insert(userName, order_);
        Exit(Self.ORDER_PROCESSED);
end;

initialization
  {AB:INITIALIZATION}
  TOrderProcessorUtil.instance := TOrderProcessorUtil.Create();
  {AB:END}

end.


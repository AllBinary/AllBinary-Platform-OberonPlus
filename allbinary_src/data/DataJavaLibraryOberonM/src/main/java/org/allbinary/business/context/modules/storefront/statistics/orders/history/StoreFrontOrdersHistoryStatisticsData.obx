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
unit StoreFrontOrdersHistoryStatisticsData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStoreFrontOrdersHistoryStatisticsData = class(TObject)
  public
    NAME: string;
    NUMBEROFORDERS: string;
    SUBTOTAL: string;
    SHIPPINGCOST: string;
    TAXES: string;
    TOTAL: string;
    class var instance: TStoreFrontOrdersHistoryStatisticsData;
    procedure InitFields;
        class function getInstance: TStoreFrontOrdersHistoryStatisticsData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TStoreFrontOrdersHistoryStatisticsData.InitFields;
begin
  Self.NAME := 'STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME';
  Self.NUMBEROFORDERS := 'STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS';
  Self.SUBTOTAL := 'STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL';
  Self.SHIPPINGCOST := 'STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST';
  Self.TAXES := 'STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES';
  Self.TOTAL := 'STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL';
end;
    

class function TStoreFrontOrdersHistoryStatisticsData.getInstance: TStoreFrontOrdersHistoryStatisticsData;
begin
        Exit(TStoreFrontOrdersHistoryStatisticsData.instance);
end;
    

constructor TStoreFrontOrdersHistoryStatisticsData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TStoreFrontOrdersHistoryStatisticsData.instance := TStoreFrontOrdersHistoryStatisticsData.Create();
  {AB:END}

end.


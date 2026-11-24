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
unit StoreFrontInventoryStatisticsData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStoreFrontInventoryStatisticsData = class(TObject)
  public
    NAME: string;
    NUMBEROFITEMS: string;
    TOTALVALUE: string;
    class var instance: TStoreFrontInventoryStatisticsData;
    procedure InitFields;
        class function getInstance: TStoreFrontInventoryStatisticsData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TStoreFrontInventoryStatisticsData.InitFields;
begin
  Self.NAME := 'STOREFRONT_INVENTORY_STATISTICS_NAME';
  Self.NUMBEROFITEMS := 'STOREFRONT_INVENTORY_STATISTICS_NUMBER_OF_ITEMS';
  Self.TOTALVALUE := 'STOREFRONT_INVENTORY_STATISTICS_TOTAL_VALUE';
end;
    

class function TStoreFrontInventoryStatisticsData.getInstance: TStoreFrontInventoryStatisticsData;
begin
        Exit(TStoreFrontInventoryStatisticsData.instance);
end;
    

constructor TStoreFrontInventoryStatisticsData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TStoreFrontInventoryStatisticsData.instance := TStoreFrontInventoryStatisticsData.Create();
  {AB:END}

end.


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
// package org.allbinary.business.context.modules.storefront.statistics
unit RealTimeStoreFrontStatistics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, StoreFrontAdvertisementsStatisticsInterface, StoreFrontInventoryStatisticsInterface, StoreFrontOrdersHistoryStatisticsInterface, StoreFrontUsersStatisticsInterface, StoreFrontStatisticsInterface;

type
  {AB:TYPES}
  TRealTimeStoreFrontStatistics = class(TInterfacedObject, IStoreFrontStatisticsInterface)
  public
    storeFrontAdvertisementsStatisticsInterface: IStoreFrontAdvertisementsStatisticsInterface;
    storeFrontUsersStatisticsInterface: IStoreFrontUsersStatisticsInterface;
    storeFrontInventoryStatisticsInterface: IStoreFrontInventoryStatisticsInterface;
    storeFrontOrderHistoryStatisticsInterface: IStoreFrontOrdersHistoryStatisticsInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontInterface_: IStoreFrontInterface);
        function getAdvertisements: IStoreFrontAdvertisementsStatisticsInterface; virtual;
        function getUsers: IStoreFrontUsersStatisticsInterface; virtual;
        function getInventory: IStoreFrontInventoryStatisticsInterface; virtual;
        function getOrders: IStoreFrontOrdersHistoryStatisticsInterface; virtual;
  end;

implementation
uses
  StoreFrontAdvertisementsStatistics, StoreFrontInventoryStatistics, StoreFrontOrdersHistoryStatistics, StoreFrontUsersStatistics;


{AB:CODE}

procedure TRealTimeStoreFrontStatistics.InitFields;
begin
  
  
  
  
end;

function TRealTimeStoreFrontStatistics.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRealTimeStoreFrontStatistics.Create(storeFrontInterface_: IStoreFrontInterface);
begin
    inherited Create;
    InitFields;
        Self.storeFrontAdvertisementsStatisticsInterface := (TJava.ToObject(TStoreFrontAdvertisementsStatistics.Create(storeFrontInterface_)) as IStoreFrontAdvertisementsStatisticsInterface);
        Self.storeFrontUsersStatisticsInterface := (TJava.ToObject(TStoreFrontUsersStatistics.Create(storeFrontInterface_)) as IStoreFrontUsersStatisticsInterface);
        Self.storeFrontInventoryStatisticsInterface := (TJava.ToObject(TStoreFrontInventoryStatistics.Create(storeFrontInterface_)) as IStoreFrontInventoryStatisticsInterface);
        Self.storeFrontOrderHistoryStatisticsInterface := (TJava.ToObject(TStoreFrontOrdersHistoryStatistics.Create(storeFrontInterface_)) as IStoreFrontOrdersHistoryStatisticsInterface);
end;
    

function TRealTimeStoreFrontStatistics.getAdvertisements: IStoreFrontAdvertisementsStatisticsInterface;
begin
        Exit(Self.storeFrontAdvertisementsStatisticsInterface);
end;
    

function TRealTimeStoreFrontStatistics.getUsers: IStoreFrontUsersStatisticsInterface;
begin
        Exit(Self.storeFrontUsersStatisticsInterface);
end;
    

function TRealTimeStoreFrontStatistics.getInventory: IStoreFrontInventoryStatisticsInterface;
begin
        Exit(Self.storeFrontInventoryStatisticsInterface);
end;
    

function TRealTimeStoreFrontStatistics.getOrders: IStoreFrontOrdersHistoryStatisticsInterface;
begin
        Exit(Self.storeFrontOrderHistoryStatisticsInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


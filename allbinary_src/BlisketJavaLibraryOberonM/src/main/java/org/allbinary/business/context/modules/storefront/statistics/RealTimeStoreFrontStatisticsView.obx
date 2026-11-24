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
unit RealTimeStoreFrontStatisticsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserRole, DomNodeInterface, Document, Node, StoreFrontStatisticsInterface;

type
  {AB:TYPES}
  TRealTimeStoreFrontStatisticsView = class(TInterfacedObject, IDomNodeInterface)
  public
    storeFrontStatisticsInterface: IStoreFrontStatisticsInterface;
    userRole: TUserRole;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontStatisticsInterface_: IStoreFrontStatisticsInterface; userRole_: TUserRole);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StoreFrontStatisticsData, StoreFrontAdvertisementsStatisticsInterface, StoreFrontAdvertisementsStatisticsView, StoreFrontInventoryStatisticsInterface, StoreFrontInventoryStatisticsView, StoreFrontOrdersHistoryStatisticsInterface, StoreFrontOrdersHistoryStatisticsView, StoreFrontUsersStatisticsInterface, StoreFrontUsersStatisticsView, UserRoleFactory;


{AB:CODE}

procedure TRealTimeStoreFrontStatisticsView.InitFields;
begin
  
  
end;

function TRealTimeStoreFrontStatisticsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRealTimeStoreFrontStatisticsView.Create(storeFrontStatisticsInterface_: IStoreFrontStatisticsInterface; userRole_: TUserRole);
begin
    inherited Create;
    InitFields;
        Self.storeFrontStatisticsInterface := storeFrontStatisticsInterface_;
        Self.userRole := userRole_;
end;
    

// throws Exception
function TRealTimeStoreFrontStatisticsView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  storeFrontAdvertisementsStatisticsInterface_: IStoreFrontAdvertisementsStatisticsInterface;
  storeFrontAdvertisementsStatisticsDomNodeInterface: IDomNodeInterface;
  storeFrontInventoryStatisticsInterface_: IStoreFrontInventoryStatisticsInterface;
  storeFrontInventoryStatisticsDomNodeInterface: IDomNodeInterface;
  storeFrontOrdersHistoryStatisticsInterface_: IStoreFrontOrdersHistoryStatisticsInterface;
  storeFrontOrdersHistoryStatisticsDomNodeInterface: IDomNodeInterface;
  storeFrontUsersStatisticsInterface_: IStoreFrontUsersStatisticsInterface;
  storeFrontUsersStatisticsDomNodeInterface: IDomNodeInterface;
begin
        node_ := document_.createElement(TStoreFrontStatisticsData.getInstance().NAME);
        storeFrontAdvertisementsStatisticsInterface_ := Self.storeFrontStatisticsInterface.getAdvertisements();
        storeFrontAdvertisementsStatisticsDomNodeInterface := TStoreFrontAdvertisementsStatisticsView.Create(storeFrontAdvertisementsStatisticsInterface_);
        node_.appendChild(storeFrontAdvertisementsStatisticsDomNodeInterface.toXmlNode(document_));
        storeFrontInventoryStatisticsInterface_ := Self.storeFrontStatisticsInterface.getInventory();
        storeFrontInventoryStatisticsDomNodeInterface := TStoreFrontInventoryStatisticsView.Create(storeFrontInventoryStatisticsInterface_);
        node_.appendChild(storeFrontInventoryStatisticsDomNodeInterface.toXmlNode(document_));
        storeFrontOrdersHistoryStatisticsInterface_ := Self.storeFrontStatisticsInterface.getOrders();
        storeFrontOrdersHistoryStatisticsDomNodeInterface := TStoreFrontOrdersHistoryStatisticsView.Create(storeFrontOrdersHistoryStatisticsInterface_);
        node_.appendChild(storeFrontOrdersHistoryStatisticsDomNodeInterface.toXmlNode(document_));
        if (Self.userRole) = (TUserRoleFactory.getInstance().ADMINISTRATOR) then begin
            storeFrontUsersStatisticsInterface_ := Self.storeFrontStatisticsInterface.getUsers();
            storeFrontUsersStatisticsDomNodeInterface := TStoreFrontUsersStatisticsView.Create(storeFrontUsersStatisticsInterface_);
            node_.appendChild(storeFrontUsersStatisticsDomNodeInterface.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.business.user.role
unit UserRoleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicUserRoleFactory, UserRole;

type
  {AB:TYPES}
  TUserRoleFactory = class(TObject)
  public
    basicUserRoleFactory: TBasicUserRoleFactory;
    INSTALLER: TUserRole;
    ADMINISTRATOR: TUserRole;
    CUSTOMER: TUserRole;
    SUBSCRIBERCUSTOMER: TUserRole;
    WHOLESALECUSTOMER: TUserRole;
    STOREMANAGER: TUserRole;
    PRODUCTMANAGER: TUserRole;
    CUSTOMERMANAGER: TUserRole;
    PAYMENTMANAGER: TUserRole;
    ORDERMANAGER: TUserRole;
    WEBMANAGER: TUserRole;
    REVIEWER: TUserRole;
    SHIPPING: TUserRole;
    ADJUSTER: TUserRole;
    WORKFLOWEDITOR: TUserRole;
    WIZARD: TUserRole;
    VIEWEDITOR: TUserRole;
    class var instance: TUserRoleFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TUserRoleFactory; static;
  end;

implementation
uses
  UserRoleB, UserFactory, AdminUserFactory, StoreAdminUserFactory, CustomerStoreAdminUserFactory, OrderStoreAdminUserFactory, AdjustOrderStoreAdminUserFactory, ReviewOrderStoreAdminUserFactory, ShipOrderStoreAdminUserFactory, PaymentStoreAdminUserFactory, ProductStoreAdminUserFactory, WebStoreAdminUserFactory, ViewEditorWebStoreAdminUserFactory, WizardWebStoreAdminUserFactory, WorkflowEditorWebStoreAdminUserFactory, SubscriberUserFactory, WholesaleUserFactory;


{AB:CODE}

procedure TUserRoleFactory.InitFields;
begin
  Self.basicUserRoleFactory := TBasicUserRoleFactory.getInstance();
  Self.INSTALLER := TUserRoleB.Create(Self.basicUserRoleFactory.INSTALLER, nil);
  Self.ADMINISTRATOR := TUserRoleB.Create(Self.basicUserRoleFactory.ADMINISTRATOR, TAdminUserFactory.Create());
  Self.CUSTOMER := TUserRoleB.Create(Self.basicUserRoleFactory.CUSTOMER, TUserFactory.Create());
  Self.SUBSCRIBERCUSTOMER := TUserRoleB.Create(Self.basicUserRoleFactory.SUBSCRIBERCUSTOMER, TSubscriberUserFactory.Create());
  Self.WHOLESALECUSTOMER := TUserRoleB.Create(Self.basicUserRoleFactory.WHOLESALECUSTOMER, TWholesaleUserFactory.Create());
  Self.STOREMANAGER := TUserRoleB.Create(Self.basicUserRoleFactory.STOREMANAGER, TStoreAdminUserFactory.Create());
  Self.PRODUCTMANAGER := TUserRoleB.Create(Self.basicUserRoleFactory.PRODUCTMANAGER, TProductStoreAdminUserFactory.Create());
  Self.CUSTOMERMANAGER := TUserRoleB.Create(Self.basicUserRoleFactory.CUSTOMERMANAGER, TCustomerStoreAdminUserFactory.Create());
  Self.PAYMENTMANAGER := TUserRoleB.Create(Self.basicUserRoleFactory.PAYMENTMANAGER, TPaymentStoreAdminUserFactory.Create());
  Self.ORDERMANAGER := TUserRoleB.Create(Self.basicUserRoleFactory.ORDERMANAGER, TOrderStoreAdminUserFactory.Create());
  Self.WEBMANAGER := TUserRoleB.Create(Self.basicUserRoleFactory.WEBMANAGER, TWebStoreAdminUserFactory.Create());
  Self.REVIEWER := TUserRoleB.Create(Self.basicUserRoleFactory.REVIEWER, TReviewOrderStoreAdminUserFactory.Create());
  Self.SHIPPING := TUserRoleB.Create(Self.basicUserRoleFactory.SHIPPING, TShipOrderStoreAdminUserFactory.Create());
  Self.ADJUSTER := TUserRoleB.Create(Self.basicUserRoleFactory.ADJUSTER, TAdjustOrderStoreAdminUserFactory.Create());
  Self.WORKFLOWEDITOR := TUserRoleB.Create(Self.basicUserRoleFactory.WORKFLOWEDITOR, TWorkflowEditorWebStoreAdminUserFactory.Create());
  Self.WIZARD := TUserRoleB.Create(Self.basicUserRoleFactory.WIZARD, TWizardWebStoreAdminUserFactory.Create());
  Self.VIEWEDITOR := TUserRoleB.Create(Self.basicUserRoleFactory.VIEWEDITOR, TViewEditorWebStoreAdminUserFactory.Create());
end;

constructor TUserRoleFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TUserRoleFactory.getInstance: TUserRoleFactory;
begin
        Exit(TUserRoleFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TUserRoleFactory.instance := TUserRoleFactory.Create();
  {AB:END}

end.


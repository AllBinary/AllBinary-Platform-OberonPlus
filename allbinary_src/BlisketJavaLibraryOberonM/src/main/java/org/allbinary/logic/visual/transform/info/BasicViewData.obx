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
// package org.allbinary.logic.visual.transform.info
unit BasicViewData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicViewData = class(TObject)
  public
    GENERICDIR: string;
    USERDIR: string;
    ADDRESSDIR: string;
    BILLINGADDRESSDIR: string;
    SHIPPINGADDRESSDIR: string;
    COMMERCEDIR: string;
    INVENTORYDIR: string;
    BASKETDIR: string;
    ITEMDIR: string;
    MONEYDIR: string;
    SHIPPINGDIR: string;
    ORDERDIR: string;
    ORDEREMAILDIR: string;
    ORDERHISTORYDIR: string;
    ORDERREVIEWDIR: string;
    PAYMENTDIR: string;
    GENERATIONDIR: string;
    PRODUCTSDIR: string;
    IGNOREXMLXSL: string;
    REVIEWORDERVIEWXSL: string;
    ORDERVIEWXSL: string;
    INVENTORYXSL: string;
    BASKETXSL: string;
    CHECKOUTBASKETXSL: string;
    MINIBASKETXSL: string;
    BILLINGADDRESSCHANGEFORMXSL: string;
    BILLINGADDRESSINPUTFORMXSL: string;
    BILLINGADDRESSVIEWXSL: string;
    SHIPPINGADDRESSCHANGEFORMXSL: string;
    SHIPPINGADDRESSINPUTFORMXSL: string;
    SHIPPINGADDRESSVIEWXSL: string;
    NEWTAXADDRESSXSL: string;
    EDITTAXADDRESSXSL: string;
    SHIPPINGMETHODSXSL: string;
    ORDERCUSTOMEREMAILVIEWXSL: string;
    ORDERMANAGEREMAILVIEWXSL: string;
    EDITCUSTOMERXSL: string;
    ORDERHISTORYXSL: string;
    PAYMENTVIEWXSL: string;
    SUMMARYXSL: string;
    PAYMENTGATEWAYOPTIONSXSL: string;
    MAKEPAYMENTVIEWXSL: string;
    class var instance: TBasicViewData;
    procedure InitFields;
        class function getInstance: TBasicViewData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TBasicViewData.InitFields;
begin
  Self.GENERICDIR := 'generic/';
  Self.USERDIR := Self.GENERICDIR + 'user/';
  Self.ADDRESSDIR := Self.USERDIR + 'address/';
  Self.BILLINGADDRESSDIR := Self.ADDRESSDIR + 'billing/';
  Self.SHIPPINGADDRESSDIR := Self.ADDRESSDIR + 'shipping/';
  Self.COMMERCEDIR := Self.USERDIR + 'commerce/';
  Self.INVENTORYDIR := Self.COMMERCEDIR + 'inventory/';
  Self.BASKETDIR := Self.INVENTORYDIR + 'basket/';
  Self.ITEMDIR := Self.INVENTORYDIR + 'item/';
  Self.MONEYDIR := Self.COMMERCEDIR + 'money/';
  Self.SHIPPINGDIR := Self.COMMERCEDIR + 'shipping/';
  Self.ORDERDIR := Self.INVENTORYDIR + 'order/';
  Self.ORDEREMAILDIR := Self.ORDERDIR + 'email/';
  Self.ORDERHISTORYDIR := Self.ORDERDIR + 'history/';
  Self.ORDERREVIEWDIR := Self.ORDERDIR + 'review/';
  Self.PAYMENTDIR := Self.MONEYDIR + 'payment/';
  Self.GENERATIONDIR := Self.GENERICDIR + 'generation/';
  Self.PRODUCTSDIR := Self.GENERICDIR + 'products/';
  Self.IGNOREXMLXSL := Self.GENERICDIR + 'ignoreXmlView.xsl';
  Self.REVIEWORDERVIEWXSL := Self.ORDERREVIEWDIR + 'reviewOrderView.xsl';
  Self.ORDERVIEWXSL := Self.REVIEWORDERVIEWXSL;
  Self.INVENTORYXSL := Self.INVENTORYDIR + 'inventory.xsl';
  Self.BASKETXSL := Self.BASKETDIR + 'basket.xsl';
  Self.CHECKOUTBASKETXSL := Self.BASKETDIR + 'staticBasket.xsl';
  Self.MINIBASKETXSL := Self.BASKETDIR + 'miniBasket.xsl';
  Self.BILLINGADDRESSCHANGEFORMXSL := Self.BILLINGADDRESSDIR + 'billingAddressChangeForm.xsl';
  Self.BILLINGADDRESSINPUTFORMXSL := Self.BILLINGADDRESSDIR + 'billingAddressInputForm.xsl';
  Self.BILLINGADDRESSVIEWXSL := Self.BILLINGADDRESSDIR + 'billingAddressView.xsl';
  Self.SHIPPINGADDRESSCHANGEFORMXSL := Self.SHIPPINGADDRESSDIR + 'shippingAddressChangeForm.xsl';
  Self.SHIPPINGADDRESSINPUTFORMXSL := Self.SHIPPINGADDRESSDIR + 'shippingAddressInputForm.xsl';
  Self.SHIPPINGADDRESSVIEWXSL := Self.SHIPPINGADDRESSDIR + 'shippingAddressView.xsl';
  Self.NEWTAXADDRESSXSL := Self.SHIPPINGADDRESSDIR + 'newTaxAddressView.xsl';
  Self.EDITTAXADDRESSXSL := Self.SHIPPINGADDRESSDIR + 'editTaxAddressView.xsl';
  Self.SHIPPINGMETHODSXSL := Self.SHIPPINGDIR + 'shippingMethods.xsl';
  Self.ORDERCUSTOMEREMAILVIEWXSL := Self.ORDEREMAILDIR + 'orderCustomerEmailView.xsl';
  Self.ORDERMANAGEREMAILVIEWXSL := Self.ORDEREMAILDIR + 'orderManagerEmailView.xsl';
  Self.EDITCUSTOMERXSL := Self.USERDIR + 'editCustomerInputForm.xsl';
  Self.ORDERHISTORYXSL := Self.ORDERHISTORYDIR + 'orderHistory.xsl';
  Self.PAYMENTVIEWXSL := Self.PAYMENTDIR + 'paymentView.xsl';
  Self.SUMMARYXSL := Self.ITEMDIR + 'summary/summary.xsl';
  Self.PAYMENTGATEWAYOPTIONSXSL := Self.PAYMENTDIR + 'paymentGatewayOptions.xsl';
  Self.MAKEPAYMENTVIEWXSL := Self.PAYMENTDIR + 'invoice/' + 'makePayment.xsl';
end;
    

class function TBasicViewData.getInstance: TBasicViewData;
begin
        Exit(TBasicViewData.instance);
end;
    

constructor TBasicViewData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TBasicViewData.instance := TBasicViewData.Create();
  {AB:END}

end.


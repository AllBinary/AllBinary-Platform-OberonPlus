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
// package org.allbinary.business.user.commerce.money.payment.gateway
unit PaymentGatewayPageData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPaymentGatewayPageData = class(TObject)
  public
    MAKEPAYMENT: string;
    CHECKOUT: string;
    SHIPPING: string;
    SHIPPINGADDRESS: string;
    SHIPPINGADDRESSACTION: string;
    BILLINGADDRESS: string;
    PAYMENT: string;
    AUTHORIZE: string;
    FINISH: string;
    class var EXTENSION: string;
    class var NAME: string;
    class var FORWARDMAKEPAYMENT: string;
    class var PAYMENTOPTIONS: string;
    class var STARTCHECKOUT: string;
    procedure InitFields;
        constructor Create(location: string; paymentMethod: string);
  end;

implementation
uses
  StringMaker, StringUtil;


{AB:CODE}

procedure TPaymentGatewayPageData.InitFields;
begin
  
  
  
  
  
  
  
  
  
end;
    

constructor TPaymentGatewayPageData.Create(location: string; paymentMethod: string);
var
  paymentMethodString: string;
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        paymentMethodString := TJava.ToString(TPaymentGatewayPageData.NAME) + paymentMethod;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(location);
        stringBuffer.append('MakePayment');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.MAKEPAYMENT := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('Checkout');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.CHECKOUT := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('Shipping');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.SHIPPING := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('ShippingAddress');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.SHIPPINGADDRESS := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('ShippingAddressAction');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.SHIPPINGADDRESSACTION := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('BillingAddress');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.BILLINGADDRESS := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('Payment');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.PAYMENT := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('Authorize');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.AUTHORIZE := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(paymentMethodString);
        stringBuffer.append('PaymentFinish');
        stringBuffer.append(TPaymentGatewayPageData.EXTENSION);
        Self.FINISH := stringBuffer.toString();
end;

initialization
  {AB:INITIALIZATION}
  TPaymentGatewayPageData.EXTENSION := '.jsp';
  TPaymentGatewayPageData.NAME := TStringUtil.getInstance().EMPTY_STRING;
  TPaymentGatewayPageData.FORWARDMAKEPAYMENT := 'MakePayment.jsp';
  TPaymentGatewayPageData.PAYMENTOPTIONS := 'PaymentOptions' + TJava.ToString(TPaymentGatewayPageData.EXTENSION);
  TPaymentGatewayPageData.STARTCHECKOUT := 'StartCheckout' + TJava.ToString(TPaymentGatewayPageData.EXTENSION);
  {AB:END}

end.


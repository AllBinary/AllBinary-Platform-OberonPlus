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
// package views.admin.payment.gateway
unit PaymentGatewayViewAbstract;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PaymentGatewayPrimaryKey, TransformInfoHttpComposite, TransformInfoInterface;

type
  {AB:TYPES}
  TPaymentGatewayViewAbstract = class(TTransformInfoHttpComposite)
  public
    paymentGatewayPrimaryKey: TPaymentGatewayPrimaryKey;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure getFormData(request: THttpServletRequest); virtual;
        function getPaymentGatewayPrimaryKey: TPaymentGatewayPrimaryKey; virtual;
        procedure setPaymentGatewayPrimaryKey(paymentGatewayPrimaryKey_: TPaymentGatewayPrimaryKey); virtual;
  end;

implementation
uses
  PaymentGatewayData;


{AB:CODE}

procedure TPaymentGatewayViewAbstract.InitFields;
begin
  
end;
    

constructor TPaymentGatewayViewAbstract.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.getFormData(THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest())));
end;
    

procedure TPaymentGatewayViewAbstract.getFormData(request: THttpServletRequest);
var
  storeName: string;
  gatewayName: string;
begin
        storeName := Self.getWeblisketSession().getStoreName();
        gatewayName := request.getParameter(TJava.ToString(TPaymentGatewayData.NAME));
        Self.setPaymentGatewayPrimaryKey(TPaymentGatewayPrimaryKey.Create(storeName, gatewayName));
end;
    

function TPaymentGatewayViewAbstract.getPaymentGatewayPrimaryKey: TPaymentGatewayPrimaryKey;
begin
        Exit(Self.paymentGatewayPrimaryKey);
end;
    

procedure TPaymentGatewayViewAbstract.setPaymentGatewayPrimaryKey(paymentGatewayPrimaryKey_: TPaymentGatewayPrimaryKey);
begin
        Self.paymentGatewayPrimaryKey := paymentGatewayPrimaryKey_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


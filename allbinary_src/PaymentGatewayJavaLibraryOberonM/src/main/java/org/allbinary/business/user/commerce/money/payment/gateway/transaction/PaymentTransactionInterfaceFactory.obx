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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction
unit PaymentTransactionInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OrderHistory, LogUtil, PaymentTransactionInterface;

type
  {AB:TYPES}
  TPaymentTransactionInterfaceFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TPaymentTransactionInterfaceFactory;
    procedure InitFields;
        class function getInstance: TPaymentTransactionInterfaceFactory; overload; static;
        constructor Create;
        function getInstance(orderReview: TOrderHistory): IPaymentTransactionInterface; overload; virtual;
  end;

implementation
uses
  PaymentTransactionInterfaceFactoryInterface, PaymentType, PaymentTypeUtil, CommonStrings;


{AB:CODE}

procedure TPaymentTransactionInterfaceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TPaymentTransactionInterfaceFactory.getInstance: TPaymentTransactionInterfaceFactory;
begin
        Exit(TPaymentTransactionInterfaceFactory.instance);
end;
    

constructor TPaymentTransactionInterfaceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TPaymentTransactionInterfaceFactory.getInstance(orderReview: TOrderHistory): IPaymentTransactionInterface;
var
  gatewayName: string;
  paymentType_: TPaymentType;
  paymentTransactionInterfaceFactoryInterface_: IPaymentTransactionInterfaceFactoryInterface;
  paymentTransactionInterface_: IPaymentTransactionInterface;
  commonStrings_: TCommonStrings;
begin
        try
            gatewayName := orderReview.getPaymentMethod();
            if (gatewayName) <> ('') then begin
                paymentType_ := TPaymentTypeUtil.getInstance().get(gatewayName);
                paymentTransactionInterfaceFactoryInterface_ := paymentType_.getPaymentTransactionInterfaceFactoryInterface();
                paymentTransactionInterface_ := paymentTransactionInterfaceFactoryInterface_.getInstance(orderReview);
                Exit(paymentTransactionInterface_);
            end;
            raise SysUtils.Exception.Create('Failed to create PaymentTransactionInterface: ' + 'GatewayName is: ' + gatewayName);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENTERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put('Failed to generate test data', TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TPaymentTransactionInterfaceFactory.instance := TPaymentTransactionInterfaceFactory.Create();
  {AB:END}

end.


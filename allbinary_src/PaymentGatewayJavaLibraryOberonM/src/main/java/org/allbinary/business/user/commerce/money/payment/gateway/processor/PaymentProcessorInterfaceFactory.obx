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
// package org.allbinary.business.user.commerce.money.payment.gateway.processor
unit PaymentProcessorInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, PaymentProcessorInterface;

type
  {AB:TYPES}
  TPaymentProcessorInterfaceFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TPaymentProcessorInterfaceFactory;
    procedure InitFields;
        class function getInstance: TPaymentProcessorInterfaceFactory; overload; static;
        constructor Create;
        function getInstance(transformInfoInterface_: ITransformInfoInterface): IPaymentProcessorInterface; overload; virtual;
  end;

implementation
uses
  PaymentProcessorInterfaceFactoryInterface, PaymentTransactionInterface, PaymentTransactionInterfaceRequestFactory, PaymentType, PaymentTypeUtil, CommonStrings;


{AB:CODE}

procedure TPaymentProcessorInterfaceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TPaymentProcessorInterfaceFactory.getInstance: TPaymentProcessorInterfaceFactory;
begin
        Exit(TPaymentProcessorInterfaceFactory.instance);
end;
    

constructor TPaymentProcessorInterfaceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TPaymentProcessorInterfaceFactory.getInstance(transformInfoInterface_: ITransformInfoInterface): IPaymentProcessorInterface;
var
  paymentTransactionInterface_: IPaymentTransactionInterface;
  gatewayName: string;
  paymentType_: TPaymentType;
  paymentProcessorInterfaceFactoryInterface_: IPaymentProcessorInterfaceFactoryInterface;
  commonStrings_: TCommonStrings;
begin
    TJava.MonitorEnter(Self);
    try
        try
            paymentTransactionInterface_ := TPaymentTransactionInterfaceRequestFactory.getInstance().getInstance(transformInfoInterface_);
            gatewayName := paymentTransactionInterface_.getOrderHistory().getPaymentMethod();
            if not ((gatewayName = '')) then begin
                paymentType_ := TPaymentTypeUtil.getInstance().get(gatewayName);
                paymentProcessorInterfaceFactoryInterface_ := paymentType_.getPaymentProcessorInterfaceFactoryInterface();
                Exit((TJava.ToObject(paymentProcessorInterfaceFactoryInterface_.getInstance(transformInfoInterface_, paymentTransactionInterface_)) as IPaymentProcessorInterface));
            end;
            raise SysUtils.Exception.Create('Error Getting PaymentProcessorInterface');
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENTERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TPaymentProcessorInterfaceFactory.instance := TPaymentProcessorInterfaceFactory.Create();
  {AB:END}

end.


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
unit PaymentGatewayInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicPaymentType, LogUtil, PaymentGatewayInterface, PaymentGatewayInterfaceFactoryInterface;

type
  {AB:TYPES}
  TPaymentGatewayInterfaceFactory = class(TInterfacedObject, IPaymentGatewayInterfaceFactoryInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getInstance(httpServletRequest_: THttpServletRequest): IPaymentGatewayInterface; overload; virtual;
        function getInstance(paymentType: TBasicPaymentType): IPaymentGatewayInterface; overload; virtual;
        function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IPaymentGatewayInterface; overload; virtual;
  end;

implementation
uses
  PaymentGatewayData, BasicPaymentTypeUtil, StdUtil, RequestParams, CommonStrings;


{AB:CODE}

procedure TPaymentGatewayInterfaceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TPaymentGatewayInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPaymentGatewayInterfaceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TPaymentGatewayInterfaceFactory.getInstance(httpServletRequest_: THttpServletRequest): IPaymentGatewayInterface;
var
  commonStrings_: TCommonStrings;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
                Self.logUtil.putF('Getting', TJava.Box(Self), commonStrings_.GET_INSTANCE);
            end;
            Exit(Self.getInstance(TRequestParams.Create(httpServletRequest_).toHashMap()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENTERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getInstance(HttpServletRequest)', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TPaymentGatewayInterfaceFactory.getInstance(paymentType: TBasicPaymentType): IPaymentGatewayInterface;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)), TJava.Box(paymentType.getName()));
        Exit(Self.getInstance(hashMap_));
end;
    

// throws Exception
function TPaymentGatewayInterfaceFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IPaymentGatewayInterface;
var
  commonStrings_: TCommonStrings;
  gatewayName: string;
  paymentType: TBasicPaymentType;
  paymentGatewayInterfaceFactoryInterface_: IPaymentGatewayInterfaceFactoryInterface;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            gatewayName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)))));
            paymentType := TBasicPaymentTypeUtil.getInstance().get(gatewayName);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
                Self.logUtil.putF('Getting PaymentGatewayInterface for PaymentType: ' + paymentType.getName() + ' with: ' + TJava.ToString(hashMap_), TJava.Box(Self), commonStrings_.GET_INSTANCE);
            end;
            paymentGatewayInterfaceFactoryInterface_ := paymentType.getPaymentGatewayInterfaceFactoryInterface();
            Exit(paymentGatewayInterfaceFactoryInterface_.getInstance(hashMap_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENTERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


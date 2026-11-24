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
unit PaymentTransactionInterfaceRequestFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, CommonStrings, PaymentTransactionInterface;

type
  {AB:TYPES}
  TPaymentTransactionInterfaceRequestFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var instance: TPaymentTransactionInterfaceRequestFactory;
    procedure InitFields;
        class function getInstance: TPaymentTransactionInterfaceRequestFactory; overload; static;
        constructor Create;
        function getInstance(transformInfoInterface_: ITransformInfoInterface): IPaymentTransactionInterface; overload; virtual;
        function generateFromTestData(transformInfoInterface_: ITransformInfoInterface): IPaymentTransactionInterface;
  end;

implementation
uses
  PaymentTransactionInterfaceFactory, StoreFrontFactory, StoreFrontInterface, StreetAddress, Basket, OrderHistory, OrderInterface, Money, Payment, PaymentData, PaymentGatewayData, TenderTypeFactory, TransactionTypeFactory, OrderIdGenerator, OrderHistoryEntityFactory, OrderHistoryEntityInterface, WeblisketSession, StringUtil, TransformInfoHttpInterface;


{AB:CODE}

procedure TPaymentTransactionInterfaceRequestFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

class function TPaymentTransactionInterfaceRequestFactory.getInstance: TPaymentTransactionInterfaceRequestFactory;
begin
        Exit(TPaymentTransactionInterfaceRequestFactory.instance);
end;
    

constructor TPaymentTransactionInterfaceRequestFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TPaymentTransactionInterfaceRequestFactory.getInstance(transformInfoInterface_: ITransformInfoInterface): IPaymentTransactionInterface;
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  pageContext_: TPageContext;
  httpServletRequest_: THttpServletRequest;
  command: string;
  propertiesHashMap: TJavaHashMap<TObject, TObject>;
  weblisketSession_: TWeblisketSession;
  storeFrontInterface_: IStoreFrontInterface;
  order: IOrderInterface;
  orderId: string;
  orderHistoryEntityInterface_: IOrderHistoryEntityInterface;
  orderReview: TOrderHistory;
  orderPaymentInfo: TPayment;
  paymentTransactionInterface_: IPaymentTransactionInterface;
begin
        try
            httpTransformInfoInterface := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpInterface);
            pageContext_ := httpTransformInfoInterface.getPageContext();
            httpServletRequest_ := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
            command := httpServletRequest_.getParameter(Torg.allbinary.globals.GLOBALS2.ADMINCOMMAND);
            if ((command) <> ('')) and ((CompareStr(command, Torg.allbinary.globals.GLOBALS2.AUTHORIZEFORMEVALBODYONERROR)) = (0)) then begin
                Exit(Self.generateFromTestData(transformInfoInterface_));
            end else begin
                propertiesHashMap := httpTransformInfoInterface.getPropertiesHashMap();
                weblisketSession_ := TWeblisketSession.Create(propertiesHashMap, pageContext_);
                storeFrontInterface_ := TStoreFrontFactory.getInstance(weblisketSession_.getStoreName());
                order := weblisketSession_.getOrder();
                orderId := order.getId();
                orderHistoryEntityInterface_ := TOrderHistoryEntityFactory.getInstance();
                orderReview := orderHistoryEntityInterface_.getOrder(orderId);
                orderPaymentInfo := orderReview.getPaymentInfo();
                orderPaymentInfo.setTransactionType(TTransactionTypeFactory.getInstance().SALE.toString());
                orderPaymentInfo.setTenderType(TTenderTypeFactory.getInstance().CREDITCARD.toString());
                orderReview.setPaymentInfo(orderPaymentInfo);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENT) then begin
                    Self.logUtil.putF(orderReview.getId(), TJava.Box(Self), 'getPaymentTransactionInterface()');
                end;
                paymentTransactionInterface_ := TPaymentTransactionInterfaceFactory.getInstance().getInstance(orderReview);
                Exit(paymentTransactionInterface_);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENTERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getPaymentTransactionInterface()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TPaymentTransactionInterfaceRequestFactory.generateFromTestData(transformInfoInterface_: ITransformInfoInterface): IPaymentTransactionInterface;
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
  propertiesHashMap: TJavaHashMap<TObject, TObject>;
  pageContext_: TPageContext;
  weblisketSession_: TWeblisketSession;
  storeFrontInterface_: IStoreFrontInterface;
  httpServletRequest_: THttpServletRequest;
  gatewayName: string;
  transactionType: string;
  tenderType: string;
  payment_: TPayment;
  orderReview: TOrderHistory;
  orderId: string;
  account: string;
  expirationDate: string;
  checkNumber: string;
  driversLicense: string;
  magneticInkCheckReader: string;
  aba: string;
  accountType: string;
  name: string;
  street: string;
  city: string;
  state: string;
  zip: string;
  streetAddress_: TStreetAddress;
  email: string;
  amount: string;
  paymentTransactionInterface_: IPaymentTransactionInterface;
begin
        try
            httpTransformInfoInterface := (TJava.ToObject(transformInfoInterface_) as ITransformInfoHttpInterface);
            propertiesHashMap := httpTransformInfoInterface.getPropertiesHashMap();
            pageContext_ := httpTransformInfoInterface.getPageContext();
            weblisketSession_ := TWeblisketSession.Create(propertiesHashMap, pageContext_);
            storeFrontInterface_ := TStoreFrontFactory.getInstance(weblisketSession_.getStoreName());
            httpServletRequest_ := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
            gatewayName := TJava.UnboxString(TJava.ToObject(weblisketSession_.getPaymentMethod()));
            if (gatewayName = '') then begin
                gatewayName := httpServletRequest_.getParameter(TJava.ToString(TPaymentGatewayData.NAME));
            end;
            transactionType := httpServletRequest_.getParameter(TPaymentData.TRANSACTIONTYPE);
            tenderType := httpServletRequest_.getParameter(TPaymentData.TENDERTYPE);
            payment_ := TPayment.Create();
            payment_.setTransactionType(transactionType);
            payment_.setTenderType(tenderType);
            orderReview := TOrderHistory.Create(TBasket.Create());
            orderReview.setStoreName(storeFrontInterface_.getName());
            orderReview.setPaymentMethod(gatewayName);
            orderReview.setUserName('testing');
            orderId := httpServletRequest_.getParameter('orderNumber');
            if ((orderId) = ('')) or ((CompareStr(orderId, TStringUtil.getInstance().EMPTY_STRING)) = (0)) then begin
                orderId := TOrderIdGenerator.Create().getNext();
                orderReview.setId(orderId);
                account := httpServletRequest_.getParameter('account');
                expirationDate := httpServletRequest_.getParameter('expirationDate');
                checkNumber := httpServletRequest_.getParameter('checkNumber');
                driversLicense := httpServletRequest_.getParameter('driversLicense');
                magneticInkCheckReader := httpServletRequest_.getParameter('magneticInkCheckReader');
                aba := httpServletRequest_.getParameter('aba');
                accountType := httpServletRequest_.getParameter('accountType');
                name := httpServletRequest_.getParameter('name');
                payment_.setName(name);
                payment_.setNumber(account);
                payment_.setExpiration(expirationDate);
                payment_.setCheckNumber(checkNumber);
                payment_.setDriversLicense(driversLicense);
                payment_.setMagneticInkCheckReader(magneticInkCheckReader);
                payment_.setAba(aba);
                payment_.setAccountType(accountType);
                street := httpServletRequest_.getParameter('street');
                city := httpServletRequest_.getParameter('city');
                state := httpServletRequest_.getParameter('state');
                zip := httpServletRequest_.getParameter('zip');
                streetAddress_ := TStreetAddress.Create();
                streetAddress_.setName(name);
                streetAddress_.setStreet(street);
                streetAddress_.setCity(city);
                streetAddress_.setState(state);
                streetAddress_.setCode(zip);
                email := httpServletRequest_.getParameter('email');
                amount := httpServletRequest_.getParameter('amount');
                orderReview.setTotal(TMoney.Create(amount));
                orderReview.setBillingAddress(streetAddress_);
            end else begin
                orderReview.setId(orderId);
            end;
            orderReview.setPaymentInfo(payment_);
            paymentTransactionInterface_ := TPaymentTransactionInterfaceFactory.getInstance().getInstance(orderReview);
            Exit(paymentTransactionInterface_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENTERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generatePaymentTransactionInterfaceFromTestData()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TPaymentTransactionInterfaceRequestFactory.instance := TPaymentTransactionInterfaceRequestFactory.Create();
  {AB:END}

end.


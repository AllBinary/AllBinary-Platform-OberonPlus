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
// package admin.taghelpers
unit OrderHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, WeblisketSession, LogUtil, TagHelper;

type
  {AB:TYPES}
  TOrderHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    storeFrontInterface: IStoreFrontInterface;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    request: THttpServletRequest;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function setPaymentGateway: Boolean; virtual;
        function process: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFrontData, StoreFrontFactory, Order, OrderInterface, OrderProcessorUtil, PaymentGatewayData, PaymentGatewayInterface, BasicPaymentType, PaymentGatewayEntity, PaymentGatewayEntityFactory, StringMaker;


{AB:CODE}

procedure TOrderHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
end;
    

constructor TOrderHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
begin
    inherited Create;
    InitFields;
        Self.propertiesHashMap := propertiesHashMap;
        Self.pageContext := pageContext_;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        storeName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if not ((storeName = '')) then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        end;
        Self.weblisketSession := TWeblisketSession.Create(Self.propertiesHashMap, Self.pageContext);
end;
    

function TOrderHelper.setPaymentGateway: Boolean;
var
  paymentGatewayBoolean: Boolean;
  orderInterface_: IOrderInterface;
  requestPaymentGateway: string;
  paymentGatewayEntityInterface: TPaymentGatewayEntity;
  paymentTypeVector: TBasicArrayList;
  paymentType: TBasicPaymentType;
  paymentGatewayInterface_: IPaymentGatewayInterface;
  paymentGateway: string;
  stringBuffer: TStringMaker;
begin
        try
            paymentGatewayBoolean := False;
            orderInterface_ := Self.weblisketSession.getOrder();
            requestPaymentGateway := TJava.UnboxString(TJava.ToObject(Self.request.getParameter(TJava.ToString(TPaymentGatewayData.NAME))));
            if not ((requestPaymentGateway = '')) then begin
                Self.weblisketSession.setPaymentMethod(requestPaymentGateway);
                orderInterface_.setPaymentMethod(requestPaymentGateway);
                paymentGatewayBoolean := True;
            end;
            paymentGatewayEntityInterface := TPaymentGatewayEntity(TJava.ToObject(TPaymentGatewayEntityFactory.getInstance()));
            paymentTypeVector := paymentGatewayEntityInterface.findPaymentTypeVectorByStore(Self.weblisketSession.getStoreName());
            if (paymentTypeVector.size()) = (1) then begin
                paymentType := TBasicPaymentType(TJava.ToObject(paymentTypeVector.get(0)));
                paymentGatewayInterface_ := (TJava.ToObject(paymentGatewayEntityInterface.getPaymentGatewayInterface(Self.weblisketSession.getStoreName(), paymentType)) as IPaymentGatewayInterface);
                paymentGateway := paymentGatewayInterface_.getName();
                Self.weblisketSession.setPaymentMethod(paymentGateway);
                orderInterface_.setPaymentMethod(paymentGateway);
                paymentGatewayBoolean := True;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Successfully set PaymentGateway Order: ');
                stringBuffer.append(orderInterface_.getId());
                stringBuffer.append(' to: ');
                stringBuffer.append(orderInterface_.getPaymentMethod());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'setPaymentGateway()');
            end;
            Exit(paymentGatewayBoolean);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Failed to set PaymentGateway for Order: ');
                try
                    orderInterface_ := Self.weblisketSession.getOrder();
                    if (orderInterface_) <> (nil) then begin
                        stringBuffer.append(orderInterface_.getId());
                        stringBuffer.append(' to: ');
                        stringBuffer.append(orderInterface_.getPaymentMethod());
                    end;
                except
                    on ex: SysUtils.Exception do begin
                    stringBuffer.append(' Exception Getting');
                    end;
                end;
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(Self), 'setPaymentGateway()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TOrderHelper.process: string;
var
  order_: IOrderInterface;
  result_: string;
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            order_ := Self.weblisketSession.getOrder();
            order_.setStoreName(Self.storeFrontInterface.getName());
            result_ := TOrderProcessorUtil.getInstance().process(Self.weblisketSession.getUserName(), TOrder(TJava.ToObject(order_)));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Successfully Processed Order: ' + result_, TJava.Box(Self), 'processOrder()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Failed to Process Order: ');
            try
                stringBuffer.append(Self.weblisketSession.getOrder().getId());
            except
                on ex: SysUtils.Exception do begin
                stringBuffer.append(' Exception Getting Id');
                end;
            end;
            error := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


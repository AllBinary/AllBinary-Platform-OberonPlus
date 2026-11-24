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
unit PaymentGatewayView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, CommonStrings, Document, Node, PaymentGatewayInterface;

type
  {AB:TYPES}
  TPaymentGatewayView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    paymentGatewayInterface: IPaymentGatewayInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(paymentGatewayInterface_: IPaymentGatewayInterface);
        function getPaymentGatewayInterface: IPaymentGatewayInterface; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  PaymentGatewayMapping, PaymentGatewayData, ModDomHelper, StdUtil;


{AB:CODE}

procedure TPaymentGatewayView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TPaymentGatewayView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPaymentGatewayView.Create(paymentGatewayInterface_: IPaymentGatewayInterface);
begin
    inherited Create;
    InitFields;
        Self.paymentGatewayInterface := paymentGatewayInterface_;
end;
    

function TPaymentGatewayView.getPaymentGatewayInterface: IPaymentGatewayInterface;
begin
        Exit(Self.paymentGatewayInterface);
end;
    

// throws Exception
function TPaymentGatewayView.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        Exit(hashMap_);
end;
    

// throws Exception
function TPaymentGatewayView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  paymentGatewayNode: TNode;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'toXmlNode');
            end;
            hashMap_ := TPaymentGatewayMapping.Create(Self.paymentGatewayInterface).toHashMap();
            hashMap_.putAll(Self.toHashMap());
            paymentGatewayNode := TModDomHelper.createNodeWithValueNodes(document_, TJava.ToString(TPaymentGatewayData.NAME), hashMap_);
            Exit(paymentGatewayNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


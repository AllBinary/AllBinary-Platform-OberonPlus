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
// package views.admin.payment.gateways
unit PaymentGatewaysView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TPaymentGatewaysView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    paymentGatewayVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; gatewayVector: TBasicArrayList);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, PaymentGatewayData, PaymentGatewaysData, BasicPaymentType, PaymentTypeUtil, ModDomHelper;


{AB:CODE}

procedure TPaymentGatewaysView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TPaymentGatewaysView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPaymentGatewaysView.Create(transformInfoInterface_: ITransformInfoInterface; gatewayVector: TBasicArrayList);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.paymentGatewayVector := gatewayVector;
end;
    

// throws Exception
function TPaymentGatewaysView.toXmlNode(document_: TDocument): TNode;
var
  storeName: string;
  paymentGatewaysNode: TNode;
  size: Integer;
  paymentType: TBasicPaymentType;
  hashMap_: TJavaHashMap<TObject, TObject>;
  paymentGatewayNode: TNode;
  index: Integer;
begin
        try
            storeName := Self.getTransformInfoInterface().getStoreName();
            paymentGatewaysNode := document_.createElement(TPaymentGatewaysData.NAME);
            size := Self.paymentGatewayVector.size();
            for index := 0 to size - 1 do begin
                paymentType := TBasicPaymentType(TJava.ToObject(Self.paymentGatewayVector.get(index)));
                hashMap_ := paymentType.toHashMap();
                hashMap_.put(TJava.Box(TEntryData.getInstance().DEFAULT), TJava.Box(TPaymentTypeUtil.getInstance().getDefault(storeName).getBasicPaymentType().getName()));
                paymentGatewayNode := TModDomHelper.createNodeWithValueNodes(document_, TJava.ToString(TPaymentGatewayData.NAME), hashMap_);
                paymentGatewaysNode.appendChild(paymentGatewayNode);
            end;
            Exit(paymentGatewaysNode);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

procedure TPaymentGatewaysView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

function TPaymentGatewaysView.view: string;
var
  error: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view payment gateways';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


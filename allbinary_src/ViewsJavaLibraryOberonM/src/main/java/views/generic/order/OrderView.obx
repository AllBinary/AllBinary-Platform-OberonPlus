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
// package views.generic.order
unit OrderView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasketReview, Order, OrderHistory, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TOrderView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    order: TOrder;
    orderHistory: TOrderHistory;
    basketReview: TBasketReview;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure getFormData;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  Basket, OrderData;


{AB:CODE}

procedure TOrderView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
end;

function TOrderView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOrderView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
        Self.getFormData();
end;
    

// throws Exception
procedure TOrderView.getFormData;
var
  id: string;
begin
        id := Self.request.getParameter(TOrderData.ID);
        if (id) = ('') then begin
            id := Self.getWeblisketSession().getOrder().getId();
        end;
        Self.order := TOrder.Create(TBasket.Create());
        Self.order.setId(id);
end;
    

function TOrderView.toXmlNode(document_: TDocument): TNode;
var
  orderHistoryNode: TNode;
  node_: TNode;
begin
        try
            orderHistoryNode := Self.orderHistory.toXmlNode(document_);
            node_ := document_.createElement(Self.orderHistory.getPaymentMethod());
            orderHistoryNode.appendChild(Self.basketReview.toXmlNode(document_));
            node_.appendChild(orderHistoryNode);
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TOrderView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TOrderView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


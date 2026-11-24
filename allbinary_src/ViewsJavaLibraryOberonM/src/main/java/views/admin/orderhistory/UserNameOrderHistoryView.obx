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
// package views.admin.orderhistory
unit UserNameOrderHistoryView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TUserNameOrderHistoryView = class(THttpStoreComponentView, IValidationComponentInterface, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    userName: string;
    shipped: string;
    partiallyShipped: string;
    processing: string;
    preprocessing: string;
    cancelled: string;
    ON_: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, UserData, OrderData, OrderHistory, OrderHistoryData, UserName, OrderHistoryEntity, ModDomHelper, GLOBALS2;


{AB:CODE}

procedure TUserNameOrderHistoryView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  Self.ON_ := 'on';
end;

function TUserNameOrderHistoryView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserNameOrderHistoryView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(Self.getPageContext().getRequest()));
        Self.userName := Self.request.getParameter(TUserData.USERNAME);
        Self.preprocessing := Self.request.getParameter(TOrderHistoryData.PREPROCESSINGNAME);
        Self.shipped := Self.request.getParameter(TOrderHistoryData.SHIPPEDNAME);
        Self.partiallyShipped := Self.request.getParameter(TOrderHistoryData.PARTIALLYSHIPPEDNAME);
        Self.processing := Self.request.getParameter(TOrderHistoryData.PROCESSINGNAME);
        Self.cancelled := Self.request.getParameter(TOrderHistoryData.CANCELLEDNAME);
end;
    

procedure TUserNameOrderHistoryView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TUserNameOrderHistoryView.view: string;
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
    

function TUserNameOrderHistoryView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  orderHistoryEntity_: TOrderHistoryEntity;
  orderReviewVector: TBasicArrayList;
  size: Integer;
  orderHistory_: TOrderHistory;
  orderHistoryNode: TNode;
  orderNode: TNode;
  index: Integer;
begin
        try
            node_ := document_.createElement(TOrderData.ORDERS);
            orderHistoryEntity_ := TOrderHistoryEntity.Create();
            orderReviewVector := orderHistoryEntity_.getOrders(Self.userName);
            size := orderReviewVector.size();
            for index := 0 to size - 1 do begin
                orderHistory_ := TOrderHistory(TJava.ToObject(orderReviewVector.get(index)));
                orderHistoryNode := orderHistory_.toXmlNode(document_);
                orderNode := document_.createElement(orderHistory_.getPaymentMethod());
                node_.appendChild(orderHistory_.toXmlNode(document_));
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Attempt to View a users order history', TJava.Box(Self), 'view');
            end;
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.PREPROCESSINGNAME, TOrderHistoryData.PREPROCESSING));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.PROCESSINGNAME, TOrderHistoryData.PROCESSING));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.CANCELLEDNAME, TOrderHistoryData.CANCELLED));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.PARTIALLYSHIPPEDNAME, TOrderHistoryData.PARTIALLYSHIPPED));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TOrderHistoryData.SHIPPEDNAME, TOrderHistoryData.SHIPPED));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, GLOBALS2.VIEWNAME, GLOBALS2.VIEW));
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
    

function TUserNameOrderHistoryView.isValid: Boolean;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Started', TJava.Box(Self), Self.commonStrings.IS_VALID);
        end;
        if (TUserName.getInstance().isValid(Self.userName)) = (True) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TUserNameOrderHistoryView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TUserNameOrderHistoryView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TUserNameOrderHistoryView.validationInfo: string;
begin
        if (Self.userName) = ('') then begin
            Exit('No User Name Specified<br />');
        end;
        if (TUserName.getInstance().isValid(Self.userName)) = (False) then begin
            Exit('Invalid User Name<br />');
        end;
        Exit('Unknown Error<br />');
end;
    

// throws Exception
function TUserNameOrderHistoryView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


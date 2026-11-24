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
// package taghelpers
unit OrderHistoryHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelper, StoreFrontInterface, StreetAddress, WeblisketSession, LogUtil;

type
  {AB:TYPES}
  TOrderHistoryHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    storeFrontInterface: IStoreFrontInterface;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    request: THttpServletRequest;
    streetAddress: TStreetAddress;
    id: string;
    groupId: string;
    status: string;
    newStatus: string;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function setOrderStatus: string; virtual;
  end;

implementation
uses
  StoreFrontData, StoreFrontFactory, OrderData, OrderHistoryData, OrderHistoryFactory, OrderHistoryInterface, ShippingMethodData, OrderHistoryEntityFactory, OrderHistoryEntityInterface;


{AB:CODE}

procedure TOrderHistoryHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TOrderHistoryHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
begin
    inherited Create;
    InitFields;
        Self.propertiesHashMap := propertiesHashMap;
        Self.pageContext := pageContext_;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        storeName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        Self.newStatus := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TOrderHistoryData.STATUS))));
        if (storeName) <> ('') then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        end;
        Self.getFormData();
end;
    

procedure TOrderHistoryHelper.getFormData;
begin
        Self.id := Self.request.getParameter(TOrderData.ID);
        Self.groupId := Self.request.getParameter(TShippingMethodData.GROUP);
        if (Self.newStatus) = ('') then begin
            Self.newStatus := Self.request.getParameter(TOrderHistoryData.STATUS);
        end;
end;
    

function TOrderHistoryHelper.setOrderStatus: string;
var
  success: string;
  orderReviewInterface: IOrderHistoryInterface;
  status: string;
  orderHistoryEntityInterface_: IOrderHistoryEntityInterface;
  error: string;
begin
        try
            success := 'Status successfully set to: ' + Self.status;
            orderReviewInterface := TOrderHistoryFactory.getInstance(Self.id);
            status := orderReviewInterface.getStatus();
            if (CompareStr(status, TOrderHistoryData.CANCELLED)) = (0) then begin
                Exit('Order ' + Self.id + ' Already Cancelled<br/>');
            end else if (CompareStr(status, TOrderHistoryData.SHIPPED)) = (0) then begin
                Exit('Order ' + Self.id + ' Already Shipped. You can''t cancel a shipped order.<br/>');
            end else if (CompareStr(status, TOrderHistoryData.PREPROCESSING)) = (0) then begin
                Exit('Order ' + Self.id + ' has been cancelled.<br/>');
            end else if (CompareStr(status, TOrderHistoryData.PARTIALLYSHIPPED)) = (0) then begin
                Exit('Order ' + Self.id + ' Partially Shipped. You can cancel unshipped items, but not the whole order.<br/>');
            end else if (CompareStr(status, TOrderHistoryData.PROCESSING)) = (0) then begin
                orderHistoryEntityInterface_ := TOrderHistoryEntityFactory.getInstance();
                orderHistoryEntityInterface_.setStatus(Self.id, Self.newStatus);
                Exit('Order ' + Self.id + ' has been cancelled.<br/>');
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'setOrderStatus()');
            end;
            Exit('Error Setting Order Status');
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to set order status';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setOrderStatus()', TJava.Box(e));
            end;
            Exit(error + '<br/>' + 'Exception: ' + TJava.ToString(e) + '<br/>');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


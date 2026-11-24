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
unit OrderItemsRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TagHelper;

type
  {AB:TYPES}
  TOrderItemsRequestHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    id: string;
    groupId: string;
    status: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function setOrderStatus(newStatus: string): string; overload; virtual;
        function setOrderStatus: string; overload; virtual;
  end;

implementation
uses
  OrderData, OrderHistoryData, ShippingMethodData, OrderItemsEntityFactory;


{AB:CODE}

procedure TOrderItemsRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
end;
    

constructor TOrderItemsRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.getFormData();
end;
    

procedure TOrderItemsRequestHelper.getFormData;
begin
        Self.id := Self.request.getParameter(TOrderData.ID);
        Self.groupId := Self.request.getParameter(TShippingMethodData.GROUP);
        Self.status := Self.request.getParameter(TOrderHistoryData.STATUS);
end;
    

function TOrderItemsRequestHelper.setOrderStatus(newStatus: string): string;
var
  success: string;
  error: string;
begin
        try
            if (newStatus) = ('') then begin
                newStatus := Self.status;
            end;
            success := 'Status successfully set to: ' + newStatus;
            TOrderItemsEntityFactory.getInstance().setStatus(Self.id, Self.groupId, newStatus);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'setOrderStatus(newStatus)');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view order table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setOrderStatus(newStatus)', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TOrderItemsRequestHelper.setOrderStatus: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Status successfully set to: ' + Self.status;
            TOrderItemsEntityFactory.getInstance().setStatus(Self.id, Self.groupId, Self.status);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'setOrderStatus(newStatus)');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view order table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setOrderStatus(newStatus)', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


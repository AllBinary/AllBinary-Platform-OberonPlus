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
unit ShippingHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, WeblisketSession, LogUtil, TagHelper;

type
  {AB:TYPES}
  TShippingHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    storeFrontInterface: IStoreFrontInterface;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    request: THttpServletRequest;
    shippingType: string;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function setShippingType: string; virtual;
  end;

implementation
uses
  StoreFrontData, StoreFrontFactory, OrderInterface, ShippingMethodData;


{AB:CODE}

procedure TShippingHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
end;
    

constructor TShippingHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
begin
    inherited Create;
    InitFields;
        Self.pageContext := pageContext_;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        storeName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if (storeName) <> ('') then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        end;
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.getFormData();
end;
    

procedure TShippingHelper.getFormData;
begin
        Self.shippingType := Self.request.getParameter(TShippingMethodData.NAME);
end;
    

function TShippingHelper.setShippingType: string;
var
  success: string;
  order: IOrderInterface;
  error: string;
begin
        try
            success := 'Successfully Set Shipping Type';
            order := Self.weblisketSession.getOrder();
            order.setShippingMethod(Self.shippingType);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'setShippingType()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to view Shipping Type';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setShippingType()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


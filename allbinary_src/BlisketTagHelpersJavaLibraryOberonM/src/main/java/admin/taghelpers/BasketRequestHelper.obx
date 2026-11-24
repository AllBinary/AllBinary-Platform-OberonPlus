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
unit BasketRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, BasicItemData, WeblisketSession, LogUtil, TagHelper;

type
  {AB:TYPES}
  TBasketRequestHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    weblisketSession: TWeblisketSession;
    storeFrontInterface: IStoreFrontInterface;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    pageContext: TPageContext;
    request: THttpServletRequest;
    id: string;
    num: string;
    MAX: Integer;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function addItemToBasket: Boolean; virtual;
        function removeItemFromBasket: Boolean; virtual;
        function adjustBasket: Boolean; virtual;
  end;

implementation
uses
  StoreFront, StoreFrontData, StoreFrontFactory, BasketData, BasketInterface, InventoryEntityFactory;


{AB:CODE}

procedure TBasketRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  
  
  
  
  
  
  
  Self.MAX := 200;
end;
    

constructor TBasketRequestHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  storeName: string;
begin
    inherited Create;
    InitFields;
        Self.propertiesHashMap := propertiesHashMap;
        Self.pageContext := pageContext_;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        storeName := TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if (storeName) <> ('') then begin
            Self.storeFrontInterface := TStoreFrontFactory.getInstance(storeName);
        end else begin
            Self.storeFrontInterface := TStoreFront.Create();
        end;
        Self.weblisketSession := TWeblisketSession.Create(propertiesHashMap, pageContext_);
        Self.getFormData();
end;
    

procedure TBasketRequestHelper.getFormData;
begin
        Self.id := Self.request.getParameter(Self.basicItemData.ID);
        Self.num := Self.request.getParameter(TBasketData.ITEMTOTALINBASKET);
end;
    

function TBasketRequestHelper.addItemToBasket: Boolean;
var
  basket: IBasketInterface;
begin
        try
            if ((Self.id) <> ('')) and ((Self.num) <> ('')) then begin
                basket := Self.weblisketSession.getOrder().getBasket();
                if TJava.IsNull(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().getItem(Self.id)) then begin
                    Exit(False);
                end;
                basket.addItem(Self.id, Self.num);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Successfully added item to Basket', TJava.Box(Self), 'addItemToBasket()');
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'addItemToBasket()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TBasketRequestHelper.removeItemFromBasket: Boolean;
var
  basket: IBasketInterface;
begin
        try
            if (Self.id) <> ('') then begin
                basket := Self.weblisketSession.getOrder().getBasket();
                basket.removeItem(Self.id);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Successfully removed item from Basket', TJava.Box(Self), 'removeItemFromBasket()');
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removeItemFromBasket()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TBasketRequestHelper.adjustBasket: Boolean;
var
  basket: IBasketInterface;
begin
        try
            basket := Self.weblisketSession.getOrder().getBasket();
            if ((Self.id) <> ('')) and ((Self.num) <> ('')) then begin
                basket.adjustItem(Self.id, Self.num);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Successfull Adjusted Basket', TJava.Box(Self), 'adjustBasket()');
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'adjustBasket()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package admin.tags
unit BasketTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TBasketTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    command: string;
    storeName: string;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        procedure setStoreName(value: string); virtual;
        function isBasketEmpty: Boolean;
        function addItemToBasket: Boolean;
        function removeItemFromBasket: Boolean;
        function adjustBasket: Boolean;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  BasketHelperFactory, BasketRequestHelperFactory, StoreFrontData, BasketData, StdUtil, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TBasketTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TBasketTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasketTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TBasketTag.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

// throws LicensingException
function TBasketTag.isBasketEmpty: Boolean;
var
  anyType: TObject;
  method_: TMethod;
  emptyBoolean: Boolean;
begin
        try
            anyType := TJava.Box(TBasketHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('isBasketEmpty', nil);
            emptyBoolean := Boolean(method_.invoke(anyType, nil));
            Exit((emptyBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isBasketEmpty()', TJava.Box(e));
            end;
            Exit(True);
            end;
        end;
end;
    

// throws LicensingException
function TBasketTag.addItemToBasket: Boolean;
var
  anyType: TObject;
  method_: TMethod;
  emptyBoolean: Boolean;
  error: string;
begin
        try
            anyType := TJava.Box(TBasketRequestHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('addItemToBasket', nil);
            emptyBoolean := Boolean(method_.invoke(anyType, nil));
            Exit((emptyBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to add item from Basket';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'addItemToBasket()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TBasketTag.removeItemFromBasket: Boolean;
var
  anyType: TObject;
  method_: TMethod;
  emptyBoolean: Boolean;
  error: string;
begin
        try
            anyType := TJava.Box(TBasketRequestHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('removeItemFromBasket', nil);
            emptyBoolean := Boolean(method_.invoke(anyType, nil));
            Exit((emptyBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to remove item from Basket';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removeItemFromBasket()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TBasketTag.adjustBasket: Boolean;
var
  anyType: TObject;
  method_: TMethod;
  emptyBoolean: Boolean;
  error: string;
begin
        try
            anyType := TJava.Box(TBasketRequestHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('adjustBasket', nil);
            emptyBoolean := Boolean(method_.invoke(anyType, nil));
            Exit((emptyBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to Adjust Basket';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'adjustBasket()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws JspTagException
function TBasketTag.doStartTag: Integer;
begin
        try
            if (Self.command) <> ('') then begin
                Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
                Self.propertiesHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
                if (CompareStr(Self.command, TBasketData.INSERT)) = (0) then begin
                    if not (Self.addItemToBasket()) then begin
                        Self.pageContext.getOut().println('Item is not currently being sold.<p/>');
                    end;
                end else if (CompareStr(Self.command, TBasketData.DELETE_)) = (0) then begin
                    Self.removeItemFromBasket();
                end else if (CompareStr(Self.command, TBasketData.ADJUST)) = (0) then begin
                    Self.adjustBasket();
                end else if (CompareStr(Self.command, TBasketData.ISEMPTY)) = (0) then begin
                    if Self.isBasketEmpty() then begin
                        Exit(Self.EVAL_BODY_INCLUDE);
                    end else begin
                        Exit(SKIP_BODY);
                    end;
                end;
            end;
            Exit(SKIP_BODY);
        except
            on e: TLicensingException do begin
            TAbResponseHandler.sendJspTagLicensingRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
            on e: SysUtils.Exception do begin
            TAbResponseHandler.sendJspTagRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit OrderItemsTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TableTag;

type
  {AB:TYPES}
  TOrderItemsTag = class(TTableTag)
  public
    logUtil: TLogUtil;
    status: string;
    procedure InitFields;
        constructor Create;
        procedure setStatus(value: string); virtual;
        function setOrderStatus: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  OrderItemsHelperFactory, OrderItemsRequestHelperFactory, OrderHistoryData, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TOrderItemsTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TOrderItemsTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TOrderItemsHelperFactory.Create());
        Self.setTagRequestHelperFactory(TOrderItemsRequestHelperFactory.Create());
end;
    

procedure TOrderItemsTag.setStatus(value: string);
begin
        Self.status := value;
end;
    

// throws LicensingException
function TOrderItemsTag.setOrderStatus: string;
var
  anyType: TObject;
  helperClass: TClass;
  methodParams: TArray<TClass>;
  method_: TMethod;
  methodArgs: TArray<TObject>;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TOrderItemsRequestHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            if (Self.status) = ('') then begin
                helperClass := TJava.ToObject(anyType).ClassType;
                method_ := helperClass.getMethod('setOrderStatus', nil);
                result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
                Exit(result_);
            end else begin
                helperClass := TJava.ToObject(anyType).ClassType;
                methodParams := TArray<TClass>.Create(TJava.ToObject(Self.status).ClassType);
                method_ := helperClass.getMethod('setOrderStatus', methodParams);
                methodArgs := TArray<TObject>.Create(TJava.Box(Self.status));
                result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, methodArgs)));
                Exit(result_);
            end;
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to set Order status to: ' + Self.status;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setOrderStatus()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TOrderItemsTag.doStartTag: Integer;
begin
        try
            if Self.isEnabled() then begin
                if not TJava.IsNull(Self.getCommand()) then begin
                    Self.getPropertiesHashMap().put(TOrderHistoryData.STATUS, Self.status);
                    if (Self.getCommand().compareTo(TOrderHistoryData.SETSTATUS)) = (0) then begin
                        Self.pageContext.getOut().print(Self.setOrderStatus());
                    end else begin
                        Exit(inherited doStartTag());
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


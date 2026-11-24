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
unit ShippingAddressTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TableTag;

type
  {AB:TYPES}
  TShippingAddressTag = class(TTableTag)
  public
    logUtil: TLogUtil;
    value: string;
    procedure InitFields;
        constructor Create;
        procedure setValue(value: string); virtual;
        function set_: string;
        function setToBillingAddress: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  ShippingAddressHelperFactory, ShippingAddressData, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TShippingAddressTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TShippingAddressTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TShippingAddressHelperFactory.Create());
        Self.setTagRequestHelperFactory(TShippingAddressHelperFactory.Create());
end;
    

procedure TShippingAddressTag.setValue(value: string);
begin
        Self.value := value;
end;
    

// throws LicensingException
function TShippingAddressTag.set_: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TShippingAddressHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('set', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to set Shipping Address';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'set()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TShippingAddressTag.setToBillingAddress: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TShippingAddressHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('setToBillingAddress', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed Setting Shipping address to Billing Address';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setShippingAddressToBillingAddress()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TShippingAddressTag.doStartTag: Integer;
begin
        try
            if Self.isEnabled() then begin
                if not TJava.IsNull(Self.getCommand()) then begin
                    if (Self.getCommand().compareTo(TShippingAddressData.SELECT)) = (0) then begin
                        Self.set_();
                        Exit(Self.EVAL_BODY_INCLUDE);
                    end else if (Self.getCommand().compareTo(TShippingAddressData.SETTOBILLINGADDRESS)) = (0) then begin
                        Self.setToBillingAddress();
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


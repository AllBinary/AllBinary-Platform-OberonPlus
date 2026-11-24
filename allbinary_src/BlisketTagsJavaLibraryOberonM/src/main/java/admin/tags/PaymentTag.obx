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
unit PaymentTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TableTag;

type
  {AB:TYPES}
  TPaymentTag = class(TTableTag)
  public
    logUtil: TLogUtil;
    storeName: string;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        procedure setStoreName(value: string); virtual;
        function select: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  PaymentHelperFactory, StoreFrontData, PaymentData, StdUtil, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TPaymentTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TPaymentTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TPaymentHelperFactory.Create());
        Self.setTagRequestHelperFactory(TPaymentHelperFactory.Create());
end;
    

procedure TPaymentTag.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

// throws LicensingException
function TPaymentTag.select: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TPaymentHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('select', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to select Payment';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'selectPayment()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TPaymentTag.doStartTag: Integer;
var
  output: string;
begin
        try
            if Self.isEnabled() then begin
                Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
                Self.propertiesHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
                if not TJava.IsNull(Self.getCommand()) then begin
                    if (Self.getCommand().compareTo(TPaymentData.SELECT)) = (0) then begin
                        output := Self.select();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                        Exit(Self.EVAL_BODY_INCLUDE);
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


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
unit QuoteRequestTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TableTag;

type
  {AB:TYPES}
  TQuoteRequestTag = class(TTableTag)
  public
    logUtil: TLogUtil;
    storeName: string;
    procedure InitFields;
        constructor Create;
        procedure setStoreName(storeName: string); virtual;
        function email: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  QuoteHelperFactory, QuoteRequestHelperFactory, StoreFrontData, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TQuoteRequestTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TQuoteRequestTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TQuoteHelperFactory.Create());
        Self.setTagRequestHelperFactory(TQuoteRequestHelperFactory.Create());
end;
    

procedure TQuoteRequestTag.setStoreName(storeName: string);
begin
        Self.storeName := storeName;
end;
    

// throws LicensingException
function TQuoteRequestTag.email: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TQuoteHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('email', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to send QuoteRequest emails';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'sendEmail()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TQuoteRequestTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                Self.getPropertiesHashMap().put(TStoreFrontData.getInstance().NAME, Self.storeName);
                if (Self.getCommand().compareTo('EMAIL')) = (0) then begin
                    Self.email();
                    Exit(Self.EVAL_BODY_INCLUDE);
                end else begin
                    Exit(inherited doStartTag());
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


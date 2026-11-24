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
unit StoreFrontsTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TableTag;

type
  {AB:TYPES}
  TStoreFrontsTag = class(TTableTag)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function generateSelect: string;
        function install: string;
        function sendStoreCreatedEmails: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  StoreFrontsHelperFactory, StoreFrontsRequestHelperFactory, StoreFrontData, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TStoreFrontsTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TStoreFrontsTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TStoreFrontsHelperFactory.Create());
        Self.setTagRequestHelperFactory(TStoreFrontsRequestHelperFactory.Create());
end;
    

// throws LicensingException
function TStoreFrontsTag.generateSelect: string;
var
  anyType: TObject;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(Self.getTagHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('generateSelect', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to generate storefronts select';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateSelect()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TStoreFrontsTag.install: string;
var
  anyType: TObject;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(Self.getTagRequestHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('install', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to generate storefronts select';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'generateSelect()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TStoreFrontsTag.sendStoreCreatedEmails: string;
var
  anyType: TObject;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(Self.getTagRequestHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('sendStoreCreatedEmails', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to send email';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'sendStoreCreatedEmails()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TStoreFrontsTag.doStartTag: Integer;
var
  storeFrontData_: TStoreFrontData;
begin
        try
            if Self.isEnabled() then begin
                if not TJava.IsNull(Self.getCommand()) then begin
                    storeFrontData_ := TStoreFrontData.getInstance();
                    if (Self.getCommand().compareTo(storeFrontData_.SELECT)) = (0) then begin
                        Self.pageContext.getOut().print(Self.generateSelect());
                    end else if (Self.getCommand().compareTo(storeFrontData_.INSTALL)) = (0) then begin
                        Self.getPropertiesHashMap().put('current', Self.getCurrent());
                        Self.getPropertiesHashMap().put('total', Self.getTotal());
                        if (Self.getCurrent().intValue()) = (Self.getTotal().intValue()) then begin
                            Exit(TTagSupport.EVAL_BODY_INCLUDE);
                        end;
                        Self.install();
                    end else if (Self.getCommand().compareTo(storeFrontData_.INSTALL_COMPLETE)) = (0) then begin
                        Self.sendStoreCreatedEmails();
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


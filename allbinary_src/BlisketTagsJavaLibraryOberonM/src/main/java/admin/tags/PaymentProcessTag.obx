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
unit PaymentProcessTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StoreValidationTransformTag;

type
  {AB:TYPES}
  TPaymentProcessTag = class(TStoreValidationTransformTag)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function process: string; virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  PaymentProcessHelperFactory, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TPaymentProcessTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TPaymentProcessTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws LicensingException, Exception
function TPaymentProcessTag.process: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
begin
        try
            anyType := TJava.Box(TPaymentProcessHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod(Self.commonStrings.PROCESS, nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().LICENSINGERROR) then begin
                Self.logUtil.put('LicensingException', TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws JspTagException
function TPaymentProcessTag.doStartTag: Integer;
begin
        try
            if (((Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR)) = (0)) or ((Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.AUTHORIZEORDERANDEVALBODY)) = (0))) or ((Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.AUTHORIZEFORMEVALBODYONERROR)) = (0)) then begin
                Self.pageContext.getOut().print(TJava.ToString(Self.process()) + '<br />');
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.AUTHORIZEORDEREVALBODYONERROR)) = (0) then begin
                    Exit(Self.SKIP_BODY);
                end else begin
                    Exit(Self.EVAL_BODY_INCLUDE);
                end;
            end else begin
                raise SysUtils.Exception.Create('No Such Payment Processing Command');
            end;
        except
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


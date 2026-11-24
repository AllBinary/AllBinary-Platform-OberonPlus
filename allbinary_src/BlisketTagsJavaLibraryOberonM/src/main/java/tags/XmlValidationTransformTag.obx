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
// package tags
unit XmlValidationTransformTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformTag;

type
  {AB:TYPES}
  TXmlValidationTransformTag = class(TTransformTag)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        function isValid: Boolean;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, LicensingException;


{AB:CODE}

procedure TXmlValidationTransformTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TXmlValidationTransformTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TXmlValidationTransformTag.isValid: Boolean;
var
  helperClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            helperClass := TJava.ToObject(Self.getHelper()).ClassType;
            method_ := helperClass.getMethod(Self.commonStrings.IS_VALID, nil);
            result_ := Boolean(method_.invoke(Self.getHelper(), nil));
            Exit((result_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws JspTagException
function TXmlValidationTransformTag.doStartTag: Integer;
begin
        try
            Self.setHelper();
            if Self.isValid() then begin
                inherited doStartTag();
                Exit(Self.EVAL_BODY_INCLUDE);
            end else begin
                inherited doStartTag();
                Exit(Self.SKIP_BODY);
            end;
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


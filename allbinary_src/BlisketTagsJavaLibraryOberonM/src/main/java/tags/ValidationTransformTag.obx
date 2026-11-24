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
unit ValidationTransformTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformTag;

type
  {AB:TYPES}
  TValidationTransformTag = class(TTransformTag)
  public
    logUtil: TLogUtil;
    xslFile: string;
    logic: Boolean;
    procedure InitFields;
        constructor Create;
        procedure setXsl(value: string); virtual;
        procedure setLogic(logic: Boolean); virtual;
        function isValid: Boolean;
        function validationInfo: string;
        function doStartTag: Integer; virtual;
        function doEndTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, StringMaker, LicensingException, ValidatedViewHelperFactory;


{AB:CODE}

procedure TValidationTransformTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TValidationTransformTag.Create;
begin
        inherited Create(TValidatedViewHelperFactory.Create());
        InitFields;
        Self.logic := True;
end;
    

procedure TValidationTransformTag.setXsl(value: string);
begin
        Self.xslFile := value;
        Self.setTemplateFile(Self.xslFile);
end;
    

procedure TValidationTransformTag.setLogic(logic: Boolean);
begin
        Self.logic := logic;
end;
    

// throws Exception
function TValidationTransformTag.isValid: Boolean;
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
    

// throws Exception
function TValidationTransformTag.validationInfo: string;
var
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
begin
        try
            addressHelperClass := TJava.ToObject(Self.getHelper()).ClassType;
            method_ := addressHelperClass.getMethod('validationInfo', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.getHelper(), nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws JspTagException
function TValidationTransformTag.doStartTag: Integer;
var
  stringBuffer: TStringMaker;
  request: THttpServletRequest;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                stringBuffer := TStringMaker.Create();
                request := THttpServletRequest(TJava.ToObject(Self.pageContext.getRequest()));
                stringBuffer.append('ValidationViewTag Start For: ');
                stringBuffer.append(Self.getName());
                stringBuffer.append(''#10'View FIle: ');
                stringBuffer.append(Self.getObjectFile());
                stringBuffer.append(''#10'Request URI: ');
                stringBuffer.append(request.getRequestURI());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Self.setHelper();
            if Self.isValid() then begin
                inherited doStartTag();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('View File: ');
                    stringBuffer.append(Self.getObjectFile());
                    stringBuffer.append(''#10'Logic includes body if true=');
                    stringBuffer.appendboolean(Self.logic);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                end;
                if Self.logic then begin
                    Exit(EVAL_BODY_INCLUDE);
                end else begin
                    Exit(SKIP_BODY);
                end;
            end else begin
                Self.pageContext.getOut().print(Self.validationInfo());
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('View File: ');
                    stringBuffer.append(Self.getObjectFile());
                    stringBuffer.append(''#10'isValid()=false');
                    stringBuffer.append(''#10'Logic skips body if true=');
                    stringBuffer.appendboolean(Self.logic);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                end;
                if Self.logic then begin
                    Exit(SKIP_BODY);
                end else begin
                    Exit(EVAL_BODY_INCLUDE);
                end;
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
    

function TValidationTransformTag.doEndTag: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF('Tag Ended', TJava.Box(Self), 'doEndTag');
        end;
        Self.logic := True;
        Exit(inherited doEndTag());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


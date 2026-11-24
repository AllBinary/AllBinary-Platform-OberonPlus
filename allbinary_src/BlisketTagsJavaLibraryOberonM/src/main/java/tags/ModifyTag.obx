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
unit ModifyTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface, LogUtil, HelperTag;

type
  {AB:TYPES}
  TModifyTag = class(THelperTag)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
        function insert: string; virtual;
        function delete_: string; virtual;
        function update: string; virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, StringMaker, LicensingException, CommonStrings;


{AB:CODE}

procedure TModifyTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TModifyTag.Create(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
begin
        inherited Create(tagHelperFactoryInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws LicensingException
function TModifyTag.insert: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.getHelper()).ClassType;
            method_ := helperClass.getMethod('insert', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.getHelper(), nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to insert';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insert()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TModifyTag.delete_: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.getHelper()).ClassType;
            method_ := helperClass.getMethod(Self.commonStrings.delete_, nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.getHelper(), nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to delete';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TModifyTag.update: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.getHelper()).ClassType;
            method_ := helperClass.getMethod('update', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.getHelper(), nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TModifyTag.doStartTag: Integer;
var
  request: THttpServletRequest;
  stringBuffer: TStringMaker;
  commonStrings_: TCommonStrings;
  output: string;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                request := THttpServletRequest(TJava.ToObject(Self.pageContext.getRequest()));
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Command: ');
                stringBuffer.append(Self.getCommand());
                stringBuffer.append(' Request URI: ');
                stringBuffer.append(request.getRequestURI());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            end;
            if not TJava.IsNull(Self.getCommand()) then begin
                Self.setHelper();
                commonStrings_ := TCommonStrings.getInstance();
                if (Self.getCommand().compareTo(commonStrings_.INSERT)) = (0) then begin
                    output := Self.insert();
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                        Self.pageContext.getOut().print(output + '<br />');
                    end;
                end else if (Self.getCommand().compareTo(commonStrings_.DELETE_)) = (0) then begin
                    output := Self.delete_();
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                        Self.pageContext.getOut().print(output + '<br />');
                    end;
                end else if (Self.getCommand().compareTo(commonStrings_.UPDATE)) = (0) then begin
                    output := Self.update();
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                        Self.pageContext.getOut().print(output + '<br />');
                    end;
                end;
            end;
            Exit(Self.EVAL_BODY_INCLUDE);
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


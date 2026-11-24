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
unit TableTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TagHelperFactoryInterface, LogUtil, PropertiesTag;

type
  {AB:TYPES}
  TTableTag = class(TPropertiesTag)
  public
    logUtil: TLogUtil;
    enabled: string;
    tagHelperFactoryInterface: ITagHelperFactoryInterface;
    tagRequestHelperFactoryInterface: ITagHelperFactoryInterface;
    requestObject: TObject;
    current: Integer;
    total: Integer;
    procedure InitFields;
        constructor Create;
        procedure setIsSelected(enabled: string); virtual;
        function isEnabled: Boolean; virtual;
        procedure setTagHelperFactory(tagHelperFactoryInterface_: ITagHelperFactoryInterface); virtual;
        function getTagHelperFactoryInterface: ITagHelperFactoryInterface; virtual;
        procedure setTagRequestHelperFactory(tagHelperFactoryInterface_: ITagHelperFactoryInterface); virtual;
        function getTagRequestHelperFactoryInterface: ITagHelperFactoryInterface; virtual;
        procedure setCurrent(current: Integer); virtual;
        function getCurrent: Integer; virtual;
        procedure setTotal(total: Integer); virtual;
        function getTotal: Integer; virtual;
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
        function insert: string; virtual;
        function delete_: string; virtual;
        function update: string; virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, SqlStrings, BooleanUtil, StringMaker, LicensingException;


{AB:CODE}

procedure TTableTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
end;
    

constructor TTableTag.Create;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

procedure TTableTag.setIsSelected(enabled: string);
begin
        Self.enabled := enabled;
end;
    

// throws Exception
function TTableTag.isEnabled: Boolean;
begin
        if not ((Self.enabled = '')) then begin
            if (TBooleanUtil.getInstance().getFromString(Self.enabled)) or ((CompareStr(Self.enabled, 'on')) = (0)) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

procedure TTableTag.setTagHelperFactory(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
begin
        Self.tagHelperFactoryInterface := tagHelperFactoryInterface_;
end;
    

function TTableTag.getTagHelperFactoryInterface: ITagHelperFactoryInterface;
begin
        Exit(Self.tagHelperFactoryInterface);
end;
    

procedure TTableTag.setTagRequestHelperFactory(tagHelperFactoryInterface_: ITagHelperFactoryInterface);
begin
        Self.tagRequestHelperFactoryInterface := tagHelperFactoryInterface_;
end;
    

function TTableTag.getTagRequestHelperFactoryInterface: ITagHelperFactoryInterface;
begin
        Exit(Self.tagRequestHelperFactoryInterface);
end;
    

procedure TTableTag.setCurrent(current: Integer);
begin
        Self.current := current;
end;
    

function TTableTag.getCurrent: Integer;
begin
        Exit(Self.current);
end;
    

procedure TTableTag.setTotal(total: Integer);
begin
        Self.total := total;
end;
    

function TTableTag.getTotal: Integer;
begin
        Exit(Self.total);
end;
    

// throws LicensingException
function TTableTag.drop: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(Self.getTagHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('drop', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to drop table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.DROP, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TTableTag.create_: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(Self.getTagHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('create', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to create table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TTableTag.restore: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(Self.getTagHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('restore', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to restore backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'restore()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TTableTag.backup: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(Self.getTagHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('backup', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to make backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backup()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TTableTag.insert: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.requestObject).ClassType;
            method_ := helperClass.getMethod('insert', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.requestObject, nil)));
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
function TTableTag.delete_: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.requestObject).ClassType;
            method_ := helperClass.getMethod(Self.commonStrings.delete_, nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.requestObject, nil)));
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
function TTableTag.update: string;
var
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            helperClass := TJava.ToObject(Self.requestObject).ClassType;
            method_ := helperClass.getMethod('update', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.requestObject, nil)));
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
function TTableTag.doStartTag: Integer;
var
  request: THttpServletRequest;
  stringBuffer: TStringMaker;
  output: string;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                request := THttpServletRequest(TJava.ToObject(Self.pageContext.getRequest()));
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('TableTag Helper: ');
                stringBuffer.append(TJava.ToObject(Self.getTagHelperFactoryInterface()).ClassType.ClassName);
                stringBuffer.append(' Request URI: ');
                stringBuffer.append(request.getRequestURI());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            if (Self.getTagRequestHelperFactoryInterface()) <> (nil) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                    Self.logUtil.putF('TableTag RequestHelper: ' + TJava.ToObject(Self.getTagRequestHelperFactoryInterface()).ClassType.ClassName, TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                    Self.logUtil.putF('TableTag RequestHelper: null', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF('TableTag this.getCommand(): ' + TJava.ToString(Self.getCommand()), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            if Self.isEnabled() then begin
                if not TJava.IsNull(Self.getCommand()) then begin
                    if (((((Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0)) or ((Self.getCommand().compareTo(TSqlStrings.getInstance().INSERT_INTO)) = (0))) or ((Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0))) or ((Self.getCommand().compareTo(Self.commonStrings.UPDATE)) = (0))) or ((Self.getCommand().compareTo(TSqlStrings.getInstance().UPDATE)) = (0)) then begin
                        Self.requestObject := TJava.Box(Self.getTagRequestHelperFactoryInterface().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
                    end;
                    if ((Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0)) or ((Self.getCommand().compareTo(TSqlStrings.getInstance().INSERT_INTO)) = (0)) then begin
                        Self.insert();
                    end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                        Self.delete_();
                    end else if ((Self.getCommand().compareTo(Self.commonStrings.UPDATE)) = (0)) or ((Self.getCommand().compareTo(TSqlStrings.getInstance().UPDATE)) = (0)) then begin
                        Self.update();
                    end;
                    if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.BACKUP)) = (0) then begin
                        output := Self.backup();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                        Exit(SKIP_BODY);
                    end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.RESTORE)) = (0) then begin
                        Self.getPropertiesHashMap().put('current', Self.getCurrent());
                        Self.getPropertiesHashMap().put('total', Self.getTotal());
                        output := Self.restore();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                        Exit(SKIP_BODY);
                    end else if (Self.getCommand().compareTo(Self.commonStrings.DROP)) = (0) then begin
                        output := Self.drop();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                        Exit(SKIP_BODY);
                    end else if (Self.getCommand().compareTo(Self.commonStrings.CREATE_)) = (0) then begin
                        output := Self.create_();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                        Exit(SKIP_BODY);
                    end else if (Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0) then begin
                        output := Self.insert();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                    end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                        output := Self.delete_();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                    end else if (Self.getCommand().compareTo(Self.commonStrings.UPDATE)) = (0) then begin
                        output := Self.update();
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGEXTRAOUTPUT) then begin
                            Self.pageContext.getOut().print(output + '<br />');
                        end;
                    end;
                end;
            end;
            Exit(EVAL_BODY_INCLUDE);
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


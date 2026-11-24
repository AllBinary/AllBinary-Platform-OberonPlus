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
unit AuthenticationTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TAuthenticationTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    command: string;
    userName: string;
    password: string;
    newPassword_: string;
    roles: TBasicArrayList;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        procedure setUserName(userName: string); virtual;
        procedure setPassword(value: string); virtual;
        procedure setNewPassword(value: string); virtual;
        procedure setRoles(values: TBasicArrayList); virtual;
        function changePassword: Boolean;
        function newPassword: Boolean;
        function invalidateSession: Integer;
        function isSessionOld: Boolean;
        function isRoleValid: Boolean;
        function validRole: string;
        function invalidRole: string;
        function isAuthenticationSessionValid: Boolean;
        function processIfNewLogin: Boolean;
        function processInvalidation: Boolean;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  BasicArrayListD, AuthenticationHelperFactory, AuthenticationRequestHelperFactory, StdUtil, AbResponseHandler, WeblisketSessionData, StringMaker, StringUtil, LicensingException;


{AB:CODE}

procedure TAuthenticationTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
end;
    

constructor TAuthenticationTag.Create;
var
  stringUtil_: TStringUtil;
begin
    inherited Create;
    InitFields;
        stringUtil_ := TStringUtil.getInstance();
        Self.userName := stringUtil_.EMPTY_STRING;
        Self.password := stringUtil_.EMPTY_STRING;
end;
    

procedure TAuthenticationTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TAuthenticationTag.setUserName(userName: string);
begin
        Self.userName := userName;
end;
    

procedure TAuthenticationTag.setPassword(value: string);
begin
        Self.password := value;
end;
    

procedure TAuthenticationTag.setNewPassword(value: string);
begin
        Self.newPassword_ := value;
end;
    

procedure TAuthenticationTag.setRoles(values: TBasicArrayList);
begin
        Self.roles := values;
end;
    

// throws LicensingException
function TAuthenticationTag.changePassword: Boolean;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            anyType := TJava.Box(TAuthenticationRequestHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('changePassword', nil);
            result_ := Boolean(method_.invoke(anyType, nil));
            Exit((result_));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'changePassword()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.newPassword: Boolean;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            anyType := TJava.Box(TAuthenticationRequestHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('newPassword', nil);
            result_ := Boolean(method_.invoke(anyType, nil));
            Exit((result_));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'newPassword()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.invalidateSession: Integer;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  resultInteger: Integer;
begin
        try
            anyType := TJava.Box(TAuthenticationHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('invalidateSession', nil);
            resultInteger := Integer(method_.invoke(anyType, nil));
            Exit((resultInteger));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'invalidateSession()', TJava.Box(e));
            end;
            Exit(TTagSupport.SKIP_BODY);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.isSessionOld: Boolean;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  resultBoolean: Boolean;
begin
        try
            anyType := TJava.Box(TAuthenticationHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('isSessionOld', nil);
            resultBoolean := Boolean(method_.invoke(anyType, nil));
            Exit((resultBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isSessionOld()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.isRoleValid: Boolean;
var
  anyType: TObject;
  addressHelperClass: TClass;
  methodParams: TArray<TClass>;
  method_: TMethod;
  methodArgs: TArray<TObject>;
  resultBoolean: Boolean;
begin
        try
            anyType := TJava.Box(TAuthenticationRequestHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            methodParams := TArray<TClass>.Create(TJava.ToObject(Self.userName).ClassType, TJava.ToObject(Self.password).ClassType, TJava.ToObject(Self.roles).ClassType);
            method_ := addressHelperClass.getMethod('isRoleValid', methodParams);
            methodArgs := TArray<TObject>.Create(TJava.Box(Self.userName), TJava.Box(Self.password), TJava.Box(Self.roles));
            resultBoolean := Boolean(method_.invoke(anyType, methodArgs));
            Exit((resultBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isRoleValid()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.validRole: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TAuthenticationHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('validRole', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to set valid role';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'validRole()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.invalidRole: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TAuthenticationHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('invalidRole', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to set role invalid';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'invalidRole()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.isAuthenticationSessionValid: Boolean;
var
  anyType: TObject;
  addressHelperClass: TClass;
  methodParams: TArray<TClass>;
  method_: TMethod;
  methodArgs: TArray<TObject>;
  resultBoolean: Boolean;
begin
        try
            anyType := TJava.Box(TAuthenticationHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            methodParams := TArray<TClass>.Create(TJava.ToObject(Self.roles).ClassType);
            method_ := addressHelperClass.getMethod('isAuthenticationSessionValid', methodParams);
            methodArgs := TArray<TObject>.Create(TJava.Box(Self.roles));
            resultBoolean := Boolean(method_.invoke(anyType, methodArgs));
            Exit((resultBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isAuthenticationSessionValid()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.processIfNewLogin: Boolean;
var
  anyType: TObject;
  helperClass: TClass;
  methodParams: TArray<TClass>;
  method_: TMethod;
  methodArgs: TArray<TObject>;
  resultBoolean: Boolean;
begin
        try
            anyType := TJava.Box(TAuthenticationHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            methodParams := TArray<TClass>.Create(TJava.ToObject(Self.userName).ClassType, TJava.ToObject(Self.password).ClassType);
            method_ := helperClass.getMethod('processIfNewLogin', methodParams);
            methodArgs := TArray<TObject>.Create(TJava.Box(Self.userName), TJava.Box(Self.password));
            resultBoolean := Boolean(method_.invoke(anyType, methodArgs));
            Exit((resultBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processIfNewLogin()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TAuthenticationTag.processInvalidation: Boolean;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  resultBoolean: Boolean;
begin
        try
            anyType := TJava.Box(TAuthenticationHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('processInvalidation', nil);
            resultBoolean := Boolean(method_.invoke(anyType, nil));
            Exit((resultBoolean));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isSetToInvalidate()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws JspTagException
function TAuthenticationTag.doStartTag: Integer;
var
  stringUtil_: TStringUtil;
  request: THttpServletRequest;
  stringBuffer: TStringMaker;
begin
        try
            stringUtil_ := TStringUtil.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                request := THttpServletRequest(TJava.ToObject(Self.pageContext.getRequest()));
                stringBuffer := TStringMaker.Create();
                stringBuffer.append(' Request URI: ');
                stringBuffer.append(request.getRequestURI());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            if (Self.command) <> ('') then begin
                Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
                if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.NEWPASSWORD)) = (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                        Self.logUtil.putF('New Password', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                    end;
                    if not (Self.newPassword()) then begin
                        Self.pageContext.getOut().print('New Password Request Failed.<p/>');
                        Exit(EVAL_BODY_INCLUDE);
                    end else begin
                        Self.pageContext.getOut().print('New Password Was Sent.<p/>');
                        Exit(SKIP_BODY);
                    end;
                end else if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.CHANGEPASSWORD)) = (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                        Self.logUtil.putF('Change Password', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                    end;
                    if not (Self.changePassword()) then begin
                        Self.pageContext.getOut().print('Password Change Attempt Failed.<p/>');
                        Exit(EVAL_BODY_INCLUDE);
                    end else begin
                        Self.pageContext.getOut().print('Password Changed Successfully.<p/>');
                        Exit(SKIP_BODY);
                    end;
                end else if (CompareStr(Self.command, TWeblisketSessionData.INVALIDATESESSION)) = (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                        Self.logUtil.putF('INVALIDATESESSION', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                    end;
                    Exit(Self.invalidateSession());
                end else begin
                    if Self.isSessionOld() then begin
                        if Self.processInvalidation() then begin
                            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                                Self.logUtil.putF('Processing Invalidation', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                            end;
                            Self.pageContext.getOut().print('Please login again.<p>');
                            if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then begin
                                Exit(TTagSupport.SKIP_BODY);
                            end else begin
                                Exit(TTagSupport.EVAL_BODY_INCLUDE);
                            end;
                        end else begin
                            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                                Self.logUtil.putF('Preparing session for invalidation', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                            end;
                            if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then begin
                                Exit(TTagSupport.SKIP_BODY);
                            end else begin
                                Exit(TTagSupport.EVAL_BODY_INCLUDE);
                            end;
                        end;
                    end;
                    if ((((((Self.userName) = ('')) or ((CompareStr(Self.userName, stringUtil_.EMPTY_STRING)) = (0)))) and ((((Self.password) = ('')) or ((CompareStr(Self.password, stringUtil_.EMPTY_STRING)) = (0))))) and ((Self.roles) <> (nil))) and (Self.isAuthenticationSessionValid()) then begin
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                            Self.logUtil.putF('Authenticated session is valid', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                        end;
                        if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then begin
                            Exit(TTagSupport.EVAL_BODY_INCLUDE);
                        end else begin
                            Exit(TTagSupport.SKIP_BODY);
                        end;
                    end;
                    if (((Self.userName) <> ('')) and ((Self.password) <> (''))) and (Self.processIfNewLogin()) then begin
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                            Self.logUtil.putF('Processing new login.', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                        end;
                        if Self.isRoleValid() then begin
                            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                                Self.logUtil.putF('Role is valid - Processing new login', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                            end;
                            Self.pageContext.getOut().print(Self.validRole());
                            if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then begin
                                Exit(EVAL_BODY_INCLUDE);
                            end else begin
                                Exit(SKIP_BODY);
                            end;
                        end else begin
                            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                                Self.logUtil.putF('Role is not valid - Processing new login', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                            end;
                            Self.pageContext.getOut().print(Self.invalidRole());
                            if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then begin
                                Exit(SKIP_BODY);
                            end else begin
                                Exit(EVAL_BODY_INCLUDE);
                            end;
                        end;
                    end else begin
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                            Self.logUtil.putF('Invalid Login', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                        end;
                        if ((((Self.userName) <> ('')) and ((CompareStr(Self.userName, stringUtil_.EMPTY_STRING)) <> (0))) and ((Self.password) <> (''))) and ((CompareStr(Self.password, stringUtil_.EMPTY_STRING)) <> (0)) then begin
                            Self.pageContext.getOut().print('Sorry your username and/or password is invalid.<p/>');
                        end;
                    end;
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                        Self.logUtil.putF(TStringMaker.Create().append('Major authentication error - userName: ').append(Self.userName).append(' Password: ').append(Self.password).append(' Command: ').append(Self.command).toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                    end;
                    if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.PROCESSBODYIFAUTHENTICATED)) = (0) then begin
                        Exit(TTagSupport.SKIP_BODY);
                    end else begin
                        Exit(TTagSupport.EVAL_BODY_INCLUDE);
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


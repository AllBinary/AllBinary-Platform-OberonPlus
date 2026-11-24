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
unit FileAuthenticationTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicUserRole, BasicWeblisketSession, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TFileAuthenticationTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    attemptsInteger: Integer;
    weblisketSession: TBasicWeblisketSession;
    request: THttpServletRequest;
    command: string;
    userName: string;
    password: string;
    newPassword: string;
    authenticated: string;
    sessionUserName: string;
    role: TBasicUserRole;
    timeout: string;
    roles: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        procedure setUserName(userName: string); virtual;
        procedure setPassword(value: string); virtual;
        procedure setNewPassword(value: string); virtual;
        procedure setRoles(values: TBasicArrayList); virtual;
        procedure makeSessionValid(storedRole: TBasicUserRole; userName: string);
        procedure getFormData;
        procedure nextAttempt; virtual;
        function changePassword: Boolean;
        function invalidateSession: Integer;
        function isSessionOld: Boolean;
        function isRarelyUsedSession: Boolean;
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
  BasicArrayListD, InstallerInfo, BasicUserRoleFactory, AbResponseHandler, WeblisketSessionData, BooleanFactory, BooleanUtil, StringMaker, StringUtil, LicensingException;


{AB:CODE}

procedure TFileAuthenticationTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TFileAuthenticationTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TFileAuthenticationTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TFileAuthenticationTag.setUserName(userName: string);
begin
        Self.userName := userName;
end;
    

procedure TFileAuthenticationTag.setPassword(value: string);
begin
        Self.password := value;
end;
    

procedure TFileAuthenticationTag.setNewPassword(value: string);
begin
        Self.newPassword := value;
end;
    

procedure TFileAuthenticationTag.setRoles(values: TBasicArrayList);
begin
        Self.roles := values;
end;
    

procedure TFileAuthenticationTag.makeSessionValid(storedRole: TBasicUserRole; userName: string);
begin
        Self.weblisketSession.setAuthenticated();
        Self.weblisketSession.setRole(storedRole);
        Self.weblisketSession.setUserName(userName);
        Self.request.removeAttribute(TWeblisketSessionData.REMOVABLEUSERNAME);
        Self.request.removeAttribute(TWeblisketSessionData.REMOVABLEPASSWORD);
end;
    

procedure TFileAuthenticationTag.getFormData;
begin
        Self.authenticated := Self.weblisketSession.getAuthentication();
        Self.sessionUserName := Self.weblisketSession.getUserName();
        Self.role := Self.weblisketSession.getRole();
        Self.attemptsInteger := Self.weblisketSession.getAttempts();
        Self.timeout := Self.weblisketSession.getTimeout();
end;
    

procedure TFileAuthenticationTag.nextAttempt;
begin
        if ((Self.attemptsInteger) <> (0)) and (((Self.attemptsInteger)) > (0)) then begin
            Self.weblisketSession.setAttempts(((Self.attemptsInteger)) + (1));
        end else begin
            Self.weblisketSession.setAttempts(1);
        end;
end;
    

// throws LicensingException
function TFileAuthenticationTag.changePassword: Boolean;
var
  userName: string;
  password: string;
  newPassword: string;
  newReenteredPassword: string;
  installerInfo_: TInstallerInfo;
begin
        try
            userName := Self.request.getParameter(TWeblisketSessionData.REMOVABLEUSERNAME);
            password := Self.request.getParameter(TWeblisketSessionData.REMOVABLEPASSWORD);
            newPassword := Self.request.getParameter(TWeblisketSessionData.REMOVABLENEWPASSWORD);
            newReenteredPassword := Self.request.getParameter(TWeblisketSessionData.REMOVABLEREENTERNEWPASSWORD);
            if (CompareStr(newPassword, newReenteredPassword)) <> (0) then begin
                Exit(False);
            end;
            installerInfo_ := TInstallerInfo.Create();
            if installerInfo_.isValid(userName, password) then begin
                installerInfo_.setPassword(newPassword);
                installerInfo_.write();
                Self.weblisketSession.setUserName(userName);
                Self.weblisketSession.setPassword(newPassword);
                Exit(True);
            end;
            Exit(False);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'invalidateSession()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TFileAuthenticationTag.invalidateSession: Integer;
begin
        try
            Self.weblisketSession.clear();
            Exit((TTagSupport.EVAL_BODY_INCLUDE));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'invalidateSession()', TJava.Box(e));
            end;
            Exit(TTagSupport.SKIP_BODY);
            end;
        end;
end;
    

// throws LicensingException
function TFileAuthenticationTag.isSessionOld: Boolean;
var
  timeCreated: Int64;
  sessionTimout: Int64;
  calendar: TCalendar;
  timeFirst: Int64;
  stringBuffer: TStringMaker;
begin
        try
            if (Self.role) <> (nil) then begin
                timeCreated := Self.weblisketSession.getCreationTime();
                sessionTimout := Self.role.getSessionTimeout();
                calendar := TCalendar.getInstance();
                timeFirst := (calendar.getTimeInMillis()) - (sessionTimout);
                if (timeFirst) > (timeCreated) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Session Is Old - Timeout: ');
                        stringBuffer.appendlong(sessionTimout);
                        stringBuffer.append(' Eval: ');
                        stringBuffer.appendlong(timeFirst);
                        stringBuffer.append(' > ');
                        stringBuffer.appendlong(timeCreated);
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'isSessionOld()');
                    end;
                    Exit(True.booleanValue());
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                    Self.logUtil.putF('Role Is Not In Session', TJava.Box(Self), 'isSessionOld()');
                end;
            end;
            Exit((Self.isRarelyUsedSession()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isSessionOld()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TFileAuthenticationTag.isRarelyUsedSession: Boolean;
var
  timeCreated: Int64;
  lastAccess: Int64;
  timePassed: Int64;
  calendar: TCalendar;
  timeFirst: Int64;
  stringBuffer: TStringMaker;
begin
        if (Self.role) <> (nil) then begin
            timeCreated := Self.weblisketSession.getCreationTime();
            lastAccess := Self.weblisketSession.getLastAccessedTime();
            timePassed := Self.role.getSessionInactivityTimeout();
            calendar := TCalendar.getInstance();
            timeFirst := (calendar.getTimeInMillis()) - (lastAccess);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Session Is Rarely Used - Timeout: ');
                stringBuffer.appendlong(lastAccess);
                stringBuffer.append(' Eval: ');
                stringBuffer.appendlong(timeFirst);
                stringBuffer.append(' > ');
                stringBuffer.appendlong(timePassed);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'isRarelyUsedSession()');
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                Self.logUtil.putF('Role Is Not In Session', TJava.Box(Self), 'isRarelyUsedSession()');
            end;
        end;
        Exit(False);
end;
    

// throws LicensingException
function TFileAuthenticationTag.isRoleValid: Boolean;
begin
        try
            Self.makeSessionValid(TBasicUserRoleFactory.getInstance().INSTALLER, Self.userName);
            Exit(True.booleanValue());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isRoleValid()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TFileAuthenticationTag.validRole: string;
var
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Trying New login<p>');
            Exit(stringBuffer.toString());
        except
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
function TFileAuthenticationTag.invalidRole: string;
var
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            Self.weblisketSession.setAuthenticated(False);
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Sorry your username and password is invalid on this page.');
            stringBuffer.append('Trying New login<p>');
            Exit(stringBuffer.toString());
        except
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
function TFileAuthenticationTag.isAuthenticationSessionValid: Boolean;
var
  size: Integer;
  mustBeOfRole: TBasicUserRole;
  index: Integer;
begin
        try
            if TBooleanUtil.getInstance().getFromString(Self.authenticated) then begin
                size := Self.roles.size();
                for index := 0 to size - 1 do begin
                    mustBeOfRole := TBasicUserRole(TJava.ToObject(Self.roles.get(index)));
                    if ((Self.sessionUserName) <> ('')) and (Self.role.equals(mustBeOfRole)) then begin
                        Exit(True.booleanValue());
                    end;
                end;
                Exit(False.booleanValue());
            end;
            Exit(False.booleanValue());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isAuthenticationSessionValid()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TFileAuthenticationTag.processIfNewLogin: Boolean;
var
  login: string;
  installerInfo_: TInstallerInfo;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.putF('Starting for User: ' + Self.userName + ' Attempt: ' + TJava.ToString(Self.weblisketSession.getAttempts()), TJava.Box(Self), 'processIfNewLogin()');
            end;
            if ((((Self.userName) <> ('')) and ((CompareStr(Self.userName, TStringUtil.getInstance().EMPTY_STRING)) <> (0))) and ((Self.password) <> (''))) and ((CompareStr(Self.password, TStringUtil.getInstance().EMPTY_STRING)) <> (0)) then begin
                
                installerInfo_ := TInstallerInfo.Create();
                if installerInfo_.isValid(Self.userName, Self.password) then begin
                    login := Torg.allbinary.globals.GLOBALS2.LOGINSUCCESS;
                end else begin
                    login := Torg.allbinary.globals.GLOBALS2.LOGINFAILED;
                end;
                if (CompareStr(login, Torg.allbinary.globals.GLOBALS2.LOGINSUCCESS)) = (0) then begin
                    Self.weblisketSession.setAttempts(0);
                    Exit(True.booleanValue());
                end;
                Self.nextAttempt();
                Exit(False.booleanValue());
            end;
            Self.nextAttempt();
            Exit(False.booleanValue());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processIfNewLogin()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws LicensingException
function TFileAuthenticationTag.processInvalidation: Boolean;
begin
        try
            if TBooleanUtil.getInstance().getFromString(Self.timeout) then begin
                Self.invalidateSession();
                Exit(True.booleanValue());
            end;
            begin
                Self.weblisketSession.setTimeout(TBooleanFactory.getInstance().TRUE_STRING);
                Exit(False.booleanValue());
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isSetToInvalidate()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws JspTagException
function TFileAuthenticationTag.doStartTag: Integer;
var
  stringUtil_: TStringUtil;
  stringBuffer: TStringMaker;
begin
        try
            stringUtil_ := TStringUtil.getInstance();
            Self.request := THttpServletRequest(TJava.ToObject(Self.pageContext.getRequest()));
            Self.weblisketSession := TBasicWeblisketSession.Create(Self.pageContext);
            Self.getFormData();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF('Started', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            if (Self.command) <> ('') then begin
                if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.CHANGEPASSWORD)) = (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                        Self.logUtil.putF('Change Password', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
                    end;
                    if not (Self.changePassword()) then begin
                        Self.pageContext.getOut().print('Password Change Attempt Failed.<p>');
                        Exit(EVAL_BODY_INCLUDE);
                    end else begin
                        Self.pageContext.getOut().print('Password Changed Successfully.<p>');
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
                        if ((((Self.userName) <> ('')) and ((CompareStr(Self.userName, TStringUtil.getInstance().EMPTY_STRING)) <> (0))) and ((Self.password) <> (''))) and ((CompareStr(Self.password, TStringUtil.getInstance().EMPTY_STRING)) <> (0)) then begin
                            Self.pageContext.getOut().print('Sorry your username and/or password is invalid.<p>');
                        end;
                    end;
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Major authentication error - userName: ');
                        stringBuffer.append(Self.userName);
                        stringBuffer.append(' Password: ');
                        stringBuffer.append(Self.password);
                        stringBuffer.append(' Command: ');
                        stringBuffer.append(Self.command);
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.tagStrings.DO_START_TAG);
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


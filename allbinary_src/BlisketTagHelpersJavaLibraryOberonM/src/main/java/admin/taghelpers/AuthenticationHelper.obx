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
// package admin.taghelpers
unit AuthenticationHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, UserRole, WeblisketSession, LogUtil, TagHelper;

type
  {AB:TYPES}
  TAuthenticationHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    authenticated: string;
    sessionUserName: string;
    role: TUserRole;
    timeout: string;
    attemptsInteger: Integer;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest); overload;
        procedure getFormData;
        function invalidateSession: Integer; virtual;
        function isSessionOld: Boolean; virtual;
        function isRarelyUsedSession: Boolean;
        function validRole: string; virtual;
        function invalidRole: string; virtual;
        function isAuthenticated: Boolean; virtual;
        function isAuthenticationSessionValid(roles: TBasicArrayList): Boolean; virtual;
        procedure nextAttempt; virtual;
        function processIfNewLogin(userName: string; password: string): Boolean; virtual;
        function processInvalidation: Boolean; virtual;
        function outputSessionInfo: string; virtual;
        function getRole: TUserRole; virtual;
  end;

implementation
uses
  BasicArrayListD, UserInterface, BasicUserRole, UserRoleFactory, UserEntityFactory, UserEntityInterface, GLOBALS2, BooleanFactory, BooleanUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TAuthenticationHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
end;
    

constructor TAuthenticationHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        Create(hashMap_, THttpServletRequest(TJava.ToObject(pageContext_.getRequest())));
end;
    

constructor TAuthenticationHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, httpServletRequest_);
        Self.getFormData();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
            Self.logUtil.putF(Self.outputSessionInfo(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
procedure TAuthenticationHelper.getFormData;
begin
        Self.authenticated := Self.weblisketSession.getAuthentication();
        Self.sessionUserName := Self.weblisketSession.getUserName();
        Self.role := Self.weblisketSession.getRole();
        Self.attemptsInteger := Self.weblisketSession.getAttempts();
        Self.timeout := Self.weblisketSession.getTimeout();
end;
    

// throws Exception
function TAuthenticationHelper.invalidateSession: Integer;
begin
        try
            Self.weblisketSession.clear();
            Exit(TTagSupport.EVAL_BODY_INCLUDE);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'invalidateSession()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAuthenticationHelper.isSessionOld: Boolean;
var
  timeCreated: Int64;
  sessionTimout: Int64;
  calendar: TCalendar;
  timeFirst: Int64;
  stringBuffer: TStringMaker;
begin
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
                Exit(True);
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                Self.logUtil.putF('Role Is Not In Session', TJava.Box(Self), 'isSessionOld()');
            end;
        end;
        Exit(Self.isRarelyUsedSession());
end;
    

function TAuthenticationHelper.isRarelyUsedSession: Boolean;
var
  timeCreated: Int64;
  lastAccess: Int64;
  inactivityAllowed: Int64;
  calendar: TCalendar;
  timeFirst: Int64;
  stringBuffer: TStringMaker;
begin
        if (Self.role) <> (nil) then begin
            timeCreated := Self.weblisketSession.getCreationTime();
            lastAccess := Self.weblisketSession.getLastAccessedTime();
            inactivityAllowed := Self.role.getSessionInactivityTimeout();
            calendar := TCalendar.getInstance();
            timeFirst := (calendar.getTimeInMillis()) - (lastAccess);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Session Is Rarely Used - Timeout: ');
                stringBuffer.appendlong(lastAccess);
                stringBuffer.append(' Eval: ');
                stringBuffer.appendlong(timeFirst);
                stringBuffer.append(' > ');
                stringBuffer.appendlong(inactivityAllowed);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'isRarelyUsedSession()');
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                Self.logUtil.putF('Role Is Not In Session', TJava.Box(Self), 'isRarelyUsedSession()');
            end;
        end;
        Exit(False);
end;
    

function TAuthenticationHelper.validRole: string;
var
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Trying New login<p/>');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to set valid role';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'validRole()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TAuthenticationHelper.invalidRole: string;
var
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            Self.weblisketSession.setAuthenticated(False);
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Sorry your username and password is invalid on this page. ');
            stringBuffer.append('Trying New login<p/>');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to set role invalid';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'invalidRole()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws Exception
function TAuthenticationHelper.isAuthenticated: Boolean;
begin
        if TBooleanUtil.getInstance().getFromString(Self.authenticated) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TAuthenticationHelper.isAuthenticationSessionValid(roles: TBasicArrayList): Boolean;
var
  basicUserRole_: TBasicUserRole;
  basicUserRoleArray: TArray<TObject>;
  size: Integer;
  mustBeOfRole: TBasicUserRole;
  userEntityInterface_: IUserEntityInterface;
  userInterface_: IUserInterface;
  index: Integer;
begin
        try
            if (Self.role) <> (nil) then begin
                if Self.isAuthenticated() then begin
                    if (Self.sessionUserName) <> ('') then begin
                        basicUserRole_ := Self.role.getBasicUserRole();
                        basicUserRoleArray := roles.toArray();
                        size := System.Length(basicUserRoleArray);
                        for index := 0 to size - 1 do begin
                            mustBeOfRole := TBasicUserRole(TJava.ToObject(basicUserRoleArray[index]));
                            if basicUserRole_.equals(mustBeOfRole) then begin
                                if basicUserRole_.equals(TUserRoleFactory.getInstance().CUSTOMER) then begin
                                    userEntityInterface_ := TUserEntityFactory.getInstance();
                                    userInterface_ := userEntityInterface_.getUser(Self.sessionUserName);
                                    if not (userInterface_.isSessionValid().booleanValue()) then begin
                                        Exit(False);
                                    end;
                                end;
                                Exit(True);
                            end;
                        end;
                    end;
                    Exit(False);
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                    Self.logUtil.putF('Role Is Not In Session', TJava.Box(Self), 'isAuthenticationSessionValid()');
                end;
            end;
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'isAuthenticatedSessionValid()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

procedure TAuthenticationHelper.nextAttempt;
begin
        if ((Self.attemptsInteger) <> (0)) and (((Self.attemptsInteger)) > (0)) then begin
            Self.weblisketSession.setAttempts(((Self.attemptsInteger)) + (1));
        end else begin
            Self.weblisketSession.setAttempts(1);
        end;
end;
    

function TAuthenticationHelper.processIfNewLogin(userName: string; password: string): Boolean;
var
  login: string;
  userEntityInterface_: IUserEntityInterface;
  userInterface_: IUserInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.putF('Starting: ' + userName, TJava.Box(Self), 'processIfNewLogin()');
            end;
            if ((((userName) <> ('')) and ((CompareStr(userName, TStringUtil.getInstance().EMPTY_STRING)) <> (0))) and ((password) <> (''))) and ((CompareStr(password, TStringUtil.getInstance().EMPTY_STRING)) <> (0)) then begin
                
                userEntityInterface_ := TUserEntityFactory.getInstance();
                login := userEntityInterface_.login(userName, password);
                if (CompareStr(login, GLOBALS2.LOGINSUCCESS)) = (0) then begin
                    userInterface_ := userEntityInterface_.getUser(userName);
                    if userInterface_.isSessionValid().booleanValue() then begin
                        Self.weblisketSession.setAttempts(0);
                        Exit(True);
                    end;
                end;
                Self.nextAttempt();
                Exit(False);
            end;
            Self.nextAttempt();
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processIfNewLogin()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TAuthenticationHelper.processInvalidation: Boolean;
begin
        try
            if TBooleanUtil.getInstance().getFromString(Self.timeout) then begin
                Self.invalidateSession();
                Exit(True);
            end;
            begin
                Self.weblisketSession.setTimeout(TBooleanFactory.getInstance().TRUE_STRING);
                Exit(False);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processInvalidation()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TAuthenticationHelper.outputSessionInfo: string;
var
  calendar: TCalendar;
  timeCreated: Int64;
  stringBuffer: TStringMaker;
  lastAccess: Int64;
begin
        try
            calendar := TCalendar.getInstance();
            timeCreated := Self.weblisketSession.getCreationTime();
            stringBuffer := TStringMaker.Create();
            lastAccess := Self.weblisketSession.getLastAccessedTime();
            stringBuffer.append('Time Since Last Access: ' + TJava.ToString(((calendar.getTimeInMillis()) - (lastAccess))) + '<br/>'#10'');
            if (Self.role) <> (nil) then begin
                stringBuffer.append('Auth: ');
                stringBuffer.append(Self.authenticated);
                stringBuffer.append(' UserName: ');
                stringBuffer.append(Self.sessionUserName);
                stringBuffer.append(' Role: ');
                stringBuffer.append(Self.role.toString());
                stringBuffer.append('<br/>'#10'');
                stringBuffer.append('Time Left: ');
                stringBuffer.appendlong(Int64(Trunc(((Self.role.getSessionTimeout()) - (((calendar.getTimeInMillis()) - (timeCreated)))))));
                stringBuffer.append('<br/>'#10'');
                stringBuffer.append('Inactivity Time Allowed: ');
                stringBuffer.appendlong(Int64(Trunc(Self.role.getSessionTimeout())));
                stringBuffer.append('<br/>'#10'');
                stringBuffer.append('Inactivity Time Allowed: ');
                stringBuffer.appendlong(Int64(Trunc(Self.role.getSessionInactivityTimeout())));
                stringBuffer.append('<br/>'#10'');
            end else begin
                stringBuffer.append('Role Is Not Set<br/>'#10'');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            Exit('Error');
            end;
        end;
end;
    

function TAuthenticationHelper.getRole: TUserRole;
begin
        Exit(Self.role);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


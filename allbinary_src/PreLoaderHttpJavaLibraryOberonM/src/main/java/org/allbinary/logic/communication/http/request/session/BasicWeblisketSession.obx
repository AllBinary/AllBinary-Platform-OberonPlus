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
// package org.allbinary.logic.communication.http.request.session
unit BasicWeblisketSession;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicUserRole;

type
  {AB:TYPES}
  TBasicWeblisketSession = class(TObject)
  public
    session: THttpSession;
    pageContext: TPageContext;
    procedure InitFields;
        constructor Create(pageContext_: TPageContext);
        procedure setRole(aRole: TBasicUserRole); virtual;
        function getRole: TBasicUserRole; virtual;
        procedure setPassword(password: string); virtual;
        procedure setUserName(userName: string); virtual;
        procedure setPaymentMethod(value: string); virtual;
        procedure setAuthenticated; overload; virtual;
        procedure setAttempts(value: Integer); virtual;
        procedure setTimeout(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        function getWebAppPath: string; virtual;
        function getUserName: string; virtual;
        function getPassword: string; virtual;
        function getPaymentMethod: string; virtual;
        function getAuthentication: string; virtual;
        function getAttempts: Integer; virtual;
        function getTimeout: string; virtual;
        function getStoreName: string; virtual;
        procedure setAuthenticated(value: Boolean); overload; virtual;
        procedure clear; virtual;
        function getCreationTime: Int64; virtual;
        function getLastAccessedTime: Int64; virtual;
  end;

implementation
uses
  WeblisketSessionData, StoreFrontData, UserData, PaymentGatewayData, BasicUserRoleData, BooleanFactory;


{AB:CODE}

procedure TBasicWeblisketSession.InitFields;
begin
  
  
end;
    

constructor TBasicWeblisketSession.Create(pageContext_: TPageContext);
var
  request: THttpServletRequest;
begin
    inherited Create;
    InitFields;
        Self.pageContext := pageContext_;
        request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.session := request.getSession(True);
end;
    

procedure TBasicWeblisketSession.setRole(aRole: TBasicUserRole);
begin
        Self.session.setAttribute(TJava.ToString(TBasicUserRoleData.NAME), aRole);
end;
    

function TBasicWeblisketSession.getRole: TBasicUserRole;
begin
        Exit(TBasicUserRole(TJava.ToObject(Self.session.getAttribute(TJava.ToString(TBasicUserRoleData.NAME)))));
end;
    

procedure TBasicWeblisketSession.setPassword(password: string);
begin
        Self.session.setAttribute(TUserData.PASSWORD, password);
end;
    

procedure TBasicWeblisketSession.setUserName(userName: string);
begin
        Self.session.setAttribute(TUserData.USERNAME, userName);
end;
    

procedure TBasicWeblisketSession.setPaymentMethod(value: string);
begin
        Self.session.setAttribute(TJava.ToString(TPaymentGatewayData.NAME), value);
end;
    

procedure TBasicWeblisketSession.setAuthenticated;
begin
        Self.session.setAttribute(TWeblisketSessionData.AUTHENTICATED, TBooleanFactory.getInstance().TRUE_STRING);
end;
    

procedure TBasicWeblisketSession.setAttempts(value: Integer);
begin
        Self.session.setAttribute(TWeblisketSessionData.ATTEMPTS, value);
end;
    

procedure TBasicWeblisketSession.setTimeout(value: string);
begin
        Self.session.setAttribute(TWeblisketSessionData.TIMEOUT, value);
end;
    

procedure TBasicWeblisketSession.setStoreName(value: string);
begin
        Self.session.setAttribute(TStoreFrontData.getInstance().NAME, value);
end;
    

function TBasicWeblisketSession.getWebAppPath: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(Torg.allbinary.globals.GLOBALS2.WEBAPPPATH))));
end;
    

function TBasicWeblisketSession.getUserName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TUserData.USERNAME))));
end;
    

function TBasicWeblisketSession.getPassword: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TUserData.PASSWORD))));
end;
    

function TBasicWeblisketSession.getPaymentMethod: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TJava.ToString(TPaymentGatewayData.NAME)))));
end;
    

function TBasicWeblisketSession.getAuthentication: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TWeblisketSessionData.AUTHENTICATED))));
end;
    

function TBasicWeblisketSession.getAttempts: Integer;
begin
        Exit(Integer(Self.session.getAttribute(TWeblisketSessionData.ATTEMPTS)));
end;
    

function TBasicWeblisketSession.getTimeout: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TWeblisketSessionData.TIMEOUT))));
end;
    

function TBasicWeblisketSession.getStoreName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TStoreFrontData.getInstance().NAME))));
end;
    

procedure TBasicWeblisketSession.setAuthenticated(value: Boolean);
begin
        Self.session.setAttribute(TWeblisketSessionData.AUTHENTICATED, TBooleanFactory.getInstance().FALSE_STRING);
end;
    

procedure TBasicWeblisketSession.clear;
begin
        Self.session.removeAttribute(TWeblisketSessionData.AUTHENTICATED);
        Self.session.removeAttribute(TWeblisketSessionData.TIMEOUT);
        Self.session.removeAttribute(TJava.ToString(TBasicUserRoleData.NAME));
        Self.session.removeAttribute(TUserData.USERNAME);
end;
    

function TBasicWeblisketSession.getCreationTime: Int64;
begin
        Exit(Self.session.getCreationTime());
end;
    

function TBasicWeblisketSession.getLastAccessedTime: Int64;
var
  lastAccessedTime: Int64;
begin
        lastAccessedTime := Self.session.getLastAccessedTime();
        Exit(lastAccessedTime);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


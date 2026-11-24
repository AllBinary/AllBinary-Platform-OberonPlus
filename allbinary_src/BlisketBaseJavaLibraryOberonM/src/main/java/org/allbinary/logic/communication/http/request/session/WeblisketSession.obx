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
unit WeblisketSession;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OrderInterface, UserRole, WeblisketSessionInterface;

type
  {AB:TYPES}
  TWeblisketSession = class(TInterfacedObject, IWeblisketSessionInterface)
  public
    session: THttpSession;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest); overload;
        function getId: string; virtual;
        procedure setPassword(password: string); virtual;
        procedure setUserName(userName: string); virtual;
        procedure setPaymentMethod(value: string); virtual;
        procedure setAuthenticated; overload; virtual;
        procedure setRole(aRole: TUserRole); virtual;
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
        function getRole: TUserRole; virtual;
        function getOrder: IOrderInterface; virtual;
        procedure setAuthenticated(value: Boolean); overload; virtual;
        procedure clear; virtual;
        function getCreationTime: Int64; virtual;
        function getLastAccessedTime: Int64; virtual;
        procedure removeBasket; virtual;
  end;

implementation
uses
  WeblisketSessionData, StoreFrontData, StoreFrontFactory, StoreFrontInterface, UserData, Basket, Order, PaymentGatewayData, UserRoleB, UserRoleData, BooleanFactory;


{AB:CODE}

procedure TWeblisketSession.InitFields;
begin
  
end;

function TWeblisketSession.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWeblisketSession.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        Create(hashMap_, THttpServletRequest(TJava.ToObject(pageContext_.getRequest())));
end;
    

constructor TWeblisketSession.Create(hashMap_: TJavaHashMap<TObject, TObject>; httpServletRequest_: THttpServletRequest);
var
  propertiesHashMap: TJavaHashMap<TObject, TObject>;
  request: THttpServletRequest;
begin
    inherited Create;
    InitFields;
        propertiesHashMap := hashMap_;
        request := httpServletRequest_;
        Self.session := request.getSession(True);
        if (Self.getStoreName()) = (nil) then begin
            Self.setStoreName(TJava.UnboxString(TJava.ToObject(propertiesHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME)))));
        end;
end;
    

function TWeblisketSession.getId: string;
begin
        Exit(Self.session.getId());
end;
    

procedure TWeblisketSession.setPassword(password: string);
begin
        Self.session.setAttribute(TUserData.PASSWORD, password);
end;
    

procedure TWeblisketSession.setUserName(userName: string);
begin
        Self.session.setAttribute(TUserData.USERNAME, userName);
end;
    

procedure TWeblisketSession.setPaymentMethod(value: string);
begin
        Self.session.setAttribute(TJava.ToString(TPaymentGatewayData.NAME), value);
end;
    

procedure TWeblisketSession.setAuthenticated;
begin
        Self.session.setAttribute(TWeblisketSessionData.AUTHENTICATED, TBooleanFactory.getInstance().TRUE_STRING);
end;
    

procedure TWeblisketSession.setRole(aRole: TUserRole);
begin
        Self.session.setAttribute(TJava.ToString(TUserRoleData.NAME), aRole);
end;
    

procedure TWeblisketSession.setAttempts(value: Integer);
begin
        Self.session.setAttribute(TWeblisketSessionData.ATTEMPTS, value);
end;
    

procedure TWeblisketSession.setTimeout(value: string);
begin
        Self.session.setAttribute(TWeblisketSessionData.TIMEOUT, value);
end;
    

procedure TWeblisketSession.setStoreName(value: string);
begin
        Self.session.setAttribute(TStoreFrontData.getInstance().NAME, value);
end;
    

function TWeblisketSession.getWebAppPath: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(Torg.allbinary.globals.GLOBALS2.WEBAPPPATH))));
end;
    

function TWeblisketSession.getUserName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TUserData.USERNAME))));
end;
    

function TWeblisketSession.getPassword: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TUserData.PASSWORD))));
end;
    

function TWeblisketSession.getPaymentMethod: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TJava.ToString(TPaymentGatewayData.NAME)))));
end;
    

function TWeblisketSession.getAuthentication: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TWeblisketSessionData.AUTHENTICATED))));
end;
    

function TWeblisketSession.getAttempts: Integer;
begin
        Exit(Integer(Self.session.getAttribute(TWeblisketSessionData.ATTEMPTS)));
end;
    

function TWeblisketSession.getTimeout: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TWeblisketSessionData.TIMEOUT))));
end;
    

function TWeblisketSession.getStoreName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.session.getAttribute(TStoreFrontData.getInstance().NAME))));
end;
    

// throws Exception
function TWeblisketSession.getRole: TUserRole;
var
  userRole_: TUserRole;
begin
        userRole_ := TUserRole(TJava.ToObject(Self.session.getAttribute(TJava.ToString(TUserRoleData.NAME))));
        if (userRole_) <> (nil) then begin
            Exit(TUserRoleB.getRole(userRole_.getBasicUserRole().getRole()));
        end else begin
            Exit(nil);
        end;
end;
    

// throws Exception
function TWeblisketSession.getOrder: IOrderInterface;
var
  storeFrontInterface_: IStoreFrontInterface;
  basketName: string;
  orderInterface_: IOrderInterface;
begin
        storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getStoreName());
        basketName := storeFrontInterface_.getBasketName();
        if not ((basketName = '')) then begin
            orderInterface_ := (TJava.ToObject(Self.session.getAttribute(basketName)) as IOrderInterface);
            if (orderInterface_) = (nil) then begin
                orderInterface_ := (TJava.ToObject(TOrder.Create(TBasket.Create())) as IOrderInterface);
            end;
            Self.session.setAttribute(basketName, orderInterface_);
            Exit(orderInterface_);
        end else begin
            raise SysUtils.Exception.Create('Basket Name Not Found');
        end;
end;
    

procedure TWeblisketSession.setAuthenticated(value: Boolean);
begin
        Self.session.setAttribute(TWeblisketSessionData.AUTHENTICATED, TBooleanFactory.getInstance().FALSE_STRING);
end;
    

procedure TWeblisketSession.clear;
begin
        Self.session.removeAttribute(TWeblisketSessionData.AUTHENTICATED);
        Self.session.removeAttribute(TWeblisketSessionData.TIMEOUT);
        Self.session.removeAttribute(TJava.ToString(TUserRoleData.NAME));
        Self.session.removeAttribute(TUserData.USERNAME);
end;
    

function TWeblisketSession.getCreationTime: Int64;
begin
        Exit(Self.session.getCreationTime());
end;
    

function TWeblisketSession.getLastAccessedTime: Int64;
begin
        Exit(Self.session.getLastAccessedTime());
end;
    

procedure TWeblisketSession.removeBasket;
var
  storeFrontInterface_: IStoreFrontInterface;
  basketName: string;
begin
        storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getStoreName());
        basketName := storeFrontInterface_.getBasketName();
        if not ((basketName = '')) then begin
            Self.session.removeAttribute(basketName);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


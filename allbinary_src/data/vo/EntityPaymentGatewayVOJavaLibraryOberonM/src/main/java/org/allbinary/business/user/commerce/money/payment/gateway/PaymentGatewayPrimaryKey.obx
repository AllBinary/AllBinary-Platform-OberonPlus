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
// package org.allbinary.business.user.commerce.money.payment.gateway
unit PaymentGatewayPrimaryKey;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPaymentGatewayPrimaryKey = class(TObject)
  public
    storeName: string;
    name: string;
    procedure InitFields;
        constructor Create(storeName: string; gatewayName: string);
        function getStoreName: string; virtual;
        procedure setStoreName(storeName: string); virtual;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  PaymentGateway, StoreFront, StringMaker, CommonSeps;


{AB:CODE}

procedure TPaymentGatewayPrimaryKey.InitFields;
begin
  
  
end;
    

constructor TPaymentGatewayPrimaryKey.Create(storeName: string; gatewayName: string);
begin
    inherited Create;
    InitFields;
        Self.setStoreName(storeName);
        Self.setName(gatewayName);
end;
    

function TPaymentGatewayPrimaryKey.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

procedure TPaymentGatewayPrimaryKey.setStoreName(storeName: string);
begin
        Self.storeName := storeName;
end;
    

function TPaymentGatewayPrimaryKey.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TPaymentGatewayPrimaryKey.setName(name: string);
begin
        Self.name := name;
end;
    

function TPaymentGatewayPrimaryKey.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TPaymentGatewayPrimaryKey.getName());
        stringBuffer.append(TStoreFront.getName());
        stringBuffer.append(' =');
        stringBuffer.append(Self.getStoreName());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TPaymentGateway.getName());
        stringBuffer.append('=');
        stringBuffer.append(Self.getName());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


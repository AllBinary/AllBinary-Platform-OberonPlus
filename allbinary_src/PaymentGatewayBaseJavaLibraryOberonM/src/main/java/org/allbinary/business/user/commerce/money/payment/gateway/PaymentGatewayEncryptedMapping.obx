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
unit PaymentGatewayEncryptedMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, PaymentGatewayInterface;

type
  {AB:TYPES}
  TPaymentGatewayEncryptedMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    paymentGatewayInterface: IPaymentGatewayInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(paymentGatewayInterface_: IPaymentGatewayInterface);
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TPaymentGatewayEncryptedMapping.InitFields;
begin
  
end;

function TPaymentGatewayEncryptedMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPaymentGatewayEncryptedMapping.Create(paymentGatewayInterface_: IPaymentGatewayInterface);
begin
    inherited Create;
    InitFields;
        Self.paymentGatewayInterface := paymentGatewayInterface_;
end;
    

// throws Exception
function TPaymentGatewayEncryptedMapping.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.paymentGatewayInterface.toHashMap(True));
end;
    

function TPaymentGatewayEncryptedMapping.toVector: TBasicArrayList;
begin
        Exit(Self.paymentGatewayInterface.toVector(True));
end;
    

// throws Exception
function TPaymentGatewayEncryptedMapping.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.paymentGatewayInterface.getKey())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


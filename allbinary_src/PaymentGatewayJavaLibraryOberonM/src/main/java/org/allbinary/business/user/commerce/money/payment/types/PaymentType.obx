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
// package org.allbinary.business.user.commerce.money.payment.types
unit PaymentType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, PaymentProcessorInterfaceFactoryInterface, PaymentTransactionInterfaceFactoryInterface, BasicPaymentType;

type
  {AB:TYPES}
  TPaymentType = class(TObject)
  public
    basicPaymentType: TBasicPaymentType;
    paymentTransactionInterfaceFactoryInterface: IPaymentTransactionInterfaceFactoryInterface;
    paymentProcessorInterfaceFactoryInterface: IPaymentProcessorInterfaceFactoryInterface;
    procedure InitFields;
        constructor Create(basicPaymentType_: TBasicPaymentType); overload;
        constructor Create(basicPaymentType_: TBasicPaymentType; paymentTransactionInterfaceFactoryInterface_: IPaymentTransactionInterfaceFactoryInterface; paymentProcessorInterfaceFactoryInterface_: IPaymentProcessorInterfaceFactoryInterface); overload;
        function getPaymentTransactionInterfaceFactoryInterface: IPaymentTransactionInterfaceFactoryInterface; virtual;
        function getPaymentProcessorInterfaceFactoryInterface: IPaymentProcessorInterfaceFactoryInterface; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getBasicPaymentType: TBasicPaymentType; virtual;
  end;

implementation
uses
  PaymentTypeUtil, BasicArrayListD, PaymentGatewayData, StdUtil;


{AB:CODE}

procedure TPaymentType.InitFields;
begin
  
  
  
end;
    

constructor TPaymentType.Create(basicPaymentType_: TBasicPaymentType);
begin
    inherited Create;
    InitFields;
        Self.basicPaymentType := basicPaymentType_;
        Self.paymentTransactionInterfaceFactoryInterface := nil;
        Self.paymentProcessorInterfaceFactoryInterface := nil;
        TPaymentTypeUtil.getInstance().add(Self);
end;
    

constructor TPaymentType.Create(basicPaymentType_: TBasicPaymentType; paymentTransactionInterfaceFactoryInterface_: IPaymentTransactionInterfaceFactoryInterface; paymentProcessorInterfaceFactoryInterface_: IPaymentProcessorInterfaceFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.basicPaymentType := basicPaymentType_;
        Self.paymentTransactionInterfaceFactoryInterface := paymentTransactionInterfaceFactoryInterface_;
        Self.paymentProcessorInterfaceFactoryInterface := paymentProcessorInterfaceFactoryInterface_;
        TPaymentTypeUtil.getInstance().add(Self);
end;
    

// throws Exception
function TPaymentType.getPaymentTransactionInterfaceFactoryInterface: IPaymentTransactionInterfaceFactoryInterface;
begin
        if (Self.paymentTransactionInterfaceFactoryInterface) = (nil) then begin
            raise SysUtils.Exception.Create('PaymentTransactionInterfaceFactoryInterface is Null');
        end;
        Exit(Self.paymentTransactionInterfaceFactoryInterface);
end;
    

// throws Exception
function TPaymentType.getPaymentProcessorInterfaceFactoryInterface: IPaymentProcessorInterfaceFactoryInterface;
begin
        if (Self.paymentProcessorInterfaceFactoryInterface) = (nil) then begin
            raise SysUtils.Exception.Create('PaymentProcessorInterfaceFactoryInterface is Null');
        end;
        Exit(Self.paymentProcessorInterfaceFactoryInterface);
end;
    

function TPaymentType.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.addAllList(Self.getBasicPaymentType().toVector());
        if (Self.paymentTransactionInterfaceFactoryInterface) <> (nil) then begin
            vector.add(TJava.Box(TJava.ToObject(Self.paymentTransactionInterfaceFactoryInterface).ClassType.ClassName));
        end;
        if (Self.paymentProcessorInterfaceFactoryInterface) <> (nil) then begin
            vector.add(TJava.Box(TJava.ToObject(Self.paymentProcessorInterfaceFactoryInterface).ClassType.ClassName));
        end;
        Exit(vector);
end;
    

function TPaymentType.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.putAll(Self.getBasicPaymentType().toHashMap());
        if (Self.paymentTransactionInterfaceFactoryInterface) <> (nil) then begin
            hashMap_.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE)), TJava.Box(TJava.ToObject(Self.paymentTransactionInterfaceFactoryInterface).ClassType.ClassName));
        end;
        if (Self.paymentProcessorInterfaceFactoryInterface) <> (nil) then begin
            hashMap_.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PAYMENTPROCESSORINTERFACEFACTORYINTERFACE)), TJava.Box(TJava.ToObject(Self.paymentProcessorInterfaceFactoryInterface).ClassType.ClassName));
        end;
        Exit(hashMap_);
end;
    

function TPaymentType.getBasicPaymentType: TBasicPaymentType;
begin
        Exit(Self.basicPaymentType);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit BasicPaymentType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, PaymentGatewayInterfaceFactoryInterface, PaymentGatewayDomNodeFactoryInterface;

type
  {AB:TYPES}
  TBasicPaymentType = class(TObject)
  public
    name: string;
    value: string;
    paymentGatewayInterfaceFactoryInterface: IPaymentGatewayInterfaceFactoryInterface;
    paymentGatewayDomNodeFactoryInterface: IPaymentGatewayDomNodeFactoryInterface;
    procedure InitFields;
        constructor Create(paymentMethod: string); overload;
        constructor Create(paymentMethod: string; paymentGatewayInterfaceFactoryInterface_: IPaymentGatewayInterfaceFactoryInterface; paymentGatewayDomNodeFactoryInterface_: IPaymentGatewayDomNodeFactoryInterface); overload;
        procedure init(paymentMethod: string);
        function getName: string; virtual;
        function getValue: string; virtual;
        function getPaymentGatewayInterfaceFactoryInterface: IPaymentGatewayInterfaceFactoryInterface; virtual;
        function getPaymentGatewayDomNodeFactoryInterface: IPaymentGatewayDomNodeFactoryInterface; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  BasicPaymentTypeUtil, BasicArrayListD, PaymentGatewayData, StdUtil, AbPathData, Replace, CommonSeps;


{AB:CODE}

procedure TBasicPaymentType.InitFields;
begin
  
  
  
  
end;
    

constructor TBasicPaymentType.Create(paymentMethod: string);
begin
    inherited Create;
    InitFields;
        Self.init(paymentMethod);
end;
    

constructor TBasicPaymentType.Create(paymentMethod: string; paymentGatewayInterfaceFactoryInterface_: IPaymentGatewayInterfaceFactoryInterface; paymentGatewayDomNodeFactoryInterface_: IPaymentGatewayDomNodeFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.init(paymentMethod);
        Self.paymentGatewayInterfaceFactoryInterface := paymentGatewayInterfaceFactoryInterface_;
        Self.paymentGatewayDomNodeFactoryInterface := paymentGatewayDomNodeFactoryInterface_;
end;
    

procedure TBasicPaymentType.init(paymentMethod: string);
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  UNDERSCORE: string;
  replace_: TReplace;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        UNDERSCORE := '_';
        hashMap_.put(TJava.Box(TCommonSeps.getInstance().SPACE), TJava.Box(UNDERSCORE));
        hashMap_.put(TJava.Box(TAbPathData.getInstance().EXTENSION_SEP), TJava.Box(UNDERSCORE));
        hashMap_.put(TJava.Box('-'), TJava.Box(UNDERSCORE));
        replace_ := TReplace.Create(hashMap_);
        Self.name := replace_.all(paymentMethod);
        Self.value := paymentMethod;
        TBasicPaymentTypeUtil.getInstance().add(Self);
end;
    

function TBasicPaymentType.getName: string;
begin
        Exit(Self.name);
end;
    

function TBasicPaymentType.getValue: string;
begin
        Exit(Self.value);
end;
    

// throws Exception
function TBasicPaymentType.getPaymentGatewayInterfaceFactoryInterface: IPaymentGatewayInterfaceFactoryInterface;
begin
        if (Self.paymentGatewayInterfaceFactoryInterface) = (nil) then begin
            raise SysUtils.Exception.Create('PaymentGatewayInterfaceFactoryInterface is Null');
        end;
        Exit(Self.paymentGatewayInterfaceFactoryInterface);
end;
    

// throws Exception
function TBasicPaymentType.getPaymentGatewayDomNodeFactoryInterface: IPaymentGatewayDomNodeFactoryInterface;
begin
        if (Self.paymentGatewayDomNodeFactoryInterface) = (nil) then begin
            raise SysUtils.Exception.Create('PaymentGatewayDomNodeFactoryInterface is Null');
        end;
        Exit(Self.paymentGatewayDomNodeFactoryInterface);
end;
    

function TBasicPaymentType.getKey: TObject;
begin
        Exit(TJava.Box(Self.getName()));
end;
    

function TBasicPaymentType.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.name));
        vector.add(TJava.Box(Self.value));
        Exit(vector);
end;
    

function TBasicPaymentType.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)), TJava.Box(Self.name));
        hashMap_.put(TJava.Box(TJava.ToString(TPaymentGatewayData.VALUE)), TJava.Box(Self.value));
        Exit(hashMap_);
end;
    

function TBasicPaymentType.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


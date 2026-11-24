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
// package org.allbinary.data.tables.user.commerce.money.payment.gateway
unit PaymentGatewayEntityInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, PaymentGatewayInterface, BasicPaymentType, BasicDataTableInterface;

type
  {AB:TYPES}
  IPaymentGatewayEntityInterface = interface(IBasicDataTableInterface) ['IPaymentGatewayEntityInterface']
        function getPaymentGatewayInterface(storeName: string; paymentType: TBasicPaymentType): IPaymentGatewayInterface;
        function findPaymentTypeVectorByStore(storeName: string): TBasicArrayList;
        procedure remove(storeName: string; paymentType: TBasicPaymentType);
        procedure add(paymentGatewayInterface_: IPaymentGatewayInterface);
        procedure update(paymentGatewayInterface_: IPaymentGatewayInterface);
  end;
  TPaymentGatewayEntityInterface = IPaymentGatewayEntityInterface;

implementation
uses
  BasicArrayListD;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


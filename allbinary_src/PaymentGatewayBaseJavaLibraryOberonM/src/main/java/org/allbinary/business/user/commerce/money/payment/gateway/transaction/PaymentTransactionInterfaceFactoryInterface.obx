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
// package org.allbinary.business.user.commerce.money.payment.gateway.transaction
unit PaymentTransactionInterfaceFactoryInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OrderHistory, TenderType, PaymentTransactionInterface;

type
  {AB:TYPES}
  IPaymentTransactionInterfaceFactoryInterface = interface(IJavaObject) ['IPaymentTransactionInterfaceFactoryInterface']
        function getInstance(orderHistory_: TOrderHistory): IPaymentTransactionInterface;
        function getSaleTransaction(tenderType_: TTenderType): IPaymentTransactionInterface;
        function getCreditTransaction(tenderType_: TTenderType): IPaymentTransactionInterface;
        function getAuthorizationTransaction(tenderType_: TTenderType): IPaymentTransactionInterface;
        function getCaptureDelayedTransaction(tenderType_: TTenderType): IPaymentTransactionInterface;
        function getVoidTransaction(tenderType_: TTenderType): IPaymentTransactionInterface;
        function getInquiryTransaction(tenderType_: TTenderType): IPaymentTransactionInterface;
  end;
  TPaymentTransactionInterfaceFactoryInterface = IPaymentTransactionInterfaceFactoryInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


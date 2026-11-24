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
unit TransactionTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransactionType;

type
  {AB:TYPES}
  TTransactionTypeFactory = class(TObject)
  public
    SALE: TTransactionType;
    CREDIT: TTransactionType;
    AUTHORIZATION: TTransactionType;
    DELAYEDCAPTURE: TTransactionType;
    VOID: TTransactionType;
    INQUIRY: TTransactionType;
    class var instance: TTransactionTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTransactionTypeFactory; static;
  end;

implementation

{AB:CODE}

procedure TTransactionTypeFactory.InitFields;
begin
  Self.SALE := TTransactionType.Create('Sale');
  Self.CREDIT := TTransactionType.Create('Credit');
  Self.AUTHORIZATION := TTransactionType.Create('Authorization');
  Self.DELAYEDCAPTURE := TTransactionType.Create('Delayed Capture');
  Self.VOID := TTransactionType.Create('Void');
  Self.INQUIRY := TTransactionType.Create('Inquiry');
end;

constructor TTransactionTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTransactionTypeFactory.getInstance: TTransactionTypeFactory;
begin
        Exit(TTransactionTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TTransactionTypeFactory.instance := TTransactionTypeFactory.Create();
  {AB:END}

end.


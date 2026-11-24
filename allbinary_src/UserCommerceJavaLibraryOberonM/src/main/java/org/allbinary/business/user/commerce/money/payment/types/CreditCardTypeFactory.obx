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
unit CreditCardTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CreditCardType;

type
  {AB:TYPES}
  TCreditCardTypeFactory = class(TObject)
  public
    VISA: TCreditCardType;
    MASTERCARD: TCreditCardType;
    DISCOVER: TCreditCardType;
    AMERICANEXPRESS: TCreditCardType;
    class var instance: TCreditCardTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCreditCardTypeFactory; static;
  end;

implementation

{AB:CODE}

procedure TCreditCardTypeFactory.InitFields;
begin
  Self.VISA := TCreditCardType.Create('Visa');
  Self.MASTERCARD := TCreditCardType.Create('MasterCard');
  Self.DISCOVER := TCreditCardType.Create('Discover');
  Self.AMERICANEXPRESS := TCreditCardType.Create('AMX');
end;

constructor TCreditCardTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCreditCardTypeFactory.getInstance: TCreditCardTypeFactory;
begin
        Exit(TCreditCardTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCreditCardTypeFactory.instance := TCreditCardTypeFactory.Create();
  {AB:END}

end.


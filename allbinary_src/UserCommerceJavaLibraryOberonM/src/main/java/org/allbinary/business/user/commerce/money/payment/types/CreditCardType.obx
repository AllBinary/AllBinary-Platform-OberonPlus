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
unit CreditCardType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCreditCardType = class(TObject)
  public
    name: string;
    class var MAXLEN: Integer;
    procedure InitFields;
        constructor Create(cardType: string);
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TCreditCardType.InitFields;
begin
  
end;
    

constructor TCreditCardType.Create(cardType: string);
begin
    inherited Create;
    InitFields;
        Self.name := cardType;
end;
    

function TCreditCardType.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  TCreditCardType.MAXLEN := 19;
  {AB:END}

end.


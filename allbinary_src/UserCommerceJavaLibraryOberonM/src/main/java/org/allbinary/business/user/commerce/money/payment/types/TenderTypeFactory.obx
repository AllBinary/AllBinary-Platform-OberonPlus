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
unit TenderTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TenderType;

type
  {AB:TYPES}
  TTenderTypeFactory = class(TObject)
  public
    CREDITCARD: TTenderType;
    CHECK: TTenderType;
    ACH: TTenderType;
    class var instance: TTenderTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTenderTypeFactory; static;
  end;

implementation

{AB:CODE}

procedure TTenderTypeFactory.InitFields;
begin
  Self.CREDITCARD := TTenderType.Create('Credit Card');
  Self.CHECK := TTenderType.Create('Check');
  Self.ACH := TTenderType.Create('Ach');
end;

constructor TTenderTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTenderTypeFactory.getInstance: TTenderTypeFactory;
begin
        Exit(TTenderTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TTenderTypeFactory.instance := TTenderTypeFactory.Create();
  {AB:END}

end.


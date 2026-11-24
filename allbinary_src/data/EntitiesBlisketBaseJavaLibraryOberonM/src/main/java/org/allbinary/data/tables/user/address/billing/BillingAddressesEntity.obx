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
// package org.allbinary.data.tables.user.address.billing
unit BillingAddressesEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StreetAddressesEntity;

type
  {AB:TYPES}
  TBillingAddressesEntity = class(TStreetAddressesEntity)
  public
    TABLENAME: string;
    procedure InitFields;
        constructor Create(userName: string);
  end;

implementation

{AB:CODE}

procedure TBillingAddressesEntity.InitFields;
begin
  Self.TABLENAME := 'billing';
end;
    

constructor TBillingAddressesEntity.Create(userName: string);
begin
        inherited Create(userName);
        InitFields;
        Self.setTableName(Self.TABLENAME);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


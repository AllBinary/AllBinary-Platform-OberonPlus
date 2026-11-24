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
unit TenderType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTenderType = class(TObject)
  public
    name: string;
    procedure InitFields;
        constructor Create(name: string);
        function isEqual(tenderType_: TTenderType): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TTenderType.InitFields;
begin
  
end;
    

constructor TTenderType.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
end;
    

function TTenderType.isEqual(tenderType_: TTenderType): Boolean;
begin
        if (CompareStr(Self.toString(), tenderType_.toString())) = (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TTenderType.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.data.tables
unit TableDataFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTableDataFactory = class(TObject)
  public
    INTEGER_MAX_VALUE_STRING: string;
    ZERO_STRING: string;
    class var instance: TTableDataFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTableDataFactory; static;
  end;

implementation
uses
  CommonPhoneStrings;


{AB:CODE}

procedure TTableDataFactory.InitFields;
begin
  Self.INTEGER_MAX_VALUE_STRING := IntToStr(High(Integer));
  Self.ZERO_STRING := TCommonPhoneStrings.getInstance().ZERO;
end;

constructor TTableDataFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTableDataFactory.getInstance: TTableDataFactory;
begin
        Exit(TTableDataFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TTableDataFactory.instance := TTableDataFactory.Create();
  {AB:END}

end.


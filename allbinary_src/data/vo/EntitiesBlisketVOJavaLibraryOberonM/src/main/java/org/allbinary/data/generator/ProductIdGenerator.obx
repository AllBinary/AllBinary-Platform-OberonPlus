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
// package org.allbinary.data.generator
unit ProductIdGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UniqueIdGenerator;

type
  {AB:TYPES}
  TProductIdGenerator = class(TUniqueIdGenerator)
  public
    IDFILE: string;
    procedure InitFields;
        constructor Create;
  end;

implementation
uses
  PATH_GLOBALS, URLGLOBALS, StringMaker;


{AB:CODE}

procedure TProductIdGenerator.InitFields;
begin
  Self.IDFILE := 'productId';
end;
    

constructor TProductIdGenerator.Create;
var
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(TPATH_GLOBALS.getInstance().INIT_PATH);
        stringBuffer.append(Self.IDFILE);
        stringBuffer.append(TUniqueIdGenerator.EXT);
        inherited setFile(stringBuffer.toString(), Self.IDFILE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


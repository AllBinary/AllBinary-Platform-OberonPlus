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
// package org.allbinary.logic.control.sort
unit StringComparator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStringComparator = class(TInterfacedObject, IComparator)
  public
    function JavaObject: TObject;
        constructor Create;
        function compare(anyType: TObject; object2: TObject): Integer; virtual;
  end;

implementation

{AB:CODE}

function TStringComparator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStringComparator.Create;
begin
    inherited Create;
end;
    

function TStringComparator.compare(anyType: TObject; object2: TObject): Integer;
var
  string_: string;
  string2: string;
begin
        string_ := TJava.UnboxString(TJava.ToObject(anyType));
        string2 := TJava.UnboxString(TJava.ToObject(object2));
        Exit(CompareStr(string_, string2));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


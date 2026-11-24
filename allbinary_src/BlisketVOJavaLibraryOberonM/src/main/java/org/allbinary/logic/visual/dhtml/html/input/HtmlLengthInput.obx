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
// package org.allbinary.logic.visual.dhtml.html.input
unit HtmlLengthInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HtmlValueInput;

type
  {AB:TYPES}
  THtmlLengthInput = class(THtmlValueInput)
  public
    MAXLENGTH: string;
    SIZE_: string;
    length: string;
    size: string;
    procedure InitFields;
        constructor Create(before: string; type_: string; name: string; value: string; after: string);
        procedure setMaxLength(length: Integer); virtual;
        procedure setSize(size: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure THtmlLengthInput.InitFields;
begin
  Self.MAXLENGTH := 'MAXLENGTH';
  Self.SIZE_ := 'SIZE';
  
  
end;
    

constructor THtmlLengthInput.Create(before: string; type_: string; name: string; value: string; after: string);
begin
        inherited Create(before, type_, name, value, after);
        InitFields;
end;
    

procedure THtmlLengthInput.setMaxLength(length: Integer);
begin
        System.Length(Self) := TJava.NewString(length);
        Self.addAttribute(Self.MAXLENGTH, System.Length(Self));
end;
    

procedure THtmlLengthInput.setSize(size: Integer);
begin
        Self.size := TJava.NewString(size);
        Self.addAttribute(Self.MAXLENGTH, Self.size);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


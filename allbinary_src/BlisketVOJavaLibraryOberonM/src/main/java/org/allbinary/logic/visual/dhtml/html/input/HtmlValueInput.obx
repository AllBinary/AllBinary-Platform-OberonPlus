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
unit HtmlValueInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HtmlInput;

type
  {AB:TYPES}
  THtmlValueInput = class(THtmlInput)
  public
    value: string;
    VALUE_: string;
    procedure InitFields;
        constructor Create(before: string; type_: string; name: string; value: string; after: string);
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure THtmlValueInput.InitFields;
begin
  
  Self.VALUE_ := 'VALUE';
end;
    

constructor THtmlValueInput.Create(before: string; type_: string; name: string; value: string; after: string);
var
  stringUtil_: TStringUtil;
begin
        inherited Create(before, type_, name, after);
        InitFields;
        stringUtil_ := TStringUtil.getInstance();
        Self.value := stringUtil_.EMPTY_STRING;
        Self.addAttribute(Self.VALUE_, value);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


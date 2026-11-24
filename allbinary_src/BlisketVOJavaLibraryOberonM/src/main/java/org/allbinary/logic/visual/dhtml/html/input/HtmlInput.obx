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
unit HtmlInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HtmlTag;

type
  {AB:TYPES}
  THtmlInput = class(THtmlTag)
  public
    END_: string;
    STARTINPUT: string;
    ENDINPUT: string;
    TYPE__: string;
    NAME_: string;
    before: string;
    type_: string;
    name: string;
    after: string;
    procedure InitFields;
        constructor Create(before: string; type_: string; name: string; after: string);
        function toString: string; override;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure THtmlInput.InitFields;
begin
  Self.END_ := '>';
  Self.STARTINPUT := '<INPUT ';
  Self.ENDINPUT := '</INPUT>';
  Self.TYPE__ := 'TYPE="';
  Self.NAME_ := 'NAME="';
  
  
  
  
end;
    

constructor THtmlInput.Create(before: string; type_: string; name: string; after: string);
begin
    inherited Create;
    InitFields;
        Self.before := before;
        Self.type_ := type_;
        Self.name := name;
        Self.after := after;
end;
    

function THtmlInput.toString: string;
var
  stringUtil_: TStringUtil;
  result_: string;
  attributeKeys: TArray<TObject>;
  attributeSize: Integer;
  key: string;
  value: string;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        result_ := stringUtil_.EMPTY_STRING;
        attributeKeys := Self.otherAttributes.keySet().toArray();
        attributeSize := System.Length(attributeKeys);
        result_ := Self.before;
        result_ := result_ + Self.STARTINPUT;
        result_ := result_ + Self.TYPE__;
        result_ := result_ + Self.type_;
        result_ := result_ + '" ';
        result_ := result_ + Self.NAME_;
        result_ := result_ + Self.name;
        result_ := result_ + '" ';
        for i := 0 to attributeSize - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(attributeKeys[i]));
            value := TJava.UnboxString(TJava.ToObject(Self.otherAttributes.get(key)));
            if ((value) <> ('')) and ((CompareStr(value, stringUtil_.EMPTY_STRING)) <> (0)) then begin
                result_ := result_ + key;
                result_ := result_ + '="';
                result_ := result_ + value;
                result_ := result_ + '" ';
            end;
        end;
        result_ := result_ + Self.END_;
        result_ := result_ + Self.ENDINPUT;
        result_ := result_ + Self.after;
        Exit(result_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.logic.visual.dhtml.html.table
unit HtmlCell;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HtmlTag;

type
  {AB:TYPES}
  THtmlCell = class(THtmlTag)
  public
    END_: string;
    START: string;
    ENDTAG: string;
    HEIGHT_: string;
    WIDTH_: string;
    height: string;
    width: string;
    before: string;
    body: string;
    after: string;
    procedure InitFields;
        constructor Create(before: string; width: string; height: string; after: string);
        procedure addText(body: string); virtual;
        function toString: string; override;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure THtmlCell.InitFields;
begin
  Self.END_ := '>';
  Self.START := '<td ';
  Self.ENDTAG := '</td>';
  Self.HEIGHT_ := 'height';
  Self.WIDTH_ := 'width';
  
  
  
  
  
end;
    

constructor THtmlCell.Create(before: string; width: string; height: string; after: string);
begin
    inherited Create;
    InitFields;
        Self.before := TJava.NewString(before);
        Self.after := TJava.NewString(after);
        Self.height := TJava.NewString(height);
        Self.width := TJava.NewString(width);
        Self.addAttribute(Self.HEIGHT_, Self.height);
        Self.addAttribute(Self.WIDTH_, Self.width);
end;
    

procedure THtmlCell.addText(body: string);
begin
        Self.body := body;
end;
    

function THtmlCell.toString: string;
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
        result_ := result_ + Self.START;
        result_ := result_ + ' ';
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
        result_ := result_ + Self.body;
        result_ := result_ + Self.ENDTAG;
        result_ := result_ + Self.after;
        Exit(result_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


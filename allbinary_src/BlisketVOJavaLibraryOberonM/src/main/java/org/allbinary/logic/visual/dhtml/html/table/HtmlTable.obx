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
unit HtmlTable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, HtmlTag, HtmlRow;

type
  {AB:TYPES}
  THtmlTable = class(THtmlTag)
  public
    END_: string;
    START: string;
    ENDTAG: string;
    CLASS_: string;
    DIRECTION: string;
    ID: string;
    LANG: string;
    UNITS: string;
    BORDER_: string;
    CELLPADDING_: string;
    CELLSPACING_: string;
    COLS: string;
    FLOAT: string;
    FRAME: string;
    RULES: string;
    STYLE_: string;
    BORDERCOLLAPSE: string;
    numberOfColumns: Integer;
    before: string;
    border: string;
    cellpadding: string;
    cellspacing: string;
    style: string;
    name: string;
    after: string;
    htmlRowsVector: TBasicArrayList;
    procedure InitFields;
        constructor Create(before: string; cellpadding: string; cellspacing: string; after: string);
        procedure addRow(htmlRow_: THtmlRow); virtual;
        function toString: string; override;
  end;

implementation
uses
  BasicArrayListD, StdUtil, StringUtil, CommonPhoneStrings;


{AB:CODE}

procedure THtmlTable.InitFields;
begin
  Self.END_ := '>';
  Self.START := '<table ';
  Self.ENDTAG := '</table>';
  Self.CLASS_ := 'class';
  Self.DIRECTION := 'dir';
  Self.ID := 'id';
  Self.LANG := 'lang';
  Self.UNITS := 'units';
  Self.BORDER_ := 'border';
  Self.CELLPADDING_ := 'cellpadding';
  Self.CELLSPACING_ := 'cellspacing';
  Self.COLS := 'cols';
  Self.FLOAT := 'float';
  Self.FRAME := 'frame';
  Self.RULES := 'rules';
  Self.STYLE_ := 'style';
  Self.BORDERCOLLAPSE := 'border-collapse: collapse';
  Self.numberOfColumns := 0;
  
  
  
  
  
  
  
  
end;
    

constructor THtmlTable.Create(before: string; cellpadding: string; cellspacing: string; after: string);
begin
    inherited Create;
    InitFields;
        Self.before := before;
        Self.cellpadding := cellpadding;
        Self.cellspacing := cellspacing;
        Self.after := after;
        Self.htmlRowsVector := TBasicArrayListD.Create();
        Self.addAttribute(Self.BORDER_, TCommonPhoneStrings.getInstance().ZERO);
        Self.addAttribute(Self.CELLPADDING_, Self.cellpadding);
        Self.addAttribute(Self.CELLSPACING_, Self.cellspacing);
        Self.addAttribute(Self.STYLE_, Self.BORDERCOLLAPSE);
end;
    

procedure THtmlTable.addRow(htmlRow_: THtmlRow);
begin
        if (Self.numberOfColumns) < (htmlRow_.getNumberOfColumns()) then begin
            Self.numberOfColumns := htmlRow_.getNumberOfColumns();
        end;
        Self.htmlRowsVector.add(TJava.Box(htmlRow_));
end;
    

function THtmlTable.toString: string;
var
  stringUtil_: TStringUtil;
  result_: string;
  attributeKeys: TArray<TObject>;
  key: string;
  value: string;
  i: Integer;
  size: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        result_ := stringUtil_.EMPTY_STRING;
        attributeKeys := Self.otherAttributes.keySet().toArray();
        result_ := Self.before;
        result_ := result_ + Self.START;
        result_ := result_ + ' ';
        for i := 0 to System.Length(attributeKeys) - 1 do begin
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
        size := Self.htmlRowsVector.size();
        for i := 0 to size - 1 do begin
            result_ := result_ + Self.htmlRowsVector.get(i).toString();
            result_ := result_ + ' ';
        end;
        result_ := result_ + Self.ENDTAG;
        result_ := result_ + Self.after;
        Exit(result_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


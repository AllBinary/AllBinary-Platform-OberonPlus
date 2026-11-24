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
unit HtmlRow;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, HtmlTag, HtmlCell;

type
  {AB:TYPES}
  THtmlRow = class(THtmlTag)
  public
    END_: string;
    START: string;
    ENDTAG: string;
    numberOfColumns: Integer;
    before: string;
    after: string;
    htmlCellsVector: TBasicArrayList;
    procedure InitFields;
        constructor Create(before: string; after: string);
        procedure addCell(htmlCell_: THtmlCell); virtual;
        function getNumberOfColumns: Integer; virtual;
        function toString: string; override;
  end;

implementation
uses
  BasicArrayListD, StdUtil, StringUtil;


{AB:CODE}

procedure THtmlRow.InitFields;
begin
  Self.END_ := '>';
  Self.START := '<tr ';
  Self.ENDTAG := '</tr>';
  Self.numberOfColumns := 0;
  
  
  
end;
    

constructor THtmlRow.Create(before: string; after: string);
begin
    inherited Create;
    InitFields;
        Self.before := TJava.NewString(before);
        Self.after := TJava.NewString(after);
        Self.htmlCellsVector := TBasicArrayListD.Create();
end;
    

procedure THtmlRow.addCell(htmlCell_: THtmlCell);
begin
        Self.htmlCellsVector.add(TJava.Box(htmlCell_));
        Inc(Self.numberOfColumns);
end;
    

function THtmlRow.getNumberOfColumns: Integer;
begin
        Exit(Self.numberOfColumns);
end;
    

function THtmlRow.toString: string;
var
  stringUtil_: TStringUtil;
  result_: string;
  attributeKeys: TArray<TObject>;
  attributeSize: Integer;
  cellSize: Integer;
  key: string;
  value: string;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        result_ := stringUtil_.EMPTY_STRING;
        attributeKeys := Self.otherAttributes.keySet().toArray();
        attributeSize := System.Length(attributeKeys);
        cellSize := Self.htmlCellsVector.size();
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
        for i := 0 to cellSize - 1 do begin
            result_ := result_ + Self.htmlCellsVector.get(i).toString();
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


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
// package org.allbinary.logic.visual.dhtml.html.select
unit HtmlSelect;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, HtmlTag;

type
  {AB:TYPES}
  THtmlSelect = class(THtmlTag)
  public
    END_: string;
    STARTSELECT: string;
    ENDSELECT: string;
    SIZE_: string;
    NAME_: string;
    STARTOPTION: string;
    SELETED: string;
    ENDOPTION: string;
    before: string;
    name: string;
    after: string;
    size: string;
    selected: string;
    options: TBasicArrayList;
    multiple: string;
    isMultipleSelect: Boolean;
    procedure InitFields;
        constructor Create(before: string; size: string; name: string; after: string);
        procedure addOption(key: string); virtual;
        procedure addOptions(fileName: string); virtual;
        procedure setSelected(selected: string); virtual;
        function isMultiple: Boolean; virtual;
        procedure setMultiple(value: Boolean); virtual;
        function getOptions: string;
        function toString: string; override;
  end;

implementation
uses
  BasicArrayListD, StdUtil, LineReader, StringUtil;


{AB:CODE}

procedure THtmlSelect.InitFields;
begin
  Self.END_ := '>';
  Self.STARTSELECT := '<SELECT ';
  Self.ENDSELECT := '</SELECT>';
  Self.SIZE_ := 'SIZE="';
  Self.NAME_ := 'NAME="';
  Self.STARTOPTION := '<OPTION';
  Self.SELETED := 'SELECTED';
  Self.ENDOPTION := '</OPTION>';
  
  
  
  
  
  
  Self.multiple := 'multiple';
  Self.isMultipleSelect := False;
end;
    

constructor THtmlSelect.Create(before: string; size: string; name: string; after: string);
begin
    inherited Create;
    InitFields;
        Self.before := before;
        Self.size := size;
        Self.name := name;
        Self.after := after;
        Self.options := TBasicArrayListD.Create();
end;
    

procedure THtmlSelect.addOption(key: string);
begin
        Self.options.add(TJava.Box(key));
end;
    

procedure THtmlSelect.addOptions(fileName: string);
var
  lineReader_: TLineReader;
  option: string;
begin
        try
            lineReader_ := TLineReader.Create(fileName);
            while lineReader_.hasNext() do begin
                option := lineReader_.next();
                Self.addOption(option);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.addOption('Error');
            end;
        end;
end;
    

procedure THtmlSelect.setSelected(selected: string);
begin
        Self.selected := selected;
end;
    

function THtmlSelect.isMultiple: Boolean;
begin
        Exit(Self.isMultipleSelect);
end;
    

procedure THtmlSelect.setMultiple(value: Boolean);
begin
        Self.isMultipleSelect := value;
end;
    

function THtmlSelect.getOptions: string;
var
  stringUtil_: TStringUtil;
  result_: string;
  optionsArray: TArray<TObject>;
  optionsSize: Integer;
  value: string;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        result_ := stringUtil_.EMPTY_STRING;
        optionsArray := Self.options.toArray();
        optionsSize := System.Length(optionsArray);
        for i := 0 to optionsSize - 1 do begin
            value := TJava.UnboxString(TJava.ToObject(optionsArray[i]));
            if ((value) <> (nil)) and ((value.compareTo(stringUtil_.EMPTY_STRING)) <> (0)) then begin
                result_ := result_ + Self.STARTOPTION;
                result_ := result_ + Self.END_;
                result_ := result_ + value;
                result_ := result_ + Self.ENDOPTION;
            end;
        end;
        Exit(result_);
end;
    

function THtmlSelect.toString: string;
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
        result_ := result_ + Self.STARTSELECT;
        result_ := result_ + Self.NAME_;
        result_ := result_ + Self.name;
        result_ := result_ + '" ';
        result_ := result_ + Self.SIZE_;
        result_ := result_ + Self.size;
        result_ := result_ + '" ';
        for i := 0 to attributeSize - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(attributeKeys[i]));
            value := TJava.UnboxString(TJava.ToObject(Self.otherAttributes.get(key)));
            if ((value) <> (nil)) and ((value.compareTo(stringUtil_.EMPTY_STRING)) <> (0)) then begin
                result_ := result_ + key;
                result_ := result_ + '="';
                result_ := result_ + value;
                result_ := result_ + '" ';
            end;
        end;
        if Self.isMultiple() then begin
            result_ := result_ + ' ' + Self.multiple + ' ';
        end;
        result_ := result_ + Self.END_;
        result_ := result_ + Self.getOptions();
        result_ := result_ + Self.ENDSELECT;
        result_ := result_ + Self.after;
        Exit(result_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


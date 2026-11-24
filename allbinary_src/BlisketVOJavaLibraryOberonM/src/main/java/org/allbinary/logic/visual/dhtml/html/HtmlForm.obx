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
// package org.allbinary.logic.visual.dhtml.html
unit HtmlForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, HtmlInput, HtmlTable;

type
  {AB:TYPES}
  THtmlForm = class(TObject)
  public
    FORMBEGIN: string;
    END_: string;
    FORMEND: string;
    ACTION_: string;
    GET: string;
    POST: string;
    METHODS: TArray<string>;
    METHOD_: string;
    method: string;
    action: string;
    inputs: TBasicArrayList;
    procedure InitFields;
        constructor Create(action: string);
        procedure setPost; virtual;
        procedure setGet; virtual;
        procedure addInput(htmlInput_: THtmlInput); virtual;
        procedure addTable(htmlTable_: THtmlTable); virtual;
        function toString: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, StringUtil;


{AB:CODE}

procedure THtmlForm.InitFields;
begin
  Self.FORMBEGIN := '<form ';
  Self.END_ := '>';
  Self.FORMEND := '</form>';
  Self.ACTION_ := 'ACTION="';
  Self.GET := 'GET"';
  Self.POST := 'POST"';
  Self.METHODS := TArray<string>.Create(Self.GET, Self.POST);
  Self.METHOD_ := 'METHOD="';
  
  
  
end;
    

constructor THtmlForm.Create(action: string);
begin
    inherited Create;
    InitFields;
        Self.action := action;
        Self.inputs := TBasicArrayListD.Create();
end;
    

procedure THtmlForm.setPost;
begin
        Self.method := Self.POST;
end;
    

procedure THtmlForm.setGet;
begin
        Self.method := Self.GET;
end;
    

procedure THtmlForm.addInput(htmlInput_: THtmlInput);
begin
        Self.inputs.add(TJava.Box(htmlInput_));
end;
    

procedure THtmlForm.addTable(htmlTable_: THtmlTable);
begin
        Self.inputs.add(TJava.Box(htmlTable_));
end;
    

function THtmlForm.toString: string;
var
  stringUtil_: TStringUtil;
  result_: string;
  inputArray: TArray<TObject>;
  inputSize: Integer;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        result_ := stringUtil_.EMPTY_STRING;
        inputArray := Self.inputs.toArray();
        inputSize := System.Length(inputArray);
        result_ := Self.FORMBEGIN;
        result_ := result_ + Self.METHOD_;
        result_ := result_ + Self.method;
        result_ := result_ + '" ';
        result_ := result_ + Self.ACTION_;
        result_ := result_ + Self.action;
        result_ := result_ + '" ';
        result_ := result_ + Self.END_;
        for i := 0 to inputSize - 1 do begin
            result_ := result_ + inputArray[i].toString();
            result_ := result_ + ' ';
        end;
        result_ := result_ + Self.FORMEND;
        Exit(result_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


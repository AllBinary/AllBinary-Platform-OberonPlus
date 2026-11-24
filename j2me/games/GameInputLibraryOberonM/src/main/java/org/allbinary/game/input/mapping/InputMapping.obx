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
// package org.allbinary.game.input.mapping
unit InputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input, LogUtil, CommonStrings, BasicArrayList, ABHashtable, InputToGameKeyMapping;

type
  {AB:TYPES}
  TInputMapping = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    hashtable: TABHashtable<TObject, TObject>;
    mappedList: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        function getTotalMapped: Integer; virtual;
        function isDefaultNew: Boolean; virtual;
        function getDefault: TInputToGameKeyMapping; virtual;
        procedure removeAll; virtual;
        procedure remove(input_: TInput; mappedToInput: TInput); virtual;
        procedure addMapping(inputToGameKeyMapping_: TInputToGameKeyMapping); virtual;
        procedure add(input_: TInput; mappedToInput: TInput); virtual;
        function isMapped(input_: TInput): Boolean; virtual;
        function getMappedInput(id: TInput): TBasicArrayList; virtual;
        function getHashtable: TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  StringMaker, StringUtil, CommonLabels, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TInputMapping.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  Self.mappedList := TBasicArrayListD.Create();
end;
    

constructor TInputMapping.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TInputMapping.getTotalMapped: Integer;
begin
        Exit(Self.hashtable.size());
end;
    

function TInputMapping.isDefaultNew: Boolean;
begin
        Exit(False);
end;
    

function TInputMapping.getDefault: TInputToGameKeyMapping;
begin
        Exit(TInputToGameKeyMapping.getNullInstance());
end;
    

procedure TInputMapping.removeAll;
begin
        Self.hashtable.clear();
        Self.mappedList.clear();
end;
    

procedure TInputMapping.remove(input_: TInput; mappedToInput: TInput);
var
  stringBuffer: TStringMaker;
  stringUtil_: TStringUtil;
  list: TBasicArrayList;
begin
        stringBuffer := TStringMaker.Create();
        stringUtil_ := TStringUtil.getInstance();
        stringBuffer.append(TCommonLabels.getInstance().START_LABEL);
        stringBuffer.append(stringUtil_.toString(input_));
        stringBuffer.append(' == ');
        stringBuffer.append(stringUtil_.toString(mappedToInput));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'InputMapping::remove');
        list := Self.getMappedInput(input_);
        if list.contains(TJava.Box(mappedToInput)) then begin
            list.remove(mappedToInput);
            Self.mappedList.remove(mappedToInput);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('Removed: ');
            stringBuffer.append(stringUtil_.toString(input_));
            stringBuffer.append(' == ');
            stringBuffer.append(stringUtil_.toString(mappedToInput));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'InputMapping::remove');
        end else begin
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('Not Deleted: ');
            stringBuffer.append(stringUtil_.toString(input_));
            stringBuffer.append(' == ');
            stringBuffer.append(stringUtil_.toString(mappedToInput));
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'InputMapping::remove');
        end;
end;
    

// throws Exception
procedure TInputMapping.addMapping(inputToGameKeyMapping_: TInputToGameKeyMapping);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TInputMapping.add(input_: TInput; mappedToInput: TInput);
var
  list: TBasicArrayList;
begin
        list := Self.getMappedInput(input_);
        if not (list.contains(TJava.Box(mappedToInput))) then begin
            list.add(TJava.Box(mappedToInput));
            Self.mappedList.add(TJava.Box(mappedToInput));
        end;
end;
    

function TInputMapping.isMapped(input_: TInput): Boolean;
begin
        Exit(Self.mappedList.contains(TJava.Box(input_)));
end;
    

function TInputMapping.getMappedInput(id: TInput): TBasicArrayList;
var
  mappingInputCanBeNullList: TObject;
  list: TBasicArrayList;
begin
        mappingInputCanBeNullList := TJava.Box(Self.hashtable.get(TJava.Box(id)));
        if (mappingInputCanBeNullList) = (nil) then begin
            list := TBasicArrayListD.Create();
            Self.hashtable.put(TJava.Box(id), TJava.Box(list));
            Exit(list);
        end;
        Exit(TBasicArrayList(TJava.ToObject(mappingInputCanBeNullList)));
end;
    

function TInputMapping.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


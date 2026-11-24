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
// package org.allbinary.logic.java.array
unit IntArrayUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TIntArrayUtil = class(TObject)
  public
        constructor Create;
        class function toString(array_: TArray<Integer>): string; overload; static;
        class function toString(array_: TArray<TArray<Integer>>): string; overload; static;
        class function toString(array_: TArray<TArray<TArray<Integer>>>): string; overload; static;
  end;

implementation
uses
  StringMaker;


{AB:CODE}
    

constructor TIntArrayUtil.Create;
begin
    inherited Create;
end;
    

class function TIntArrayUtil.toString(array_: TArray<Integer>): string;
var
  stringBuffer: TStringMaker;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        for index := 0 to System.Length(array_) - 1 do begin
            stringBuffer.appendint(array_[index]);
            if (index) < (System.Length(array_)) then begin
                stringBuffer.append(', ');
            end;
        end;
        Exit(stringBuffer.toString());
end;
    

class function TIntArrayUtil.toString(array_: TArray<TArray<Integer>>): string;
var
  stringBuffer: TStringMaker;
  index2: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        for index := 0 to System.Length(array_) - 1 do begin
            stringBuffer.append('{');
            for index2 := 0 to System.Length(array_[index]) - 1 do begin
                stringBuffer.appendint(Integer(Trunc(array_[index][index2])));
                if (index2) < ((System.Length(array_[index])) - (1)) then begin
                    stringBuffer.append(', ');
                end;
            end;
            stringBuffer.append('}');
            if (index) < ((System.Length(array_)) - (1)) then begin
                stringBuffer.append(', '#10'');
            end;
        end;
        Exit(stringBuffer.toString());
end;
    

class function TIntArrayUtil.toString(array_: TArray<TArray<TArray<Integer>>>): string;
var
  stringBuffer: TStringMaker;
  index3: Integer;
  index2: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        for index := 0 to System.Length(array_) - 1 do begin
            stringBuffer.append('{');
            for index2 := 0 to System.Length(array_[index]) - 1 do begin
                stringBuffer.append('{');
                for index3 := 0 to System.Length(array_[index][index2]) - 1 do begin
                    stringBuffer.appendint(Integer(Trunc(array_[index][index2][index3])));
                    if (index3) < ((System.Length(array_[index][index2])) - (1)) then begin
                        stringBuffer.append(', ');
                    end;
                end;
                stringBuffer.append('}');
                if (index2) < ((System.Length(array_[index])) - (1)) then begin
                    stringBuffer.append(', ');
                end;
            end;
            stringBuffer.append('}');
            if (index) < ((System.Length(array_)) - (1)) then begin
                stringBuffer.append(', '#10'');
            end;
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


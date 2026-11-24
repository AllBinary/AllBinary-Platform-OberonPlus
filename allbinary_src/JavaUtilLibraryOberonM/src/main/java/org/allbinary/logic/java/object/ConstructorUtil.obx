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
// package org.allbinary.logic.java.anyType
unit ConstructorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TConstructorUtil = class(TObject)
  public
        constructor Create;
        class function viewAll(myClass: TClass; lineBreak: string): string; static;
        class function view(constructor_: TConstructor; lineBreak: string): string; static;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}
    

constructor TConstructorUtil.Create;
begin
    inherited Create;
end;
    

class function TConstructorUtil.viewAll(myClass: TClass; lineBreak: string): string;
var
  stringBuffer: TStringMaker;
  constructor_: TArray<TConstructor>;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        constructor_ := myClass.getConstructors();
        stringBuffer.append('Constructors: ');
        stringBuffer.append(lineBreak);
        for index := 0 to System.Length(constructor_) - 1 do begin
            stringBuffer.append(TConstructorUtil.view(constructor_[index], lineBreak));
        end;
        Exit(stringBuffer.toString());
end;
    

class function TConstructorUtil.view(constructor_: TConstructor; lineBreak: string): string;
var
  commonSeps_: TCommonSeps;
  stringBuffer: TStringMaker;
  classes: TArray<TClass>;
  index: Integer;
begin
        if (constructor_) <> (nil) then begin
            commonSeps_ := TCommonSeps.getInstance();
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(constructor_.getName());
            classes := constructor_.getParameterTypes();
            for index := 0 to System.Length(classes) - 1 do begin
                stringBuffer.append(commonSeps_.SPACE);
                stringBuffer.append(classes[index].ClassName);
                stringBuffer.append(commonSeps_.COLON);
                stringBuffer.appendint(index);
            end;
            stringBuffer.append(lineBreak);
            Exit(stringBuffer.toString());
        end else begin
            Exit('Constructor Null');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


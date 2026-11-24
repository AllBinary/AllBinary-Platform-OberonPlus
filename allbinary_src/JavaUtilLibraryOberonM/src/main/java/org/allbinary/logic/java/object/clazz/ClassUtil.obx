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
// package org.allbinary.logic.java.anyType.clazz
unit ClassUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TClassUtil = class(TObject)
  public
        constructor Create;
        class function viewAll(anyType: TObject; lineBreak: string): string; overload; static;
        class function viewAll(myClass: TClass; lineBreak: string): string; overload; static;
  end;

implementation
uses
  ConstructorUtil, InterfaceUtil, MethodUtil, StringMaker;


{AB:CODE}
    

constructor TClassUtil.Create;
begin
    inherited Create;
end;
    

class function TClassUtil.viewAll(anyType: TObject; lineBreak: string): string;
begin
        if (anyType) <> (nil) then begin
            Exit(TClassUtil.viewAll(TJava.ToObject(anyType).ClassType, lineBreak));
        end else begin
            Exit('Object Null');
        end;
end;
    

class function TClassUtil.viewAll(myClass: TClass; lineBreak: string): string;
var
  stringBuffer: TStringMaker;
  classes: TArray<TClass>;
  index: Integer;
begin
        if (myClass) <> (nil) then begin
            stringBuffer := TStringMaker.Create();
            classes := myClass.getClasses();
            stringBuffer.append(lineBreak);
            stringBuffer.append('Class: ');
            stringBuffer.append(myClass.ClassName);
            stringBuffer.append(' uses ');
            stringBuffer.appendint(System.Length(classes));
            stringBuffer.append(' other classes');
            stringBuffer.append(lineBreak);
            stringBuffer.append(lineBreak);
            stringBuffer.append('Classes: ');
            stringBuffer.append(lineBreak);
            for index := 0 to System.Length(classes) - 1 do begin
                stringBuffer.append('Class: ');
                stringBuffer.append(classes[index].ClassName);
                stringBuffer.append(lineBreak);
            end;
            stringBuffer.append(TInterfaceUtil.viewAll(myClass, lineBreak));
            stringBuffer.append(lineBreak);
            stringBuffer.append(TConstructorUtil.viewAll(myClass, lineBreak));
            stringBuffer.append(lineBreak);
            stringBuffer.append(TMethodUtil.viewAll(myClass, lineBreak));
            Exit(stringBuffer.toString());
        end else begin
            Exit('Class Null');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


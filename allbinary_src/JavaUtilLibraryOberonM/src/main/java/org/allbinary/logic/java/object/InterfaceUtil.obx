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
unit InterfaceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TInterfaceUtil = class(TObject)
  public
        constructor Create;
        class function viewAll(myClass: TClass; lineBreak: string): string; static;
        class function getClass(interfaceName: string; interfaces: TArray<TClass>): TClass; static;
        class function isImplemented(clazz: TClass; anyType: TObject): Boolean; overload; static;
        class function isImplemented(className: string; anyType: TObject): Boolean; overload; static;
        class function isImplementedView(clazz: TClass; anyType: TObject): string; static;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}
    

constructor TInterfaceUtil.Create;
begin
    inherited Create;
end;
    

class function TInterfaceUtil.viewAll(myClass: TClass; lineBreak: string): string;
var
  stringBuffer: TStringMaker;
  interfaces: TArray<TClass>;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        interfaces := myClass.getInterfaces();
        stringBuffer.append(lineBreak);
        stringBuffer.append('Interfaces: ');
        stringBuffer.append(lineBreak);
        for index := 0 to System.Length(interfaces) - 1 do begin
            stringBuffer.append('Interface: ');
            stringBuffer.append(interfaces[index].ClassName);
            stringBuffer.append(lineBreak);
        end;
        Exit(stringBuffer.toString());
end;
    

class function TInterfaceUtil.getClass(interfaceName: string; interfaces: TArray<TClass>): TClass;
var
  index: Integer;
begin
        if (((interfaceName) <> ('')) and ((interfaces) <> (nil))) and ((System.Length(interfaces)) > (0)) then begin
            for index := 0 to System.Length(interfaces) - 1 do begin
                if (interfaces[index].ClassName.indexOf(interfaceName)) >= (0) then begin
                    Exit(interfaces[index]);
                end;
            end;
        end;
        Exit(nil);
end;
    

class function TInterfaceUtil.isImplemented(clazz: TClass; anyType: TObject): Boolean;
var
  classes: TArray<TClass>;
  index: Integer;
begin
        classes := TJava.ToObject(anyType).ClassType.getInterfaces();
        for index := 0 to System.Length(classes) - 1 do begin
            if (clazz.ClassName.compareTo(classes[index].ClassName)) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

class function TInterfaceUtil.isImplemented(className: string; anyType: TObject): Boolean;
var
  classes: TArray<TClass>;
  index: Integer;
begin
        classes := TJava.ToObject(anyType).ClassType.getInterfaces();
        for index := 0 to System.Length(classes) - 1 do begin
            if (classes[index].ClassName.indexOf(className)) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

class function TInterfaceUtil.isImplementedView(clazz: TClass; anyType: TObject): string;
var
  stringBuffer: TStringMaker;
  classes: TArray<TClass>;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        classes := TJava.ToObject(anyType).ClassType.getInterfaces();
        stringBuffer.append('isImplementedView: '#10'');
        for index := 0 to System.Length(classes) - 1 do begin
            stringBuffer.append(clazz.ClassName);
            stringBuffer.append(' should be = ');
            stringBuffer.append(classes[index].ClassName);
            stringBuffer.append(classes[index].ClassName);
            stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


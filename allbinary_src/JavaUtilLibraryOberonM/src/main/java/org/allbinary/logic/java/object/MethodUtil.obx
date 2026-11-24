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
unit MethodUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMethodUtil = class(TObject)
  public
        constructor Create;
        class function viewAll(myClass: TClass; lineBreak: string): string; static;
  end;

implementation
uses
  ParamsUtil, StringMaker;


{AB:CODE}
    

constructor TMethodUtil.Create;
begin
    inherited Create;
end;
    

class function TMethodUtil.viewAll(myClass: TClass; lineBreak: string): string;
var
  stringBuffer: TStringMaker;
  method: TArray<TMethod>;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        method := myClass.getMethods();
        stringBuffer.append('Methods: ');
        stringBuffer.append(lineBreak);
        for index := 0 to System.Length(method) - 1 do begin
            stringBuffer.append(method[index].getReturnType().getName());
            stringBuffer.append(' ');
            stringBuffer.append(method[index].getName());
            stringBuffer.append('(');
            TParamsUtil.viewParams(method[index].getParameterTypes());
            stringBuffer.append(')');
            stringBuffer.append(lineBreak);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


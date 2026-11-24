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
unit ParamsUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TParamsUtil = class(TObject)
  public
        constructor Create;
        class function viewParams(params: TArray<TClass>): string; static;
  end;

implementation
uses
  StringMaker;


{AB:CODE}
    

constructor TParamsUtil.Create;
begin
    inherited Create;
end;
    

class function TParamsUtil.viewParams(params: TArray<TClass>): string;
var
  stringBuffer: TStringMaker;
  index: Integer;
begin
        if (params) <> (nil) then begin
            stringBuffer := TStringMaker.Create();
            for index := 0 to System.Length(params) - 1 do begin
                stringBuffer.append(' ');
                stringBuffer.append(params[index].ClassName);
            end;
            Exit(stringBuffer.toString());
        end else begin
            Exit('Params Null');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


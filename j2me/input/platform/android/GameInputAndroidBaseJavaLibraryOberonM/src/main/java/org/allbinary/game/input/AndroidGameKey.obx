// Generated Code Do Not Modify
// package org.allbinary.game.input
unit AndroidGameKey;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input;

type
  {AB:TYPES}
  TAndroidGameKey = class(TInput)
  public
        constructor Create(keyCode: Integer; name: string);
        function toString: string; override;
        class function getString(keyCode: Integer): string; static;
  end;

implementation
uses
  InputFactory, StringUtil;


{AB:CODE}
    

constructor TAndroidGameKey.Create(keyCode: Integer; name: string);
var
  inputFactory_: TInputFactory;
begin
        inherited Create(keyCode, name);
        inputFactory_ := TInputFactory.getInstance();
        inputFactory_.inputIntegerArray[Self.getId()] := Self;
end;
    

function TAndroidGameKey.toString: string;
begin
        Exit('AndroidGameKey: ' + inherited toString());
end;
    

class function TAndroidGameKey.getString(keyCode: Integer): string;
var
  input_: TInput;
begin
        input_ := TInputFactory.getInstance().getInstanceById(keyCode);
        if (input_) <> (nil) then begin
            Exit(input_.getName());
        end else begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


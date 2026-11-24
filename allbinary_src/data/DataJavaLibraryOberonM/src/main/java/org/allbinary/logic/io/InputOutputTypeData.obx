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
// package org.allbinary.logic.io
unit InputOutputTypeData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TInputOutputTypeData = class(TObject)
  public
    NAME: string;
    FILE_: string;
    RESPONSE: string;
    DB: string;
    JSP: string;
    JSP_FRAGMENT: string;
    PHP: string;
    ASP: string;
    PL: string;
    DEFAULT: string;
    DEFAULT_FRAGMENT: string;
    class var instance: TInputOutputTypeData;
    procedure InitFields;
        class function getInstance: TInputOutputTypeData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TInputOutputTypeData.InitFields;
begin
  Self.NAME := 'INPUT_OUTPUT_TYPE_NAME';
  Self.FILE_ := 'INPUT_OUTPUT_TYPE_FILE';
  Self.RESPONSE := 'INPUT_OUTPUT_TYPE_RESPONSE';
  Self.DB := 'INPUT_OUTPUT_TYPE_DB';
  Self.JSP := 'jsp';
  Self.JSP_FRAGMENT := 'jspf';
  Self.PHP := 'php';
  Self.ASP := 'asp';
  Self.PL := 'pl';
  Self.DEFAULT := Self.JSP;
  Self.DEFAULT_FRAGMENT := Self.JSP_FRAGMENT;
end;
    

class function TInputOutputTypeData.getInstance: TInputOutputTypeData;
begin
        Exit(TInputOutputTypeData.instance);
end;
    

constructor TInputOutputTypeData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TInputOutputTypeData.instance := TInputOutputTypeData.Create();
  {AB:END}

end.


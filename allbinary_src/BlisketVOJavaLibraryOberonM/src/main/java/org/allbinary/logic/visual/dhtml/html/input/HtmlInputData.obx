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
// package org.allbinary.logic.visual.dhtml.html.input
unit HtmlInputData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THtmlInputData = class(TObject)
  public
    TEXT: string;
    RADIO: string;
    CHECKBOX: string;
    HIDDEN: string;
    IMAGE: string;
    PASSWORD: string;
    RESET: string;
    SUBMIT: string;
    TYPES: TArray<string>;
    class var instance: THtmlInputData;
    procedure InitFields;
    constructor Create;
        class function getInstance: THtmlInputData; static;
  end;

implementation

{AB:CODE}

procedure THtmlInputData.InitFields;
begin
  Self.TEXT := 'text';
  Self.RADIO := 'radio';
  Self.CHECKBOX := 'checkbox';
  Self.HIDDEN := 'hidden';
  Self.IMAGE := 'image';
  Self.PASSWORD := 'password';
  Self.RESET := 'reset';
  Self.SUBMIT := 'submit';
  Self.TYPES := TArray<string>.Create(Self.TEXT, Self.RADIO, Self.CHECKBOX, Self.HIDDEN, Self.IMAGE, Self.PASSWORD, Self.RADIO, Self.RESET, Self.SUBMIT);
end;

constructor THtmlInputData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function THtmlInputData.getInstance: THtmlInputData;
begin
        Exit(THtmlInputData.instance);
end;

initialization
  {AB:INITIALIZATION}
  THtmlInputData.instance := THtmlInputData.Create();
  {AB:END}

end.


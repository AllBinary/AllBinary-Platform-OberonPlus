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
unit HtmlRadioInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HtmlValueInput;

type
  {AB:TYPES}
  THtmlRadioInput = class(THtmlValueInput)
  public
    CHECKED: string;
    procedure InitFields;
        constructor Create(before: string; name: string; value: string; after: string);
        procedure setSelected; virtual;
  end;

implementation
uses
  HtmlInputData, BooleanFactory;


{AB:CODE}

procedure THtmlRadioInput.InitFields;
begin
  Self.CHECKED := 'checked';
end;
    

constructor THtmlRadioInput.Create(before: string; name: string; value: string; after: string);
begin
        inherited Create(before, THtmlInputData.getInstance().RADIO, name, value, after);
        InitFields;
end;
    

procedure THtmlRadioInput.setSelected;
begin
        inherited addAttribute(Self.CHECKED, TBooleanFactory.getInstance().TRUE_STRING);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


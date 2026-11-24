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
unit HtmlTextInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HtmlLengthInput;

type
  {AB:TYPES}
  THtmlTextInput = class(THtmlLengthInput)
  public
        constructor Create(before: string; name: string; value: string; after: string);
  end;

implementation
uses
  HtmlInputData;


{AB:CODE}
    

constructor THtmlTextInput.Create(before: string; name: string; value: string; after: string);
begin
        inherited Create(before, THtmlInputData.getInstance().TEXT, name, value, after);
        Self.setSize(19);
        Self.setMaxLength(60);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


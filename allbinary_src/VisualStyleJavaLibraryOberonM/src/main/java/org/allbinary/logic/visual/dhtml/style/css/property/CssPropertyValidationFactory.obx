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
// package org.allbinary.logic.visual.dhtml.style.css.property
unit CssPropertyValidationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationInterface, Node;

type
  {AB:TYPES}
  TCssPropertyValidationFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(node_: TNode): IValidationInterface; static;
  end;

implementation
uses
  FontFamilyValidation;


{AB:CODE}
    

constructor TCssPropertyValidationFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TCssPropertyValidationFactory.getInstance(node_: TNode): IValidationInterface;
begin
        Exit((TJava.ToObject(TFontFamilyValidation.Create(node_)) as IValidationInterface));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


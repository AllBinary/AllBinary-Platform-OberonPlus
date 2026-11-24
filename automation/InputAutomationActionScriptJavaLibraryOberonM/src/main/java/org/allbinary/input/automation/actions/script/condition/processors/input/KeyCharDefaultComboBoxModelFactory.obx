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
// package org.allbinary.input.automation.actions.script.condition.processors.input
unit KeyCharDefaultComboBoxModelFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DefaultComboBoxModel;

type
  {AB:TYPES}
  TKeyCharDefaultComboBoxModelFactory = class(TObject)
  public
        constructor Create;
        class function getInstance: TDefaultComboBoxModel; static;
  end;

implementation
uses
  KeyStroke, KeyStrokeMap, KeySingletonFactory;


{AB:CODE}
    

constructor TKeyCharDefaultComboBoxModelFactory.Create;
begin
    inherited Create;
end;
    

class function TKeyCharDefaultComboBoxModelFactory.getInstance: TDefaultComboBoxModel;
var
  defaultComboBoxModel_: TDefaultComboBoxModel;
  keyArray: TArray<Integer>;
  nextKey: Integer;
  keyStroke_: TKeyStroke;
  keyChar: WideChar;
  index: Integer;
begin
        defaultComboBoxModel_ := TDefaultComboBoxModel.Create();
        keyArray := TKeySingletonFactory.getArray();
        for index := 0 to System.Length(keyArray) - 1 do begin
            nextKey := keyArray[index];
            keyStroke_ := TKeyStroke.getKeyStroke((nextKey), 0);
            keyChar := TKeyStrokeMap.getChar(keyStroke_);
            defaultComboBoxModel_.addElement(TJava.ToString(keyChar));
        end;
        Exit(defaultComboBoxModel_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


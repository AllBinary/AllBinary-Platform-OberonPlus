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
unit KeyNameDefaultComboBoxModelFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DefaultComboBoxModel;

type
  {AB:TYPES}
  TKeyNameDefaultComboBoxModelFactory = class(TObject)
  public
        constructor Create;
        class function getInstance: TDefaultComboBoxModel; static;
  end;

implementation
uses
  KeySingletonFactory;


{AB:CODE}
    

constructor TKeyNameDefaultComboBoxModelFactory.Create;
begin
    inherited Create;
end;
    

class function TKeyNameDefaultComboBoxModelFactory.getInstance: TDefaultComboBoxModel;
var
  defaultComboBoxModel_: TDefaultComboBoxModel;
  keyArray: TArray<Integer>;
  keyAsString: string;
  index: Integer;
begin
        defaultComboBoxModel_ := TDefaultComboBoxModel.Create();
        keyArray := TKeySingletonFactory.getArray();
        for index := 0 to System.Length(keyArray) - 1 do begin
            keyAsString := TKeyEvent.getKeyText(keyArray[index]);
            defaultComboBoxModel_.addElement(keyAsString);
        end;
        Exit(defaultComboBoxModel_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


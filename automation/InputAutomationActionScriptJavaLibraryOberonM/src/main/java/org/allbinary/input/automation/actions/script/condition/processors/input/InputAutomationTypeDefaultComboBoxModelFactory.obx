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
unit InputAutomationTypeDefaultComboBoxModelFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DefaultComboBoxModel;

type
  {AB:TYPES}
  TInputAutomationTypeDefaultComboBoxModelFactory = class(TObject)
  public
        constructor Create;
        class function getInstance: TDefaultComboBoxModel; static;
  end;

implementation
uses
  InputRobotFactory;


{AB:CODE}
    

constructor TInputAutomationTypeDefaultComboBoxModelFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TInputAutomationTypeDefaultComboBoxModelFactory.getInstance: TDefaultComboBoxModel;
var
  defaultComboBoxModel_: TDefaultComboBoxModel;
  set_: ISet;
  nameArray: TArray<TObject>;
  size: Integer;
  index: Integer;
begin
        defaultComboBoxModel_ := TDefaultComboBoxModel.Create();
        set_ := TInputRobotFactory.getInstance().get().keySet();
        nameArray := set_.toArray();
        size := System.Length(nameArray);
        for index := 0 to size - 1 do begin
            defaultComboBoxModel_.addElement(TJava.UnboxString(TJava.ToObject(nameArray[index])));
        end;
        Exit(defaultComboBoxModel_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit ProfileActionScriptInputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Node, ProfileActionScriptInputInterface;

type
  {AB:TYPES}
  TProfileActionScriptInputFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(node_: TNode): IProfileActionScriptInputInterface; static;
  end;

implementation
uses
  KeyboardActionScriptInputData, MouseActionScriptInputData, MouseActionScriptInput, KeyboardActionScriptInput, DomSearchHelper;


{AB:CODE}
    

constructor TProfileActionScriptInputFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TProfileActionScriptInputFactory.getInstance(node_: TNode): IProfileActionScriptInputInterface;
var
  profileActionScriptInputInterface_: IProfileActionScriptInputInterface;
begin
        profileActionScriptInputInterface_ := nil;
        if not TJava.IsNull(TDomSearchHelper.getNodeNoThrow(TKeyboardActionScriptInputData.NAME, node_.getChildNodes())) then begin
            profileActionScriptInputInterface_ := TKeyboardActionScriptInput.Create(node_);
        end else if not TJava.IsNull(TDomSearchHelper.getNodeNoThrow(TMouseActionScriptInputData.NAME, node_.getChildNodes())) then begin
            profileActionScriptInputInterface_ := TMouseActionScriptInput.Create(node_);
        end else begin
            raise SysUtils.Exception.Create('No Such ActionScript Input');
        end;
        Exit(profileActionScriptInputInterface_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


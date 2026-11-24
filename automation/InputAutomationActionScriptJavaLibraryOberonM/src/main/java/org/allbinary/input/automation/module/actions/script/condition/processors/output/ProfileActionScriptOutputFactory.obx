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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output
unit ProfileActionScriptOutputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Node, ProfileActionScriptOutputInterface;

type
  {AB:TYPES}
  TProfileActionScriptOutputFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(node_: TNode): IProfileActionScriptOutputInterface; static;
  end;

implementation
uses
  ImageActionScriptOutputData, ImageActionScriptOutput, DomSearchHelper;


{AB:CODE}
    

constructor TProfileActionScriptOutputFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TProfileActionScriptOutputFactory.getInstance(node_: TNode): IProfileActionScriptOutputInterface;
var
  profileActionScriptOutputInterface_: IProfileActionScriptOutputInterface;
begin
        profileActionScriptOutputInterface_ := nil;
        if not TJava.IsNull(TDomSearchHelper.getNodeNoThrow(TImageActionScriptOutputData.NAME, node_.getChildNodes())) then begin
            profileActionScriptOutputInterface_ := TImageActionScriptOutput.Create(node_);
        end else begin
            raise SysUtils.Exception.Create('No Such ActionScript Output');
        end;
        Exit(profileActionScriptOutputInterface_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


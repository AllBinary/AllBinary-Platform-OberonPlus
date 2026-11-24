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
unit BasicProfileActionScriptOutput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicProfileActionScriptProcessor, Document, Node, ProfileActionScriptOutputInterface;

type
  {AB:TYPES}
  TBasicProfileActionScriptOutput = class(TBasicProfileActionScriptProcessor, IProfileActionScriptOutputInterface)
  public
    function JavaObject: TObject;
        constructor Create(label_: string; node_: TNode); overload;
        constructor Create(label_: string); overload;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  GenericProfileActionScriptOutputData;


{AB:CODE}

function TBasicProfileActionScriptOutput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicProfileActionScriptOutput.Create(label_: string; node_: TNode);
begin
        inherited Create(label_, node_);
end;
    

constructor TBasicProfileActionScriptOutput.Create(label_: string);
begin
        inherited Create(label_);
end;
    

// throws Exception
function TBasicProfileActionScriptOutput.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(TGenericProfileActionScriptOutputData.NAME);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


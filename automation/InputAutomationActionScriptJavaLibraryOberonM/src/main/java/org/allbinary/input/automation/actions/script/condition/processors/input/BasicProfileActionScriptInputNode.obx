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
unit BasicProfileActionScriptInputNode;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document, Node;

type
  {AB:TYPES}
  TBasicProfileActionScriptInputNode = class(TObject)
  public
        constructor Create(node_: TNode); overload;
        constructor Create; overload;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  GenericProfileActionScriptInputData, DomSearchHelper;


{AB:CODE}
    

constructor TBasicProfileActionScriptInputNode.Create(node_: TNode);
var
  actionNode: TNode;
begin
    inherited Create;
        actionNode := TDomSearchHelper.getNode(TGenericProfileActionScriptInputData.NAME, node_.getChildNodes());
end;
    

constructor TBasicProfileActionScriptInputNode.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TBasicProfileActionScriptInputNode.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(TGenericProfileActionScriptInputData.NAME);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


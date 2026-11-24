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
// package org.allbinary.input.automation.actions.script.condition.processors
unit BasicProfileActionScriptProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ProfileActionScriptItem, Document, Node, ProfileActionScriptProcessorInterface;

type
  {AB:TYPES}
  TBasicProfileActionScriptProcessor = class(TProfileActionScriptItem, IProfileActionScriptProcessorInterface)
  public
    function JavaObject: TObject;
        constructor Create(label_: string; node_: TNode); overload;
        constructor Create(label_: string); overload;
        procedure actionPerformed(actionEvent_: TActionEvent); virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  GenericProfileActionScriptProcessorData, JTreeInterfaceFactory, ProfileActionScriptConditionInterface;


{AB:CODE}

function TBasicProfileActionScriptProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicProfileActionScriptProcessor.Create(label_: string; node_: TNode);
begin
        inherited Create(label_, node_);
end;
    

constructor TBasicProfileActionScriptProcessor.Create(label_: string);
begin
        inherited Create(label_);
end;
    

procedure TBasicProfileActionScriptProcessor.actionPerformed(actionEvent_: TActionEvent);
var
  profileActionScriptConditionInterface_: IProfileActionScriptConditionInterface;
begin
        inherited actionPerformed(actionEvent_);
        if (actionEvent_.getActionCommand().compareTo(DELETE_)) = (0) then begin
            if (TJava.ToObject(Self.getParent()) is IProfileActionScriptConditionInterface) then begin
                profileActionScriptConditionInterface_ := (TJava.ToObject(Self.getParent()) as IProfileActionScriptConditionInterface);
                profileActionScriptConditionInterface_.removeProcessor((TJava.ToObject(Self) as IProfileActionScriptProcessorInterface));
                TJTreeInterfaceFactory.getInstance().getJTreeInterface().updateJTree();
            end;
        end;
end;
    

// throws Exception
function TBasicProfileActionScriptProcessor.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(TGenericProfileActionScriptProcessorData.NAME);
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


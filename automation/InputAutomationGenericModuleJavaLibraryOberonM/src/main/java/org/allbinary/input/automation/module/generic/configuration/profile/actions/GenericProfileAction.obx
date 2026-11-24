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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions
unit GenericProfileAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, GenericProfileActionScript, LogUtil, Document, Node, GenericProfileActionJPanel;

type
  {AB:TYPES}
  TGenericProfileAction = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    name: string;
    genericProfileActionScript: TGenericProfileActionScript;
    genericProfileActionJPanel: TGenericProfileActionJPanel;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(genericProfileActionJPanel_: TGenericProfileActionJPanel; node_: TNode); overload;
        constructor Create(name: string); overload;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getGenericProfileActionScript: TGenericProfileActionScript; virtual;
        procedure setGenericProfileActionScript(genericProfileActionScript_: TGenericProfileActionScript); virtual;
  end;

implementation
uses
  GenericProfileActionData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil;


{AB:CODE}

procedure TGenericProfileAction.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;

function TGenericProfileAction.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericProfileAction.Create(genericProfileActionJPanel_: TGenericProfileActionJPanel; node_: TNode);
var
  actionNameNode: TNode;
begin
    inherited Create;
    InitFields;
        actionNameNode := TDomSearchHelper.getNode(TGenericProfileActionData.NAME, node_.getChildNodes());
        if (actionNameNode) <> (nil) then begin
            Self.name := TDomNodeHelper.getTextNodeValue(actionNameNode);
        end else begin
            raise SysUtils.Exception.Create('Profile Action Name Node Null');
        end;
        Self.setGenericProfileActionScript(TGenericProfileActionScript.Create(Self.genericProfileActionJPanel, node_));
end;
    

constructor TGenericProfileAction.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.setGenericProfileActionScript(TGenericProfileActionScript.Create(Self.genericProfileActionJPanel));
end;
    

function TGenericProfileAction.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TGenericProfileAction.setName(name: string);
begin
        Self.name := name;
end;
    

function TGenericProfileAction.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TGenericProfileActionData.NAME), TJava.Box(Self.name));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TGenericProfileAction.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createNodeWithValueNodes(document_, TGenericProfileActionData.NAME, Self.toHashMap());
        node_.appendChild(Self.getGenericProfileActionScript().toXmlNode(document_));
        Exit(node_);
end;
    

function TGenericProfileAction.getGenericProfileActionScript: TGenericProfileActionScript;
begin
        Exit(Self.genericProfileActionScript);
end;
    

procedure TGenericProfileAction.setGenericProfileActionScript(genericProfileActionScript_: TGenericProfileActionScript);
begin
        Self.genericProfileActionScript := genericProfileActionScript_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


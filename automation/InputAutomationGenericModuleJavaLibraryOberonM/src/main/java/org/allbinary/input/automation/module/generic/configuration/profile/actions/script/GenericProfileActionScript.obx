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
// package org.allbinary.input.automation.module.generic.configuration.profile.actions.script
unit GenericProfileActionScript;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, ProfileActionScriptNodeInterface, GenericProfileActionJPanel, LogUtil, CommonStrings, Document, Node;

type
  {AB:TYPES}
  TGenericProfileActionScript = class(TDefaultMutableTreeNode, IProfileActionScriptNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    genericProfileActionJPanel: TGenericProfileActionJPanel;
    profileActionConditionInterfaceVector: TBasicArrayList;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(genericProfileActionJPanel_: TGenericProfileActionJPanel; node_: TNode); overload;
        constructor Create(genericProfileActionJPanel_: TGenericProfileActionJPanel); overload;
        procedure addCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface); virtual;
        procedure removeCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface); virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getProfileActionConditionInterfaceVector: TBasicArrayList; virtual;
        procedure setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector: TBasicArrayList); virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  BasicArrayListD, DomSearchHelper, ProfileActionScriptConditionFactory, ProfileActionScriptConditionInterface, GenericProfileActionData, StdUtil, NodeList;


{AB:CODE}

procedure TGenericProfileActionScript.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TGenericProfileActionScript.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericProfileActionScript.Create(genericProfileActionJPanel_: TGenericProfileActionJPanel; node_: TNode);
var
  actionScriptNode: TNode;
  nodeList_: TNodeList;
  actionConditionNode: TNode;
  index: Integer;
begin
        inherited Create(TGenericProfileActionScript.NAME);
        InitFields;
        Self.genericProfileActionJPanel := genericProfileActionJPanel_;
        Self.setProfileActionConditionInterfaceVector(TBasicArrayListD.Create());
        actionScriptNode := TDomSearchHelper.getNode(TGenericProfileActionData.SCRIPT, node_.getChildNodes());
        if (actionScriptNode) <> (nil) then begin
            nodeList_ := actionScriptNode.getChildNodes();
            for index := 0 to nodeList_.getLength() - 1 do begin
                actionConditionNode := nodeList_.item(index);
                if (actionConditionNode.getNodeType()) = (TNode.ELEMENT_NODE) then begin
                    Self.addCondition(TProfileActionScriptConditionFactory.getInstance(actionConditionNode));
                end;
            end;
        end else begin
            raise SysUtils.Exception.Create('Profile Action Script Node Null');
        end;
end;
    

constructor TGenericProfileActionScript.Create(genericProfileActionJPanel_: TGenericProfileActionJPanel);
begin
    inherited Create;
    InitFields;
        Self.genericProfileActionJPanel := genericProfileActionJPanel_;
        Self.setProfileActionConditionInterfaceVector(TBasicArrayListD.Create());
end;
    

procedure TGenericProfileActionScript.addCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'addCondition');
        Self.getProfileActionConditionInterfaceVector().add(TJava.ToObject(profileActionScriptNodeInterface_));
        Self.add(profileActionScriptNodeInterface_);
end;
    

procedure TGenericProfileActionScript.removeCondition(profileActionScriptNodeInterface_: IProfileActionScriptNodeInterface);
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'removeCondition');
        Self.getProfileActionConditionInterfaceVector().remove(TJava.ToObject(profileActionScriptNodeInterface_));
        Self.remove(profileActionScriptNodeInterface_);
end;
    

function TGenericProfileActionScript.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

function TGenericProfileActionScript.getProfileActionConditionInterfaceVector: TBasicArrayList;
begin
        Exit(Self.profileActionConditionInterfaceVector);
end;
    

procedure TGenericProfileActionScript.setProfileActionConditionInterfaceVector(profileActionConditionInterfaceVector: TBasicArrayList);
begin
        Self.profileActionConditionInterfaceVector := profileActionConditionInterfaceVector;
end;
    

// throws Exception
function TGenericProfileActionScript.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  vector: TBasicArrayList;
  size: Integer;
  profileActionConditionInterface: IProfileActionScriptConditionInterface;
  index: Integer;
begin
        node_ := document_.createElement(TGenericProfileActionData.SCRIPT);
        vector := Self.getProfileActionConditionInterfaceVector();
        size := vector.size();
        for index := 0 to size - 1 do begin
            profileActionConditionInterface := (TJava.ToObject(vector.get(index)) as IProfileActionScriptConditionInterface);
            node_.appendChild(profileActionConditionInterface.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  TGenericProfileActionScript.NAME := 'Root';
  {AB:END}

end.


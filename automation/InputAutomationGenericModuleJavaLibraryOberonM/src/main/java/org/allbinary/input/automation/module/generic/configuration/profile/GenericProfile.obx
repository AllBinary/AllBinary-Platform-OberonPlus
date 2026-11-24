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
// package org.allbinary.input.automation.module.generic.configuration.profile
unit GenericProfile;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, GenericProfileActions, LogUtil, Document, Node, GenericProfileDataWorkerType;

type
  {AB:TYPES}
  TGenericProfile = class(TObject)
  public
    logUtil: TLogUtil;
    name: string;
    vector: TBasicArrayList;
    genericProfileActions: TGenericProfileActions;
    procedure InitFields;
        constructor Create(node_: TNode); overload;
        constructor Create(name: string); overload;
        function getGenericProfileDataWorkerTypeVector: TBasicArrayList; virtual;
        procedure add(genericProfileDataWorkerType_: TGenericProfileDataWorkerType); virtual;
        procedure remove(genericProfileDataWorkerType_: TGenericProfileDataWorkerType); virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function getGenericProfileActions: TGenericProfileActions; virtual;
        procedure setGenericProfileActions(genericProfileActions_: TGenericProfileActions); virtual;
  end;

implementation
uses
  GenericProfileDataWorkerData, GenericProfileData, BasicArrayListD, DomNodeHelper, ModDomHelper, StdUtil, NodeList;


{AB:CODE}

procedure TGenericProfile.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TGenericProfile.Create(node_: TNode);
var
  nodeList_: TNodeList;
  profileNode: TNode;
  genericProfileDataWorkerType_: TGenericProfileDataWorkerType;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.setName(TDomNodeHelper.getTextNodeValue(node_));
        Self.vector := TBasicArrayListD.Create();
        nodeList_ := node_.getChildNodes();
        Self.logUtil.putF('Name: ' + Self.getName() + ' Child Nodes: ' + TJava.ToString(nodeList_.getLength()), TJava.Box(Self), 'Contructor');
        for index := 0 to nodeList_.getLength() - 1 do begin
            profileNode := nodeList_.item(index);
            if (profileNode.getNodeName().compareTo(TGenericProfileDataWorkerData.NAME)) = (0) then begin
                genericProfileDataWorkerType_ := TGenericProfileDataWorkerType.getInstance(profileNode);
                Self.logUtil.putF('Adding GenericProfileDataWorkerType: ' + genericProfileDataWorkerType_.toString(), TJava.Box(Self), 'Contructor');
                Self.vector.add(TJava.Box(genericProfileDataWorkerType_));
            end;
        end;
end;
    

constructor TGenericProfile.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.vector := TBasicArrayListD.Create();
end;
    

function TGenericProfile.getGenericProfileDataWorkerTypeVector: TBasicArrayList;
begin
        Exit(Self.vector);
end;
    

procedure TGenericProfile.add(genericProfileDataWorkerType_: TGenericProfileDataWorkerType);
begin
        if not (Self.vector.contains(TJava.Box(genericProfileDataWorkerType_))) then begin
            Self.vector.add(TJava.Box(genericProfileDataWorkerType_));
        end;
end;
    

procedure TGenericProfile.remove(genericProfileDataWorkerType_: TGenericProfileDataWorkerType);
begin
        Self.vector.remove(genericProfileDataWorkerType_);
end;
    

// throws Exception
function TGenericProfile.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  size: Integer;
  genericProfileDataWorkerType_: TGenericProfileDataWorkerType;
  index: Integer;
begin
        node_ := TModDomHelper.createTextNode(document_, TGenericProfileData.NAME, Self.name);
        size := Self.vector.size();
        for index := 0 to size - 1 do begin
            genericProfileDataWorkerType_ := TGenericProfileDataWorkerType(TJava.ToObject(Self.vector.get(index)));
            node_.appendChild(genericProfileDataWorkerType_.toXmlNode(document_));
        end;
        Exit(node_);
end;
    

function TGenericProfile.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TGenericProfile.setName(name: string);
begin
        Self.name := name;
end;
    

function TGenericProfile.getGenericProfileActions: TGenericProfileActions;
begin
        Exit(Self.genericProfileActions);
end;
    

procedure TGenericProfile.setGenericProfileActions(genericProfileActions_: TGenericProfileActions);
begin
        Self.genericProfileActions := genericProfileActions_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


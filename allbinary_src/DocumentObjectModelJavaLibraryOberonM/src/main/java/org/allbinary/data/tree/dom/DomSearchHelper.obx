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
// package org.allbinary.data.tree.dom
unit DomSearchHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Node, NodeList;

type
  {AB:TYPES}
  TDomSearchHelper = class(TObject)
  public
        constructor Create;
        class function getNodeNoThrow(nodeName: string; nodeList_: TNodeList): TNode; static;
        class function getNode(nodeName: string; nodeList_: TNodeList): TNode; static;
        class function getChildNodeList(nodeName: string; nodeList_: TNodeList): TNodeList; static;
        class function getAllNodes(nodeName: string; nodeList_: TNodeList): TBasicArrayList; static;
        class function getAllNodesNoThrow(nodeName: string; nodeList_: TNodeList): TBasicArrayList; static;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}
    

constructor TDomSearchHelper.Create;
begin
    inherited Create;
end;
    

class function TDomSearchHelper.getNodeNoThrow(nodeName: string; nodeList_: TNodeList): TNode;
var
  numberOfNodes: Integer;
  node_: TNode;
  index: Integer;
begin
        numberOfNodes := nodeList_.getLength();
        for index := 0 to numberOfNodes - 1 do begin
            node_ := nodeList_.item(index);
            if (node_.getNodeName().compareTo(nodeName)) = (0) then begin
                Exit(node_);
            end;
        end;
        Exit(nil);
end;
    

// throws Exception
class function TDomSearchHelper.getNode(nodeName: string; nodeList_: TNodeList): TNode;
var
  node_: TNode;
begin
        node_ := TDomSearchHelper.getNodeNoThrow(nodeName, nodeList_);
        if (node_) <> (nil) then begin
            Exit(node_);
        end else begin
            raise SysUtils.Exception.Create(nodeName + ' Node Not Found in search');
        end;
end;
    

// throws Exception
class function TDomSearchHelper.getChildNodeList(nodeName: string; nodeList_: TNodeList): TNodeList;
var
  node_: TNode;
begin
        node_ := TDomSearchHelper.getNode(nodeName, nodeList_);
        Exit(node_.getChildNodes());
end;
    

// throws Exception
class function TDomSearchHelper.getAllNodes(nodeName: string; nodeList_: TNodeList): TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TDomSearchHelper.getAllNodesNoThrow(nodeName, nodeList_);
        if (vector) = (nil) then begin
            raise SysUtils.Exception.Create(nodeName + ' Node Not Found in search');
        end else begin
            Exit(vector);
        end;
end;
    

class function TDomSearchHelper.getAllNodesNoThrow(nodeName: string; nodeList_: TNodeList): TBasicArrayList;
var
  nodeVector: TBasicArrayList;
  numberOfNodes: Integer;
  node_: TNode;
  index: Integer;
begin
        nodeVector := TBasicArrayListD.Create();
        numberOfNodes := nodeList_.getLength();
        for index := 0 to numberOfNodes - 1 do begin
            node_ := nodeList_.item(index);
            if (node_.getNodeName().compareTo(nodeName)) = (0) then begin
                nodeVector.add(TJava.Box(node_));
            end;
        end;
        Exit(nodeVector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


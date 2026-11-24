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
unit DomNodeHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Node, NodeList;

type
  {AB:TYPES}
  TDomNodeHelper = class(TObject)
  public
        constructor Create;
        class function getFirstChildElement(parentNode: TNode): TNode; static;
        class function getTextNodeValue(node_: TNode): string; overload; static;
        class function getTextNodeValue(nodeName: string; nodeList_: TNodeList): string; overload; static;
        class function getTextNodesValue(node_: TNode): string; static;
  end;

implementation
uses
  DomSearchHelper, StringMaker, StringUtil;


{AB:CODE}
    

constructor TDomNodeHelper.Create;
begin
    inherited Create;
end;
    

class function TDomNodeHelper.getFirstChildElement(parentNode: TNode): TNode;
var
  node_: TNode;
  nodeList_: TNodeList;
  index: Integer;
begin
        node_ := parentNode.getFirstChild();
        if ((node_) <> (nil)) and ((node_.getNodeType()) <> (TNode.ELEMENT_NODE)) then begin
            nodeList_ := parentNode.getChildNodes();
            for index := 0 to nodeList_.getLength() - 1 do begin
                node_ := nodeList_.item(index);
                if (node_.getNodeType()) = (1) then begin
                    Break;
                end;
            end;
        end;
        Exit(node_);
end;
    

class function TDomNodeHelper.getTextNodeValue(node_: TNode): string;
var
  nodeTextNode: TNode;
begin
        nodeTextNode := node_.getFirstChild();
        if (nodeTextNode) <> (nil) then begin
            Exit(nodeTextNode.getNodeValue());
        end else begin
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        end;
end;
    

// throws Exception
class function TDomNodeHelper.getTextNodeValue(nodeName: string; nodeList_: TNodeList): string;
var
  node_: TNode;
begin
        node_ := TDomSearchHelper.getNode(nodeName, nodeList_);
        Exit(TDomNodeHelper.getTextNodeValue(node_));
end;
    

class function TDomNodeHelper.getTextNodesValue(node_: TNode): string;
var
  stringBuffer: TStringMaker;
  nodeList_: TNodeList;
  nodeTextNode: TNode;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        nodeList_ := node_.getChildNodes();
        for index := 0 to nodeList_.getLength() - 1 do begin
            nodeTextNode := nodeList_.item(index);
            if (nodeTextNode.getNodeType()) = (TNode.TEXT_NODE) then begin
                if (nodeTextNode) <> (nil) then begin
                    stringBuffer.append(nodeTextNode.getNodeValue());
                end;
            end;
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


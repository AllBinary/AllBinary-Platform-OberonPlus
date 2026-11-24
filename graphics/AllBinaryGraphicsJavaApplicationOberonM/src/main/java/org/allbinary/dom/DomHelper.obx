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
// package org.allbinary.dom
unit DomHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, Document, Node, NodeList;

type
  {AB:TYPES}
  TDomHelper = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TDomHelper;
    procedure InitFields;
        class function getInstance: TDomHelper; static;
        constructor Create;
        function createDocument: TDocument; overload; virtual;
        function createDocument(xmlFile: TFile): TDocument; overload; virtual;
        function toString(document_: TDocument): string; virtual;
        procedure save(file_: TFile; document_: TDocument); virtual;
        function getChildNodeList(nodeName: string; nodeList_: TNodeList): TNodeList; virtual;
        function getChildrenWithoutTextNodes(nodeName: string; nodeList_: TNodeList): TBasicArrayList; virtual;
        function getWithoutTextNodes(nodeList_: TNodeList): TBasicArrayList; virtual;
        function searchNodeList(nodeName: string; nodeList_: TNodeList): TNode; overload; virtual;
        function searchNodeList(nodeName: string; nodeList_: TBasicArrayList): TNode; overload; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TDomHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TDomHelper.getInstance: TDomHelper;
begin
        Exit(TDomHelper.instance);
end;
    

constructor TDomHelper.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TDomHelper.createDocument: TDocument;
var
  factory: TDocumentBuilderFactory;
  builder: TDocumentBuilder;
  document_: TDocument;
begin
        try
            factory := TDocumentBuilderFactory.newInstance();
            builder := factory.newDocumentBuilder();
            document_ := builder.newDocument();
            Exit(document_);
        except
            on e: SysUtils.Exception do begin
            Exit(nil);
            end;
        end;
end;
    

// throws Exception
function TDomHelper.createDocument(xmlFile: TFile): TDocument;
var
  factory: TDocumentBuilderFactory;
  builder: TDocumentBuilder;
  document_: TDocument;
begin
        try
            factory := TDocumentBuilderFactory.newInstance();
            builder := factory.newDocumentBuilder();
            document_ := builder.parse(xmlFile);
            Exit(document_);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TDomHelper.toString(document_: TDocument): string;
var
  domSource_: TDOMSource;
  byteArrayOutputStream: TByteArrayOutputStream;
  streamResult_: TStreamResult;
  copyTransformerFactory: TTransformerFactory;
  copyTransformer: TTransformer;
begin
        try
            domSource_ := TDOMSource.Create(document_);
            byteArrayOutputStream := TByteArrayOutputStream.Create;
            streamResult_ := TStreamResult.Create(byteArrayOutputStream);
            copyTransformerFactory := TTransformerFactory.newInstance();
            copyTransformer := copyTransformerFactory.newTransformer();
            copyTransformer.transform(domSource_, streamResult_);
            Exit(byteArrayOutputStream.toString());
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TDomHelper.save(file_: TFile; document_: TDocument);
var
  copyTransformerFactory: TTransformerFactory;
  copyTransformer: TTransformer;
  domSource_: TDOMSource;
  streamResult_: TStreamResult;
begin
        try
            copyTransformerFactory := TTransformerFactory.newInstance();
            copyTransformer := copyTransformerFactory.newTransformer();
            domSource_ := TDOMSource.Create(document_);
            file_.createNewFile();
            streamResult_ := TStreamResult.Create(file_);
            copyTransformer.transform(domSource_, streamResult_);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
function TDomHelper.getChildNodeList(nodeName: string; nodeList_: TNodeList): TNodeList;
var
  numberOfNodes: Integer;
  node_: TNode;
  index: Integer;
begin
        numberOfNodes := nodeList_.getLength();
        for index := 0 to numberOfNodes - 1 do begin
            node_ := nodeList_.item(index);
            if (node_.getNodeName().compareTo(nodeName)) = (0) then begin
                Exit(node_.getChildNodes());
            end;
        end;
        raise SysUtils.Exception.Create(nodeName + ' Node Not Found');
end;
    

// throws Exception
function TDomHelper.getChildrenWithoutTextNodes(nodeName: string; nodeList_: TNodeList): TBasicArrayList;
var
  list: TBasicArrayList;
  childNodeList: TNodeList;
  numberOfChildren: Integer;
  node_: TNode;
  index: Integer;
begin
        list := TBasicArrayListD.Create();
        childNodeList := Self.getChildNodeList(nodeName, nodeList_);
        numberOfChildren := childNodeList.getLength();
        for index := 0 to numberOfChildren - 1 do begin
            node_ := childNodeList.item(index);
            if (node_.getNodeType()) <> (TNode.TEXT_NODE) then begin
                list.add(TJava.Box(node_));
            end;
        end;
        Exit(list);
end;
    

// throws Exception
function TDomHelper.getWithoutTextNodes(nodeList_: TNodeList): TBasicArrayList;
var
  list: TBasicArrayList;
  numberOfChildren: Integer;
  node_: TNode;
  index: Integer;
begin
        list := TBasicArrayListD.Create();
        numberOfChildren := nodeList_.getLength();
        for index := 0 to numberOfChildren - 1 do begin
            node_ := nodeList_.item(index);
            if (node_.getNodeType()) <> (TNode.TEXT_NODE) then begin
                list.add(TJava.Box(node_));
            end;
        end;
        Exit(list);
end;
    

// throws Exception
function TDomHelper.searchNodeList(nodeName: string; nodeList_: TNodeList): TNode;
var
  numberOfNodes: Integer;
  node_: TNode;
  index: Integer;
begin
        numberOfNodes := nodeList_.getLength();
        for index := 0 to numberOfNodes - 1 do begin
            node_ := nodeList_.item(index);
            Self.logUtil.putF('NodeName: ' + TJava.ToString(node_.getNodeName()), TJava.Box(Self), 'searchNodeList');
            if (node_.getNodeName().compareTo(nodeName)) = (0) then begin
                Exit(node_);
            end;
        end;
        raise SysUtils.Exception.Create(nodeName + ' Node Not Found in search');
end;
    

// throws Exception
function TDomHelper.searchNodeList(nodeName: string; nodeList_: TBasicArrayList): TNode;
var
  numberOfNodes: Integer;
  node_: TNode;
  index: Integer;
begin
        numberOfNodes := nodeList_.size();
        for index := 0 to numberOfNodes - 1 do begin
            node_ := TNode(TJava.ToObject(nodeList_.get(index)));
            Self.logUtil.putF('NodeName: ' + TJava.ToString(node_.getNodeName()), TJava.Box(Self), 'searchNodeList');
            if (node_.getNodeName().compareTo(nodeName)) = (0) then begin
                Exit(node_);
            end;
        end;
        raise SysUtils.Exception.Create(nodeName + ' Node Not Found in search');
end;

initialization
  {AB:INITIALIZATION}
  TDomHelper.instance := TDomHelper.Create();
  {AB:END}

end.


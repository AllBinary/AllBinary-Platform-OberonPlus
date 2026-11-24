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
// package org.allbinary.logic.visual.transform.info.objectConfig
unit TransformInfoObjectConfig;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, TransformInfoInterface, CommonStrings, Document, NamedNodeMap, Node, TransformInfoObjectConfigInterface;

type
  {AB:TYPES}
  TTransformInfoObjectConfig = class(TInterfacedObject, ITransformInfoObjectConfigInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    ownerTransformInfoInterface: ITransformInfoInterface;
    document: TDocument;
    outputTypeName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; document_: TDocument); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; name: string; type_: string); overload;
        procedure createDocument;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        function toXmlDoc: TDocument; virtual;
        procedure setDocument(document_: TDocument); virtual;
        function containsView(transformInfoInterface_: ITransformInfoInterface): Boolean; virtual;
        function getTemplateAttributes: TNamedNodeMap;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function getNodeVector(nodeName: string): TBasicArrayList;
        function getTransformDomNodes(nodeName: string): TBasicArrayList; overload;
        function getTransforms(nodeName: string): TBasicArrayList; overload; virtual;
        function getTransformsGroup(group: string): TBasicArrayList; virtual;
        function getTransformDomNodes: TBasicArrayList; overload; virtual;
        function getTransforms: TBasicArrayList; overload; virtual;
        function getGroupTransforms: TBasicArrayList; virtual;
        function getParentTransforms: TBasicArrayList; virtual;
        function getRootNode: TNode;
        procedure setOutputTypeName(outputTypeName: string); virtual;
        function getOutputTypeName: string; virtual;
        function getInputOutputTypeName: string; virtual;
        function getInputOutputTypeFile: string; virtual;
        function getImportUriPath: string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  TransformInfoObjectConfigData, BasicArrayListD, DomNodeHelper, DomSearchHelper, DomDocumentHelper, XmlDocumentHelper, InputOutputTypeData, OutputTypeData, StringMaker, TransformInfoData, TransformInfoDomNode, TransformInfosData, XslData, Attr, NodeList;


{AB:CODE}

procedure TTransformInfoObjectConfig.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TTransformInfoObjectConfig.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface);
var
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        Self.ownerTransformInfoInterface := transformInfoInterface_;
        Self.createDocument();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('TransformInfo: ');
            if (Self.ownerTransformInfoInterface) <> (nil) then begin
                stringBuffer.append(Self.ownerTransformInfoInterface.getName());
            end else begin
                stringBuffer.append('No Owner!?#@');
            end;
            stringBuffer.append(''#10'Constructed with document: ');
            stringBuffer.append(Self.toString());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'Constructor(TransformInfoInterface)');
        end;
end;
    

constructor TTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface; document_: TDocument);
var
  node_: TNode;
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        Self.ownerTransformInfoInterface := transformInfoInterface_;
        Self.document := document_;
        node_ := TDomSearchHelper.getNodeNoThrow(TOutputTypeData.getInstance().NAME, Self.getRootNode().getChildNodes());
        if (node_) <> (nil) then begin
            Self.setOutputTypeName(TDomNodeHelper.getTextNodeValue(node_));
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('TransformInfo: ');
            if (Self.ownerTransformInfoInterface) <> (nil) then begin
                stringBuffer.append(Self.ownerTransformInfoInterface.getName());
            end else begin
                stringBuffer.append('No Owner!?#@');
            end;
            stringBuffer.append(''#10'Constructed with document: ');
            stringBuffer.append(Self.toString());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'Constructor(TransformInfoInterface, Document)');
        end;
end;
    

constructor TTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface; name: string; type_: string);
var
  configNameAttr: TAttr;
  objectConfigNode: TNode;
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        Self.ownerTransformInfoInterface := transformInfoInterface_;
        Self.createDocument();
        configNameAttr := Self.document.createAttribute(TTransformInfoObjectConfigData.getInstance().NAME);
        configNameAttr.setValue(name);
        objectConfigNode := Self.document.getElementsByTagName(TTransformInfoObjectConfigData.getInstance().NAME).item(0);
        objectConfigNode.appendChild(configNameAttr);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('TransformInfo: ');
            if (Self.ownerTransformInfoInterface) <> (nil) then begin
                stringBuffer.append(Self.ownerTransformInfoInterface.getName());
            end else begin
                stringBuffer.append('No Owner!?#@');
            end;
            stringBuffer.append(''#10'Constructed with document: ');
            stringBuffer.append(Self.toString());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'Constructor(TransformInfoInterface, name, type)');
        end;
end;
    

procedure TTransformInfoObjectConfig.createDocument;
var
  objectConfigNode: TNode;
begin
        Self.document := TDomDocumentHelper.create_();
        objectConfigNode := Self.document.createElement(TTransformInfoObjectConfigData.getInstance().NAME);
        Self.document.appendChild(objectConfigNode);
end;
    

function TTransformInfoObjectConfig.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.ownerTransformInfoInterface);
end;
    

// throws Exception
function TTransformInfoObjectConfig.toXmlDoc: TDocument;
begin
        Exit(Self.document);
end;
    

procedure TTransformInfoObjectConfig.setDocument(document_: TDocument);
begin
        Self.document := document_;
end;
    

function TTransformInfoObjectConfig.containsView(transformInfoInterface_: ITransformInfoInterface): Boolean;
var
  objectConfigNode: TNode;
  viewNodeList: TNodeList;
  numberOfViews: Integer;
  viewNode: TNode;
  viewAttributes: TNamedNodeMap;
  attrNode: TAttr;
  index: Integer;
begin
        objectConfigNode := Self.document.getElementsByTagName(TTransformInfoObjectConfigData.getInstance().NAME).item(0);
        viewNodeList := objectConfigNode.getChildNodes();
        numberOfViews := viewNodeList.getLength();
        for index := 0 to numberOfViews - 1 do begin
            viewNode := viewNodeList.item(index);
            viewAttributes := viewNode.getAttributes();
            attrNode := TAttr(TJava.ToObject(viewAttributes.getNamedItem(TTransformInfoData.getInstance().NAME)));
            if (transformInfoInterface_.getName().compareTo(attrNode.getValue())) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
function TTransformInfoObjectConfig.getTemplateAttributes: TNamedNodeMap;
var
  componentNode: TNode;
begin
        componentNode := Self.document.getElementsByTagName(TTransformInfoObjectConfigData.getInstance().NAME).item(0);
        Exit(componentNode.getAttributes());
end;
    

// throws Exception
function TTransformInfoObjectConfig.getName: string;
var
  attrNode: TAttr;
begin
        attrNode := TAttr(TJava.ToObject(Self.getTemplateAttributes().getNamedItem(TTransformInfoObjectConfigData.getInstance().NAME)));
        Exit(attrNode.getValue());
end;
    

// throws Exception
procedure TTransformInfoObjectConfig.setName(name: string);
var
  attrNode: TAttr;
begin
        attrNode := TAttr(TJava.ToObject(Self.getTemplateAttributes().getNamedItem(TTransformInfoObjectConfigData.getInstance().NAME)));
        attrNode.setValue(name);
end;
    

// throws Exception
function TTransformInfoObjectConfig.getNodeVector(nodeName: string): TBasicArrayList;
var
  componentsNodeList: TNodeList;
  viewNodeVector: TBasicArrayList;
  numberOfViews: Integer;
  stringBuffer: TStringMaker;
begin
        componentsNodeList := Self.document.getElementsByTagName(nodeName);
        if ((componentsNodeList) <> (nil)) and ((componentsNodeList.getLength()) > (0)) then begin
            viewNodeVector := TDomSearchHelper.getAllNodes(TTransformInfoData.getInstance().NAME, componentsNodeList.item(0).getChildNodes());
            numberOfViews := viewNodeVector.size();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Number Of ');
                stringBuffer.append(nodeName);
                stringBuffer.append(' Nodes: ');
                stringBuffer.appendint(numberOfViews);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'getNodeVector(nodename)');
            end;
            Exit(viewNodeVector);
        end;
        Exit(TBasicArrayListD.Create());
end;
    

// throws Exception
function TTransformInfoObjectConfig.getTransformDomNodes(nodeName: string): TBasicArrayList;
var
  viewVector: TBasicArrayList;
  viewNodeVector: TBasicArrayList;
  size: Integer;
  viewNode: TNode;
  index: Integer;
begin
        viewVector := TBasicArrayListD.Create();
        viewNodeVector := Self.getNodeVector(nodeName);
        size := viewNodeVector.size();
        for index := 0 to size - 1 do begin
            viewNode := TNode(TJava.ToObject(viewNodeVector.get(index)));
            viewVector.add(TJava.Box(TTransformInfoDomNode.Create(viewNode)));
        end;
        Exit(viewVector);
end;
    

// throws Exception
function TTransformInfoObjectConfig.getTransforms(nodeName: string): TBasicArrayList;
var
  viewVector: TBasicArrayList;
  viewNodeVector: TBasicArrayList;
  size: Integer;
  viewNode: TNode;
  index: Integer;
begin
        viewVector := TBasicArrayListD.Create();
        viewNodeVector := Self.getNodeVector(nodeName);
        size := viewNodeVector.size();
        for index := 0 to size - 1 do begin
            viewNode := TNode(TJava.ToObject(viewNodeVector.get(index)));
            viewVector.add(TJava.Box(TTransformInfoDomNode.Create(viewNode).getTransformInfoInterface()));
        end;
        Exit(viewVector);
end;
    

// throws Exception
function TTransformInfoObjectConfig.getTransformsGroup(group: string): TBasicArrayList;
var
  viewVector: TBasicArrayList;
  GROUP_: string;
  componentsNodeList: TNodeList;
  componentsNode: TNode;
  length: Integer;
  node_: TNode;
  attributes: TNamedNodeMap;
  attrNode: TAttr;
  value: string;
  index: Integer;
  viewNodeVector: TBasicArrayList;
  numberOfViews: Integer;
  size: Integer;
  viewNode: TNode;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Started: ' + group, TJava.Box(Self), 'getTransformsGroup()');
        end;
        viewVector := TBasicArrayListD.Create();
        GROUP_ := TTransformInfosData.getInstance().GROUP;
        componentsNodeList := Self.document.getElementsByTagName(GROUP_);
        if ((componentsNodeList) <> (nil)) and ((componentsNodeList.getLength()) > (0)) then begin
            componentsNode := componentsNodeList.item(0);
            length := componentsNodeList.getLength();
            for index := 0 to length - 1 do begin
                node_ := componentsNodeList.item(index);
                attributes := node_.getAttributes();
                attrNode := TAttr(TJava.ToObject(attributes.getNamedItem(GROUP_)));
                value := attrNode.getValue();
                if (CompareStr(value, group)) = (0) then begin
                    componentsNode := node_;
                    Break;
                end;
            end;
            viewNodeVector := TDomSearchHelper.getAllNodes(TTransformInfoData.getInstance().NAME, componentsNode.getChildNodes());
            numberOfViews := viewNodeVector.size();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Number Of Nodes: ' + IntToStr(numberOfViews), TJava.Box(Self), 'getTransformsGroup()');
            end;
            size := viewNodeVector.size();
            for index := 0 to size - 1 do begin
                viewNode := TNode(TJava.ToObject(viewNodeVector.get(index)));
                viewVector.add(TJava.Box(TTransformInfoDomNode.Create(viewNode)));
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                if (componentsNodeList) = (nil) then begin
                    Self.logUtil.putF('Number Of Nodes: NULL', TJava.Box(Self), 'getTransformsGroup()');
                end else begin
                    Self.logUtil.putF('Number Of Nodes: 0', TJava.Box(Self), 'getTransformsGroup()');
                end;
            end;
        end;
        Exit(viewVector);
end;
    

// throws Exception
function TTransformInfoObjectConfig.getTransformDomNodes: TBasicArrayList;
begin
        Exit(Self.getTransformDomNodes(TTransformInfosData.getInstance().GROUP));
end;
    

// throws Exception
function TTransformInfoObjectConfig.getTransforms: TBasicArrayList;
begin
        Exit(Self.getTransforms(TTransformInfosData.getInstance().NAME));
end;
    

// throws Exception
function TTransformInfoObjectConfig.getGroupTransforms: TBasicArrayList;
begin
        Exit(Self.getTransforms(TTransformInfosData.getInstance().GROUP));
end;
    

// throws Exception
function TTransformInfoObjectConfig.getParentTransforms: TBasicArrayList;
begin
        Exit(Self.getTransforms(TTransformInfoData.getInstance().PARENT));
end;
    

function TTransformInfoObjectConfig.getRootNode: TNode;
begin
        Exit(Self.document.getElementsByTagName(TTransformInfoObjectConfigData.getInstance().NAME).item(0));
end;
    

procedure TTransformInfoObjectConfig.setOutputTypeName(outputTypeName: string);
begin
        Self.outputTypeName := outputTypeName;
end;
    

// throws Exception
function TTransformInfoObjectConfig.getOutputTypeName: string;
begin
        Exit(Self.outputTypeName);
end;
    

// throws Exception
function TTransformInfoObjectConfig.getInputOutputTypeName: string;
var
  node_: TNode;
begin
        node_ := TDomSearchHelper.getNode(TInputOutputTypeData.getInstance().NAME, Self.getRootNode().getChildNodes());
        Exit(TDomNodeHelper.getTextNodeValue(node_));
end;
    

// throws Exception
function TTransformInfoObjectConfig.getInputOutputTypeFile: string;
var
  node_: TNode;
begin
        node_ := TDomSearchHelper.getNode(TInputOutputTypeData.getInstance().FILE_, Self.getRootNode().getChildNodes());
        Exit(TDomNodeHelper.getTextNodeValue(node_));
end;
    

// throws Exception
function TTransformInfoObjectConfig.getImportUriPath: string;
var
  node_: TNode;
begin
        node_ := TDomSearchHelper.getNode(TXslData.getInstance().ROOT_IMPORT_URI, Self.getRootNode().getChildNodes());
        Exit(TDomNodeHelper.getTextNodeValue(node_));
end;
    

function TTransformInfoObjectConfig.toString: string;
begin
        try
            if (Self.document) <> (nil) then begin
                Exit(TXmlDocumentHelper.toString(Self.document));
            end else begin
                Exit(nil);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.putF('DOM Document error', TJava.Box(Self), Self.commonStrings.TOSTRING);
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


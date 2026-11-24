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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoDomNode;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Node, TransformInfoInterface;

type
  {AB:TYPES}
  TTransformInfoDomNode = class(TObject)
  public
    logUtil: TLogUtil;
    transformInfoInterface: ITransformInfoInterface;
    mappedName: string;
    procedure InitFields;
        constructor Create(node_: TNode); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; mappedName: string); overload;
        constructor Create(name: string; mappedName: string); overload;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        function getMappedName: string; virtual;
        function getReplaceKey: string; virtual;
  end;

implementation
uses
  TransformInfoData, TransformInfo, DomNodeHelper, DomSearchHelper, StringMaker, Attr, NamedNodeMap, NodeList;


{AB:CODE}

procedure TTransformInfoDomNode.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TTransformInfoDomNode.Create(node_: TNode);
var
  transformInfoData_: TTransformInfoData;
  attributes: TNamedNodeMap;
  attrNode: TAttr;
  name: string;
  nodeList_: TNodeList;
  stringBuffer: TStringMaker;
  objectFileNameNode: TNode;
  objectFileName: string;
  objectConfigFileNameNode: TNode;
  objectConfigFileName: string;
  templateFileNameNode: TNode;
  templateFileName: string;
  dataFileNameNode: TNode;
  dataFileName: string;
  templateAttrNode: TAttr;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Constructing TransformInfo From TransformInfoDomNode: ' + TJava.ToString(node_.getNodeName()), TJava.Box(Self), 'TransformInfoDomNode(Node node)');
        end;
        transformInfoData_ := TTransformInfoData.getInstance();
        attributes := node_.getAttributes();
        attrNode := TAttr(TJava.ToObject(attributes.getNamedItem(transformInfoData_.NAME)));
        name := attrNode.getValue();
        nodeList_ := node_.getChildNodes();
        if (nodeList_.getLength()) > (1) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Constructing Complete TransformInfo Node For: ');
                stringBuffer.append(name);
                stringBuffer.append(' with ');
                stringBuffer.appendint(Integer(Trunc(nodeList_.getLength())));
                stringBuffer.append(' children');
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'TransformInfoObjectConfigComponent(Node node)');
            end;
            objectFileNameNode := TDomSearchHelper.getNode(transformInfoData_.OBJECTFILENAME, nodeList_);
            objectFileName := TDomNodeHelper.getTextNodeValue(objectFileNameNode);
            objectConfigFileNameNode := TDomSearchHelper.getNode(transformInfoData_.OBJECTCONFIGFILENAME, nodeList_);
            objectConfigFileName := TDomNodeHelper.getTextNodeValue(objectConfigFileNameNode);
            templateFileNameNode := TDomSearchHelper.getNode(transformInfoData_.TEMPLATEFILENAME, nodeList_);
            templateFileName := TDomNodeHelper.getTextNodeValue(templateFileNameNode);
            dataFileNameNode := TDomSearchHelper.getNode(transformInfoData_.DATAFILENAME, nodeList_);
            dataFileName := TDomNodeHelper.getTextNodeValue(dataFileNameNode);
            Self.transformInfoInterface := (TJava.ToObject(TTransformInfo.Create(name, objectFileName, objectConfigFileName, templateFileName, dataFileName)) as ITransformInfoInterface);
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Constructing Partial TransformInfo Node For: ');
                stringBuffer.append(name);
                stringBuffer.append(' with ');
                stringBuffer.appendint(Integer(Trunc(nodeList_.getLength())));
                stringBuffer.append(' children');
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'TransformInfoObjectConfigComponent(Node node)');
            end;
            Self.transformInfoInterface := (TJava.ToObject(TTransformInfo.Create(name)) as ITransformInfoInterface);
        end;
        templateAttrNode := TAttr(TJava.ToObject(attributes.getNamedItem(transformInfoData_.MAPPED)));
        if (templateAttrNode) <> (nil) then begin
            Self.mappedName := templateAttrNode.getValue();
        end else begin
            Self.mappedName := Self.getTransformInfoInterface().getName();
        end;
end;
    

constructor TTransformInfoDomNode.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.mappedName := transformInfoInterface_.getName();
end;
    

constructor TTransformInfoDomNode.Create(transformInfoInterface_: ITransformInfoInterface; mappedName: string);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.mappedName := mappedName;
end;
    

constructor TTransformInfoDomNode.Create(name: string; mappedName: string);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := TTransformInfo.Create(name);
        Self.mappedName := mappedName;
end;
    

function TTransformInfoDomNode.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.transformInfoInterface);
end;
    

function TTransformInfoDomNode.getMappedName: string;
begin
        Exit(Self.mappedName);
end;
    

function TTransformInfoDomNode.getReplaceKey: string;
var
  stringBuffer: TStringMaker;
  key: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('<transform:component name="');
        stringBuffer.append('body');
        stringBuffer.append('"/>');
        key := stringBuffer.toString();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Component Key: ' + key, TJava.Box(Self), 'getReplaceKey()');
        end;
        Exit(key);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


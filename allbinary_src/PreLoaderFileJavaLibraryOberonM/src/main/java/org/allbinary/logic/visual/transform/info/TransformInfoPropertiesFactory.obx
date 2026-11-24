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
unit TransformInfoPropertiesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Node, TransformInfoProperties;

type
  {AB:TYPES}
  TTransformInfoPropertiesFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TTransformInfoPropertiesFactory;
    procedure InitFields;
        class function getInstance: TTransformInfoPropertiesFactory; overload; static;
        constructor Create;
        function getInstance(node_: TNode): TTransformInfoProperties; overload; virtual;
  end;

implementation
uses
  TransformInfoData, DomNodeHelper, DomSearchHelper, CommonLabels, Attr, NamedNodeMap, NodeList;


{AB:CODE}

procedure TTransformInfoPropertiesFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TTransformInfoPropertiesFactory.getInstance: TTransformInfoPropertiesFactory;
begin
        Exit(TTransformInfoPropertiesFactory.instance);
end;
    

constructor TTransformInfoPropertiesFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TTransformInfoPropertiesFactory.getInstance(node_: TNode): TTransformInfoProperties;
var
  transformInfoChildNodeList: TNodeList;
  transformInfoData_: TTransformInfoData;
  attributes: TNamedNodeMap;
  attrNode: TAttr;
  name: string;
  labelNode: TNode;
  label_: string;
  descriptionNode: TNode;
  description: string;
  objectFileNode: TNode;
  objectFileName: string;
  objectConfigFileNode: TNode;
  objectConfigFileName: string;
  templateFileNode: TNode;
  templateFileName: string;
  transformInfoProperties_: TTransformInfoProperties;
begin
        transformInfoChildNodeList := node_.getChildNodes();
        transformInfoData_ := TTransformInfoData.getInstance();
        attributes := node_.getAttributes();
        attrNode := TAttr(TJava.ToObject(attributes.getNamedItem(transformInfoData_.NAME)));
        name := attrNode.getValue();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().NEXT) + ' View Name: ' + name, TJava.Box(Self), 'toTransformInfoPropertiesHashMap()');
        end;
        labelNode := TDomSearchHelper.getNodeNoThrow(transformInfoData_.LABEL_, transformInfoChildNodeList);
        label_ := TDomNodeHelper.getTextNodesValue(labelNode);
        if (label_) = ('') then begin
            label_ := name;
        end;
        descriptionNode := TDomSearchHelper.getNode(transformInfoData_.DESCRIPTION, transformInfoChildNodeList);
        description := TDomNodeHelper.getTextNodesValue(descriptionNode);
        objectFileNode := TDomSearchHelper.getNode(transformInfoData_.OBJECTFILENAME, transformInfoChildNodeList);
        objectFileName := TDomNodeHelper.getTextNodeValue(objectFileNode);
        objectConfigFileNode := TDomSearchHelper.getNode(transformInfoData_.OBJECTCONFIGFILENAME, transformInfoChildNodeList);
        objectConfigFileName := TDomNodeHelper.getTextNodeValue(objectConfigFileNode);
        templateFileNode := TDomSearchHelper.getNode(transformInfoData_.TEMPLATEFILENAME, transformInfoChildNodeList);
        templateFileName := TDomNodeHelper.getTextNodeValue(templateFileNode);
        transformInfoProperties_ := TTransformInfoProperties.Create(name, label_, description, objectFileName, objectConfigFileName, templateFileName);
        Exit(transformInfoProperties_);
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoPropertiesFactory.instance := TTransformInfoPropertiesFactory.Create();
  {AB:END}

end.


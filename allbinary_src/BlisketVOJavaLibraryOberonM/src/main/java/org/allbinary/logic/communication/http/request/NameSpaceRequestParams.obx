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
// package org.allbinary.logic.communication.http.request
unit NameSpaceRequestParams;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, Document, Node, NameSpaceRequestParam, RequestParams;

type
  {AB:TYPES}
  // containing string values and other hashmaps of the like
  TNameSpaceRequestParams = class(TRequestParams)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(httpServletRequest_: THttpServletRequest); overload;
        constructor Create(pageContext_: TPageContext); overload;
        function createPackageNode(document_: TDocument; packageName: string; packagePropertiesHashMap: TJavaHashMap<TObject, TObject>): TNode;
        function createPackageMultiNode(document_: TDocument; nameSpaceRequestParam_: TNameSpaceRequestParam; packageName: string; packagePropertiesHashMap: TJavaHashMap<TObject, TObject>): TNode;
        function getRootNode(rootElementPackage: string; packagePropertiesHashMap: TJavaHashMap<TObject, TObject>; document_: TDocument): TNode;
        function addNewProperties(document_: TDocument; node_: TNode; nextPackagePropertiesHashMap: TJavaHashMap<TObject, TObject>): TNode;
        function isElementValueTextNodeEqual(nextPackagePropertiesHashMap: TJavaHashMap<TObject, TObject>; node_: TNode): Boolean;
        function isElementValueTextNodeUnique(nextPackagePropertiesHashMap: TJavaHashMap<TObject, TObject>; elementNodeVector: TBasicArrayList): Integer;
        function addChildren(document_: TDocument; rootNode: TNode; nameSpaceRequestParam_: TNameSpaceRequestParam): TDocument;
        function addNameSpace(key: string; value: string; document_: TDocument): TDocument;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  NameSpaceRequestParamData, BasicArrayListD, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, DomDocumentHelper, XmlDocumentHelper, StdUtil, StringMaker, StringUtil, CommonSeps;


{AB:CODE}

procedure TNameSpaceRequestParams.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TNameSpaceRequestParams.Create;
begin
        inherited Create();
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('Constructing empty', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

constructor TNameSpaceRequestParams.Create(httpServletRequest_: THttpServletRequest);
begin
        inherited Create(httpServletRequest_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('Constructing from HttpServletRequest', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

constructor TNameSpaceRequestParams.Create(pageContext_: TPageContext);
begin
        inherited Create(pageContext_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('Constructing from PageContext', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
function TNameSpaceRequestParams.createPackageNode(document_: TDocument; packageName: string; packagePropertiesHashMap: TJavaHashMap<TObject, TObject>): TNode;
var
  node_: TNode;
  propertyKeySet: ISet;
  propertyKeySetArray: TArray<TObject>;
  size: Integer;
  propertyName: string;
  propertyValue: string;
  propertyNode: TNode;
  index: Integer;
begin
        node_ := document_.createElement(packageName);
        propertyKeySet := packagePropertiesHashMap.keySet();
        propertyKeySetArray := propertyKeySet.toArray();
        size := System.Length(propertyKeySetArray);
        for index := 0 to size - 1 do begin
            propertyName := TJava.UnboxString(TJava.ToObject(propertyKeySetArray[index]));
            propertyValue := TJava.UnboxString(TJava.ToObject(packagePropertiesHashMap.get(TJava.Box(propertyName))));
            propertyNode := TModDomHelper.createTextNode(document_, propertyName, propertyValue);
            node_.appendChild(propertyNode);
        end;
        Exit(node_);
end;
    

// throws Exception
function TNameSpaceRequestParams.createPackageMultiNode(document_: TDocument; nameSpaceRequestParam_: TNameSpaceRequestParam; packageName: string; packagePropertiesHashMap: TJavaHashMap<TObject, TObject>): TNode;
var
  beginIndex: Integer;
  indexValue: string;
  multiElementPackage: string;
  selectedValue: string;
  propertyValue: string;
  nextNode: TNode;
  indexNode: TNode;
begin
        beginIndex := (Pos(TJava.ToString('['), packageName) - 1);
        indexValue := Copy(packageName, ((beginIndex) + (1)) + 1, ((System.Length(packageName)) - (1)) - ((beginIndex) + (1)));
        multiElementPackage := Copy(packageName, (0) + 1, (beginIndex) - (0));
        selectedValue := nameSpaceRequestParam_.getValue();
        propertyValue := TJava.UnboxString(TJava.ToObject(packagePropertiesHashMap.get(TJava.Box(TDomData.VALUE))));
        if (CompareStr(propertyValue, TNameSpaceRequestParamData.VALUE)) <> (0) then begin
            selectedValue := propertyValue;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Appending Multinode Element: ' + multiElementPackage + '[' + indexValue + '] ' + selectedValue, TJava.Box(Self), 'createPackageMultiNode');
        end;
        nextNode := TModDomHelper.createNameValueNodes(document_, multiElementPackage, selectedValue);
        indexNode := TModDomHelper.createTextNode(document_, TDomData.INDEX, indexValue);
        nextNode.appendChild(indexNode);
        Exit(nextNode);
end;
    

// throws Exception
function TNameSpaceRequestParams.getRootNode(rootElementPackage: string; packagePropertiesHashMap: TJavaHashMap<TObject, TObject>; document_: TDocument): TNode;
var
  rootNode: TNode;
  node_: TNode;
begin
        rootNode := TDomSearchHelper.getNodeNoThrow(rootElementPackage, document_.getChildNodes());
        if (rootNode) = (nil) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Appending Document Root: ' + ''#10'ElementName: ' + rootElementPackage + ''#10'Properties: ' + packagePropertiesHashMap.toString(), TJava.Box(Self), 'getRootNode');
            end;
            node_ := Self.createPackageNode(document_, rootElementPackage, packagePropertiesHashMap);
            document_.appendChild(node_);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Appended Document Created: ' + TXmlDocumentHelper.toString(document_), TJava.Box(Self), 'getRootNode');
            end;
            Exit(node_);
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Using Existing Root Node', TJava.Box(Self), 'getRootNode');
            end;
            Exit(rootNode);
        end;
end;
    

// throws Exception
function TNameSpaceRequestParams.addNewProperties(document_: TDocument; node_: TNode; nextPackagePropertiesHashMap: TJavaHashMap<TObject, TObject>): TNode;
var
  propertyNameSet: ISet;
  propertyNameSetArray: TArray<TObject>;
  size: Integer;
  nextPropertyName: string;
  propertyValue: string;
  valueNode: TNode;
  newPropertyNode: TNode;
  existingElementNodeTextNodeValue: string;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(TStringMaker.Create().append(''#10'Adding Any New Properties: ').append(nextPackagePropertiesHashMap.toString()).append(''#10'to node: ').append(node_.getNodeName()).toString(), TJava.Box(Self), 'addNewProperties');
        end;
        propertyNameSet := nextPackagePropertiesHashMap.keySet();
        propertyNameSetArray := propertyNameSet.toArray();
        size := System.Length(propertyNameSetArray);
        for index := 0 to size - 1 do begin
            nextPropertyName := TJava.UnboxString(TJava.ToObject(propertyNameSetArray[index]));
            propertyValue := TStringUtil.getInstance().getNonNull(TJava.UnboxString(TJava.ToObject(nextPackagePropertiesHashMap.get(TJava.Box(nextPropertyName)))));
            valueNode := TDomSearchHelper.getNodeNoThrow(nextPropertyName, node_.getChildNodes());
            if (valueNode) <> (nil) then begin
                existingElementNodeTextNodeValue := TDomNodeHelper.getTextNodeValue(valueNode);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'If property: "' + nextPropertyName + ' is the same as:'#10'' + 'Node: ' + TJava.ToString(node_.getNodeName()) + ' then: ' + propertyValue + '==' + existingElementNodeTextNodeValue, TJava.Box(Self), 'addNewProperties');
                end;
                if (CompareStr(propertyValue, existingElementNodeTextNodeValue)) <> (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                        Self.logUtil.putF('At least one Property from NameSpaceRequest Package was different from Node', TJava.Box(Self), 'addNewProperties');
                    end;
                    raise SysUtils.Exception.Create('Property Modifications Should Not Occur');
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Adding a new Property: ' + nextPropertyName + '=' + propertyValue, TJava.Box(Self), 'addNewProperties');
                end;
                newPropertyNode := TModDomHelper.createTextNode(document_, nextPropertyName, propertyValue);
                node_.appendChild(newPropertyNode);
            end;
        end;
        Exit(node_);
end;
    

// throws Exception
function TNameSpaceRequestParams.isElementValueTextNodeEqual(nextPackagePropertiesHashMap: TJavaHashMap<TObject, TObject>; node_: TNode): Boolean;
var
  propertyValue: string;
  valueNode: TNode;
  existingElementNodeTextNodeValue: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Comparing the value property in: ' + nextPackagePropertiesHashMap.toString() + ''#10'to node child leaves of node: ' + TJava.ToString(node_.getNodeName()), TJava.Box(Self), 'isElementValueTextNodeEqual');
        end;
        propertyValue := TJava.UnboxString(TJava.ToObject(nextPackagePropertiesHashMap.get(TJava.Box(TDomData.VALUE))));
        valueNode := TDomSearchHelper.getNodeNoThrow(TDomData.VALUE, node_.getChildNodes());
        if (valueNode) <> (nil) then begin
            existingElementNodeTextNodeValue := TDomNodeHelper.getTextNodeValue(valueNode);
            if (CompareStr(propertyValue, existingElementNodeTextNodeValue)) = (0) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Value Node is the same', TJava.Box(Self), 'isElementValueTextNodeEqual');
                end;
                Exit(True);
            end;
        end else begin
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TNameSpaceRequestParams.isElementValueTextNodeUnique(nextPackagePropertiesHashMap: TJavaHashMap<TObject, TObject>; elementNodeVector: TBasicArrayList): Integer;
var
  size: Integer;
  existingElementNode: TNode;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(''#10'Comparing Properties of: ' + IntToStr(elementNodeVector.size()) + ' Nodes', TJava.Box(Self), 'isElementValueTextNodeUnique');
        end;
        size := elementNodeVector.size();
        for index := 0 to size - 1 do begin
            existingElementNode := TNode(TJava.ToObject(elementNodeVector.get(index)));
            if Self.isElementValueTextNodeEqual(nextPackagePropertiesHashMap, existingElementNode) then begin
                Exit(index);
            end;
        end;
        Exit(-1);
end;
    

// throws Exception
function TNameSpaceRequestParams.addChildren(document_: TDocument; rootNode: TNode; nameSpaceRequestParam_: TNameSpaceRequestParam): TDocument;
var
  node_: TNode;
  packageVector: TBasicArrayList;
  size: Integer;
  nextPackageName: string;
  nextPackagePropertiesHashMap: TJavaHashMap<TObject, TObject>;
  elementNodeVector: TBasicArrayList;
  isElementValueTextNodeUniqueIndex: Integer;
  nodeNameDuplicateNode: TNode;
  nextNode: TNode;
  index: Integer;
begin
        node_ := rootNode;
        packageVector := nameSpaceRequestParam_.getPackages();
        size := packageVector.size();
        for index := 1 to size - 1 do begin
            nextPackageName := TJava.UnboxString(TJava.ToObject(packageVector.get(index)));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(TStringMaker.Create().append(''#10'Trying to Add Child to Node: ').append(node_.getNodeName()).append(''#10'with new PackageName: ').append(nextPackageName).toString(), TJava.Box(Self), 'addChildren');
            end;
            nextPackagePropertiesHashMap := nameSpaceRequestParam_.getPackageProperties(index);
            elementNodeVector := TDomSearchHelper.getAllNodesNoThrow(nextPackageName, node_.getChildNodes());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF(''#10'Document Contains ' + IntToStr(elementNodeVector.size()) + ' Node(s) With Same Name', TJava.Box(Self), 'addChildren');
            end;
            isElementValueTextNodeUniqueIndex := Self.isElementValueTextNodeUnique(nextPackagePropertiesHashMap, elementNodeVector);
            if ((((elementNodeVector.size()) = (0)) or ((isElementValueTextNodeUniqueIndex) = (-1)))) and (not (nextPackageName.EndsWith(TCommonSeps.getInstance().BRACKET_CLOSE))) then begin
                nextNode := Self.createPackageNode(document_, nextPackageName, nextPackagePropertiesHashMap);
                node_.appendChild(nextNode);
                node_ := nextNode;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'Appended Package: ' + TJava.ToString(node_.getNodeName()), TJava.Box(Self), 'addChildren');
                    Self.logUtil.putF(''#10'Appended Document Created: ' + TXmlDocumentHelper.toString(document_), TJava.Box(Self), 'addChildren');
                end;
            end else if nextPackageName.EndsWith(TCommonSeps.getInstance().BRACKET_CLOSE) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Package is MultiNode: just append', TJava.Box(Self), 'addChildren');
                end;
                nextNode := Self.createPackageMultiNode(document_, nameSpaceRequestParam_, nextPackageName, nextPackagePropertiesHashMap);
                node_.appendChild(nextNode);
                node_ := nextNode;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'Appended Multinode Element: ' + TXmlDocumentHelper.toString(document_), TJava.Box(Self), 'addChildren');
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF('Value Node already exists: Now compare (properties to leaf nodes)', TJava.Box(Self), 'addChildren');
                end;
                nodeNameDuplicateNode := TNode(TJava.ToObject(elementNodeVector.get(isElementValueTextNodeUniqueIndex)));
                node_ := Self.addNewProperties(document_, nodeNameDuplicateNode, nextPackagePropertiesHashMap);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    Self.logUtil.putF(''#10'Duplicate Node Found: Moving to next child ^', TJava.Box(Self), 'addChildre');
                end;
            end;
        end;
        Exit(document_);
end;
    

// throws Exception
function TNameSpaceRequestParams.addNameSpace(key: string; value: string; document_: TDocument): TDocument;
var
  nameSpaceRequestParam_: TNameSpaceRequestParam;
  packageVector: TBasicArrayList;
  size: Integer;
  packageName: string;
  packagePropertiesHashMap: TJavaHashMap<TObject, TObject>;
  rootNode: TNode;
  index: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF(TStringMaker.Create().append('NameSpace key: ').append(key).append(' Value: ').append(value).toString(), TJava.Box(Self), 'addNameSpace');
        end;
        nameSpaceRequestParam_ := TNameSpaceRequestParam.Create(key, value);
        packageVector := nameSpaceRequestParam_.getPackages();
        size := packageVector.size();
        for index := 0 to size - 1 do begin
            packageName := TJava.UnboxString(TJava.ToObject(packageVector.get(index)));
            packagePropertiesHashMap := nameSpaceRequestParam_.getPackageProperties(packageVector.indexOf(TJava.Box(packageName)));
            rootNode := Self.getRootNode(packageName, packagePropertiesHashMap, document_);
            if (index) < ((size) - (1)) then begin
                Exit(Self.addChildren(document_, TNode(TJava.ToObject(rootNode)), nameSpaceRequestParam_));
            end;
        end;
        Exit(document_);
end;
    

// throws Exception
function TNameSpaceRequestParams.toHashMap: TJavaHashMap<TObject, TObject>;
var
  document_: TDocument;
  hashMap_: TJavaHashMap<TObject, TObject>;
  keys: ISet;
  keyArray: TArray<TObject>;
  keySize: Integer;
  key: string;
  anyType: TObject;
  className: string;
  values: TArray<string>;
  value: string;
  i: Integer;
begin
        document_ := TDomDocumentHelper.create_();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        keys := Self.getMap().keySet();
        keyArray := keys.toArray();
        keySize := System.Length(keyArray);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('NameSpace Request Size: ' + IntToStr(keys.size()), TJava.Box(Self), 'toHashMap');
        end;
        for i := 0 to keySize - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(keyArray[i]));
            anyType := TJava.Box(Self.getMap().get(key));
            className := TJava.UnboxString(TJava.ToObject(TJava.ToObject(anyType).ClassType.ClassName));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                Self.logUtil.putF('Request Param Class: ' + className, TJava.Box(Self), 'toHashMap');
            end;
            if (TJava.ToObject(Self.getMap().get(key)) is string) then begin
                value := TJava.UnboxString(TJava.ToObject(Self.getMap().get(key)));
                if ((Pos(TJava.ToString(TNameSpaceRequestParamData.NAME), key) - 1)) < (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                        Self.logUtil.putF('Not NameSpace key: ' + key + ' Value: ' + value, TJava.Box(Self), 'toHashMap()');
                    end;
                    hashMap_.put(TJava.Box(TJava.NewString(key)), TJava.Box(TJava.NewString(value)));
                end else begin
                    document_ := Self.addNameSpace(TJava.NewString(key), TJava.NewString(value), document_);
                end;
            end else if (TJava.ToObject(Self.getMap().get(key)) is TArray<string>) then begin
                values := TJava.UnboxArray<string>(TJava.ToObject(Self.getMap().get(key)));
                if ((Pos(TJava.ToString(TNameSpaceRequestParamData.NAME), key) - 1)) < (0) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                        Self.logUtil.putF('Not NameSpace key: ' + key + ' Value: ' + values[0], TJava.Box(Self), 'toHashMap()');
                    end;
                    hashMap_.put(TJava.Box(TJava.NewString(key)), TJava.Box(TJava.NewString(values[0])));
                end else begin
                    document_ := Self.addNameSpace(TJava.NewString(key), TJava.NewString(values[0]), document_);
                end;
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            Self.logUtil.putF('NameSpaceRequestParams: ' + Self.getMap().toString() + ''#10'toHashMap(): ' + hashMap_.toString() + ''#10'Document Created: ' + TXmlDocumentHelper.toString(document_), TJava.Box(Self), 'toHashMap()');
        end;
        hashMap_.put(TJava.Box(TNameSpaceRequestParamData.DOCUMENT), TJava.Box(document_));
        Exit(hashMap_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


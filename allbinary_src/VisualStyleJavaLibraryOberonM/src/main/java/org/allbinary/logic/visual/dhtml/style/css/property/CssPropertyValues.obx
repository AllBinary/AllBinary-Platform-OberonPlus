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
// package org.allbinary.logic.visual.dhtml.style.css.property
unit CssPropertyValues;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, Document, Node;

type
  {AB:TYPES}
  TCssPropertyValues = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    propertyValueVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  CssPropertyValueData, CssPropertyData, BasicArrayListD, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TCssPropertyValues.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TCssPropertyValues.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCssPropertyValues.Create;
begin
    inherited Create;
    InitFields;
        Self.propertyValueVector := TBasicArrayListD.Create();
end;
    

constructor TCssPropertyValues.Create(node_: TNode);
var
  indexPropertyValueHashMap: TJavaHashMap<TObject, TObject>;
  cssPropertyNodeVector: TBasicArrayList;
  size: Integer;
  cssPropertyValueNode: TNode;
  valueNode: TNode;
  propertyValue: string;
  indexNode: TNode;
  indexValue: string;
  index: Integer;
  size2: Integer;
  indexInt: Integer;
begin
    inherited Create;
    InitFields;
        indexPropertyValueHashMap := TStdUtil.getInstance().createHashMap();
        Self.propertyValueVector := TBasicArrayListD.Create();
        cssPropertyNodeVector := TDomSearchHelper.getAllNodes(TCssPropertyValueData.getInstance().NAME, node_.getChildNodes());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().STYLE) then begin
            Self.logUtil.putF('Number Of Properties: ' + IntToStr(cssPropertyNodeVector.size()), TJava.Box(Self), 'CssProperties()');
        end;
        size := cssPropertyNodeVector.size();
        for index := 0 to size - 1 do begin
            cssPropertyValueNode := TNode(TJava.ToObject(cssPropertyNodeVector.get(index)));
            valueNode := TDomSearchHelper.getNode(TDomData.VALUE, cssPropertyValueNode.getChildNodes());
            propertyValue := TDomNodeHelper.getTextNodeValue(valueNode);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().STYLE) then begin
                Self.logUtil.putF('Property Value: ' + propertyValue, TJava.Box(Self), 'CssProperties()');
            end;
            indexNode := TDomSearchHelper.getNode(TDomData.INDEX, cssPropertyValueNode.getChildNodes());
            indexValue := TDomNodeHelper.getTextNodeValue(indexNode);
            indexPropertyValueHashMap.put(TJava.Box(indexValue), TJava.Box(propertyValue));
        end;
        size2 := indexPropertyValueHashMap.keySet().size();
        for index := 0 to size2 - 1 do begin
            indexInt := index;
            propertyValue := TJava.UnboxString(TJava.ToObject(indexPropertyValueHashMap.get(TJava.Box(indexInt.toString()))));
            Self.propertyValueVector.add(TJava.Box(propertyValue));
        end;
end;
    

function TCssPropertyValues.toHashMap: TJavaHashMap<TObject, TObject>;
var
  commonSeps_: TCommonSeps;
  cssPropertyValueData_: TCssPropertyValueData;
  hashMap_: TJavaHashMap<TObject, TObject>;
  stringBuffer: TStringMaker;
  size: Integer;
  value: string;
  index: Integer;
begin
        commonSeps_ := TCommonSeps.getInstance();
        cssPropertyValueData_ := TCssPropertyValueData.getInstance();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        stringBuffer := TStringMaker.Create();
        size := Self.propertyValueVector.size();
        index := 0;
        while (index) < (size) do begin
            value := TJava.UnboxString(TJava.ToObject(Self.propertyValueVector.get(index)));
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(cssPropertyValueData_.NAME);
            stringBuffer.append(commonSeps_.BRACKET_OPEN);
            stringBuffer.appendint(index);
            stringBuffer.append(commonSeps_.BRACKET_CLOSE);
            hashMap_.put(TJava.Box(stringBuffer.toString()), TJava.Box(value));
            Inc(index);
            Inc(index);
        end;
        Exit(hashMap_);
end;
    

// throws Exception
function TCssPropertyValues.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            hashMap_ := Self.toHashMap();
            Self.logUtil.putF('CssPropertyValues HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toXmlNode()');
        end;
        Exit(TModDomHelper.createNameValueIndexNodes(document_, TCssPropertyData.getInstance().VALUES, TCssPropertyValueData.getInstance().NAME, Self.propertyValueVector));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


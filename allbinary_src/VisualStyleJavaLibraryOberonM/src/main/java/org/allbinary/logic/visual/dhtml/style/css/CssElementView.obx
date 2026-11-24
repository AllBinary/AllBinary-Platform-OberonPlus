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
// package org.allbinary.logic.visual.dhtml.style.css
unit CssElementView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, CommonStrings, Document, Node;

type
  {AB:TYPES}
  TCssElementView = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    TITLE_: string;
    DESCRIPTION_: string;
    value: string;
    title: string;
    description: string;
    cssElementVector: TBasicArrayList;
    cssPropertyVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        function getValue: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  CssElementData, CssElementsValidationFactory, BasicArrayListD, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil, StringMaker, StringUtil, CssPropertiesValidationFactory, NodeList;


{AB:CODE}

procedure TCssElementView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.TITLE_ := 'title';
  Self.DESCRIPTION_ := 'description';
  
  
  
  
  
end;

function TCssElementView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCssElementView.Create;
var
  stringUtil_: TStringUtil;
begin
    inherited Create;
    InitFields;
        Self.cssPropertyVector := TBasicArrayListD.Create();
        stringUtil_ := TStringUtil.getInstance();
        Self.title := stringUtil_.EMPTY_STRING;
        Self.description := stringUtil_.EMPTY_STRING;
        Self.value := stringUtil_.EMPTY_STRING;
end;
    

constructor TCssElementView.Create(node_: TNode);
var
  valueNode: TNode;
  titleValueNode: TNode;
  stringUtil_: TStringUtil;
  descriptionValueNode: TNode;
  cssElementStyleNodeVector: TBasicArrayList;
  nodeList_: TNodeList;
begin
    inherited Create;
    InitFields;
        try
            valueNode := TDomSearchHelper.getNode(TDomData.VALUE, node_.getChildNodes());
            Self.value := TDomNodeHelper.getTextNodeValue(valueNode);
            titleValueNode := TDomSearchHelper.getNodeNoThrow(Self.TITLE_, node_.getChildNodes());
            if (titleValueNode) <> (nil) then begin
                Self.title := TDomNodeHelper.getTextNodeValue(titleValueNode);
            end else begin
                stringUtil_ := TStringUtil.getInstance();
                Self.title := stringUtil_.EMPTY_STRING;
            end;
            descriptionValueNode := TDomSearchHelper.getNodeNoThrow(Self.DESCRIPTION_, node_.getChildNodes());
            if (descriptionValueNode) <> (nil) then begin
                Self.description := TDomNodeHelper.getTextNodeValue(descriptionValueNode);
            end else begin
                Self.description := TStringUtil.getInstance().EMPTY_STRING;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(TStringMaker.Create().append('Value: ').append(Self.value).append(''#10'Title: ').append(Self.title).append(''#10'Description: ').append(Self.description).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            end;
            cssElementStyleNodeVector := TDomSearchHelper.getAllNodes(TCssElementData.getInstance().NAME, node_.getChildNodes());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Child Css Elements: ' + IntToStr(cssElementStyleNodeVector.size()), TJava.Box(Self), 'CssElementView()');
            end;
            Self.cssElementVector := TCssElementsValidationFactory.getInstance(cssElementStyleNodeVector);
            nodeList_ := node_.getChildNodes();
            Self.cssPropertyVector := TCssPropertiesValidationFactory.getInstance(nodeList_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(TStringMaker.Create().append('Value: ').append(Self.value).append(''#10'Title: ').append(Self.title).append(''#10'Description: ').append(Self.description).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise SysUtils.Exception.Create('CssElementView');
            end;
        end;
end;
    

function TCssElementView.getValue: string;
begin
        Exit(Self.value);
end;
    

function TCssElementView.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TDomData.VALUE), TJava.Box(Self.value));
        hashMap_.put(TJava.Box(Self.TITLE_), TJava.Box(Self.title));
        hashMap_.put(TJava.Box(Self.DESCRIPTION_), TJava.Box(Self.description));
        Exit(hashMap_);
end;
    

// throws Exception
function TCssElementView.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
  size: Integer;
  cssPropertyDomNodeInterface: IDomNodeInterface;
  index: Integer;
  size2: Integer;
  cssElementDomNodeInterface: IDomNodeInterface;
begin
        hashMap_ := Self.toHashMap();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('CssView HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toXmlNode');
        end;
        node_ := TModDomHelper.createNodeWithValueNodes(document_, TCssElementData.getInstance().NAME, hashMap_);
        size := Self.cssPropertyVector.size();
        for index := 0 to size - 1 do begin
            cssPropertyDomNodeInterface := (TJava.ToObject(Self.cssPropertyVector.get(index)) as IDomNodeInterface);
            node_.appendChild(cssPropertyDomNodeInterface.toXmlNode(document_));
        end;
        size2 := Self.cssElementVector.size();
        for index := 0 to size2 - 1 do begin
            cssElementDomNodeInterface := (TJava.ToObject(Self.cssElementVector.get(index)) as IDomNodeInterface);
            node_.appendChild(cssElementDomNodeInterface.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


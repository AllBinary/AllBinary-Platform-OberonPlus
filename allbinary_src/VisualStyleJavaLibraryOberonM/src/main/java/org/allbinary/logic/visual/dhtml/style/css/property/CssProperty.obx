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
unit CssProperty;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, Document, Node, CssPropertyValues;

type
  {AB:TYPES}
  TCssProperty = class(TInterfacedObject, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    propertyName: string;
    cssPropertyValues: TCssPropertyValues;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string); overload;
        constructor Create(node_: TNode); overload;
        function getName: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  CssPropertyData, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil;


{AB:CODE}

procedure TCssProperty.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TCssProperty.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCssProperty.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.propertyName := name;
        Self.cssPropertyValues := TCssPropertyValues.Create();
end;
    

constructor TCssProperty.Create(node_: TNode);
var
  propertyNode: TNode;
  propertyValuesNode: TNode;
begin
    inherited Create;
    InitFields;
        propertyNode := TDomSearchHelper.getNode(TDomData.VALUE, node_.getChildNodes());
        Self.propertyName := TDomNodeHelper.getTextNodeValue(propertyNode);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().STYLE) then begin
            Self.logUtil.putF('Name: ' + Self.getName(), TJava.Box(Self), 'CssProperty()');
        end;
        propertyValuesNode := TDomSearchHelper.getNode(TCssPropertyData.getInstance().VALUES, node_.getChildNodes());
        Self.cssPropertyValues := TCssPropertyValues.Create(propertyValuesNode);
end;
    

function TCssProperty.getName: string;
begin
        Exit(Self.propertyName);
end;
    

function TCssProperty.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TCssPropertyData.getInstance().NAME), TJava.Box(Self.propertyName));
        Exit(hashMap_);
end;
    

// throws Exception
function TCssProperty.toXmlNode(document_: TDocument): TNode;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  node_: TNode;
begin
        hashMap_ := Self.toHashMap();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('CssView HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toXmlNode()');
        end;
        node_ := TModDomHelper.createNameValueNodes(document_, TCssPropertyData.getInstance().NAME, Self.propertyName);
        node_.appendChild(Self.cssPropertyValues.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


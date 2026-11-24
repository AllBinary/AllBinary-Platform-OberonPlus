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
unit ModDomHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Document, Node;

type
  {AB:TYPES}
  TModDomHelper = class(TObject)
  public
        constructor Create;
        class function createTextNode(document_: TDocument; name: string; text: string): TNode; static;
        class function createValueNode(document_: TDocument; text: string): TNode; static;
        class function createNameNode(document_: TDocument; text: string): TNode; static;
        class function createIndexNode(document_: TDocument; index: Integer): TNode; static;
        class function createNameValueNodes(document_: TDocument; elementName: string; nameText: string; valueText: string): TNode; overload; static;
        class function createNameValueNodes(document_: TDocument; elementNameAndNameText: string; valueText: string): TNode; overload; static;
        class function createNameValueIndexNodes(document_: TDocument; elementNameAndNameText: string; index: Integer; valueText: string): TNode; overload; static;
        class function createNameValueNodes(document_: TDocument; rootNode: string; hashMap_: TJavaHashMap<TObject, TObject>): TNode; overload; static;
        class function createNameValueNodes(document_: TDocument; node_: TNode; hashMap_: TJavaHashMap<TObject, TObject>): TNode; overload; static;
        class function createNameValueNodes(document_: TDocument; rootNodeName: string; duplicateNodeName: string; valueVector: TBasicArrayList): TNode; overload; static;
        class function createNameValueIndexNodes(document_: TDocument; rootNodeName: string; duplicateNodeName: string; valueVector: TBasicArrayList): TNode; overload; static;
        class function createNodeWithValueNodes(document_: TDocument; rootNode: string; hashMap_: TJavaHashMap<TObject, TObject>): TNode; overload; static;
        class function createNodeWithValueNodes(document_: TDocument; node_: TNode; hashMap_: TJavaHashMap<TObject, TObject>): TNode; overload; static;
  end;

implementation
uses
  DomData, BasicArrayListD, ClassUtil, StringUtil, CommonSeps;


{AB:CODE}
    

constructor TModDomHelper.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TModDomHelper.createTextNode(document_: TDocument; name: string; text: string): TNode;
var
  newValueNode: TNode;
  newValueTextNode: TNode;
begin
        newValueNode := document_.createElement(name);
        newValueTextNode := document_.createTextNode(text);
        newValueNode.appendChild(newValueTextNode);
        Exit(newValueNode);
end;
    

// throws Exception
class function TModDomHelper.createValueNode(document_: TDocument; text: string): TNode;
begin
        Exit(TModDomHelper.createTextNode(document_, TDomData.VALUE, text));
end;
    

// throws Exception
class function TModDomHelper.createNameNode(document_: TDocument; text: string): TNode;
begin
        Exit(TModDomHelper.createTextNode(document_, TDomData.NAME, text));
end;
    

// throws Exception
class function TModDomHelper.createIndexNode(document_: TDocument; index: Integer): TNode;
begin
        Exit(TModDomHelper.createTextNode(document_, TDomData.INDEX, index.toString()));
end;
    

// throws Exception
class function TModDomHelper.createNameValueNodes(document_: TDocument; elementName: string; nameText: string; valueText: string): TNode;
var
  newNode: TNode;
begin
        newNode := document_.createElement(elementName);
        newNode.appendChild(TModDomHelper.createNameNode(document_, nameText));
        newNode.appendChild(TModDomHelper.createValueNode(document_, valueText));
        Exit(newNode);
end;
    

// throws Exception
class function TModDomHelper.createNameValueNodes(document_: TDocument; elementNameAndNameText: string; valueText: string): TNode;
var
  newNode: TNode;
begin
        newNode := TModDomHelper.createNameValueNodes(document_, elementNameAndNameText, elementNameAndNameText, valueText);
        Exit(newNode);
end;
    

// throws Exception
class function TModDomHelper.createNameValueIndexNodes(document_: TDocument; elementNameAndNameText: string; index: Integer; valueText: string): TNode;
var
  newNode: TNode;
begin
        newNode := TModDomHelper.createNameValueNodes(document_, elementNameAndNameText, valueText);
        newNode.appendChild(TModDomHelper.createIndexNode(document_, index));
        Exit(newNode);
end;
    

// throws Exception
class function TModDomHelper.createNameValueNodes(document_: TDocument; rootNode: string; hashMap_: TJavaHashMap<TObject, TObject>): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(rootNode);
        Exit(TModDomHelper.createNameValueNodes(document_, node_, hashMap_));
end;
    

// throws Exception
class function TModDomHelper.createNameValueNodes(document_: TDocument; node_: TNode; hashMap_: TJavaHashMap<TObject, TObject>): TNode;
var
  stringUtil_: TStringUtil;
  keySet: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  objectKey: TObject;
  name: string;
  anyType: TObject;
  value: string;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        keySet := hashMap_.keySet();
        keyArray := keySet.toArray();
        size := System.Length(keyArray);
        for i := 0 to size - 1 do begin
            objectKey := TJava.Box(keyArray[i]);
            name := TJava.UnboxString(TJava.ToObject(objectKey));
            anyType := TJava.Box(TJava.Box(hashMap_.get(TJava.Box(objectKey))));
            if (anyType) = (nil) then begin
                value := stringUtil_.EMPTY_STRING;
                node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
            end else if (TJava.ToObject(anyType) is string) then begin
                value := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(anyType)));
                node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, value));
            end else if (TJava.ToObject(anyType) is TJavaHashMap<TObject, TObject>) then begin
                node_.appendChild(TModDomHelper.createNameValueNodes(document_, name, hashMap_));
            end else begin
                raise SysUtils.Exception.Create('HashMap value is the wrong instance and is: ' + TJava.ToString(TClassUtil.viewAll(anyType, TCommonSeps.getInstance().NEW_LINE)));
            end;
        end;
        Exit(node_);
end;
    

// throws Exception
class function TModDomHelper.createNameValueNodes(document_: TDocument; rootNodeName: string; duplicateNodeName: string; valueVector: TBasicArrayList): TNode;
var
  stringUtil_: TStringUtil;
  node_: TNode;
  size: Integer;
  value: string;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        node_ := document_.createElement(rootNodeName);
        size := valueVector.size();
        for i := 0 to size - 1 do begin
            value := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(valueVector.get(i))));
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, duplicateNodeName, value));
        end;
        Exit(node_);
end;
    

// throws Exception
class function TModDomHelper.createNameValueIndexNodes(document_: TDocument; rootNodeName: string; duplicateNodeName: string; valueVector: TBasicArrayList): TNode;
var
  stringUtil_: TStringUtil;
  node_: TNode;
  size: Integer;
  value: string;
  index: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        node_ := document_.createElement(rootNodeName);
        size := valueVector.size();
        for index := 0 to size - 1 do begin
            value := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(valueVector.get(index))));
            node_.appendChild(TModDomHelper.createNameValueIndexNodes(document_, duplicateNodeName, index, value));
        end;
        Exit(node_);
end;
    

// throws Exception
class function TModDomHelper.createNodeWithValueNodes(document_: TDocument; rootNode: string; hashMap_: TJavaHashMap<TObject, TObject>): TNode;
var
  node_: TNode;
begin
        node_ := document_.createElement(rootNode);
        Exit(TModDomHelper.createNodeWithValueNodes(document_, node_, hashMap_));
end;
    

// throws Exception
class function TModDomHelper.createNodeWithValueNodes(document_: TDocument; node_: TNode; hashMap_: TJavaHashMap<TObject, TObject>): TNode;
var
  stringUtil_: TStringUtil;
  keySet: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  name: string;
  anyType: TObject;
  value: string;
  i: Integer;
begin
        stringUtil_ := TStringUtil.getInstance();
        keySet := hashMap_.keySet();
        keyArray := keySet.toArray();
        size := System.Length(keyArray);
        for i := 0 to size - 1 do begin
            name := TJava.UnboxString(TJava.ToObject(keyArray[i]));
            anyType := TJava.Box(TJava.Box(hashMap_.get(TJava.Box(name))));
            value := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(anyType)));
            node_.appendChild(TModDomHelper.createTextNode(document_, name, value));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


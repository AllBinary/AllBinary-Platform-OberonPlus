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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output
unit ImageTypes;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Document, Node;

type
  {AB:TYPES}
  TImageTypes = class(TObject)
  public
    vector: TBasicArrayList;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        class function valueOf(anyType: TArray<TObject>): TImageTypes; static;
        function getVector: TBasicArrayList; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  ImageActionScriptOutputData, BasicArrayListD, DomNodeHelper, ModDomHelper, InputImageType, StdUtil, StringMaker, NodeList;


{AB:CODE}

procedure TImageTypes.InitFields;
begin
  Self.vector := TBasicArrayListD.Create();
end;
    

constructor TImageTypes.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TImageTypes.Create(node_: TNode);
var
  nodeList_: TNodeList;
  childNode: TNode;
  nextImageTypeString: string;
  index: Integer;
begin
    inherited Create;
    InitFields;
        nodeList_ := node_.getChildNodes();
        for index := 0 to nodeList_.getLength() - 1 do begin
            childNode := nodeList_.item(index);
            if (childNode.getNodeName().compareTo(TImageActionScriptOutputData.TYPE_)) = (0) then begin
                nextImageTypeString := TDomNodeHelper.getTextNodeValue(childNode);
                Self.getVector().add(TInputImageType.getInstance(nextImageTypeString));
            end else begin
                raise SysUtils.Exception.Create('ImageTypes Unknown Node');
            end;
        end;
end;
    

class function TImageTypes.valueOf(anyType: TArray<TObject>): TImageTypes;
var
  imageTypes_: TImageTypes;
  imageType: TInputImageType;
  index: Integer;
begin
        imageTypes_ := TImageTypes.Create();
        for index := 0 to System.Length(anyType) - 1 do begin
            imageType := TInputImageType.getInstance(TJava.UnboxString(TJava.ToObject(anyType[index])));
            imageTypes_.getVector().add(imageType);
        end;
        Exit(imageTypes_);
end;
    

function TImageTypes.getVector: TBasicArrayList;
begin
        Exit(Self.vector);
end;
    

// throws Exception
function TImageTypes.toXmlNode(document_: TDocument): TNode;
var
  newNode: TNode;
  size: Integer;
  imageType: TInputImageType;
  index: Integer;
begin
        newNode := document_.createElement(TImageActionScriptOutputData.TYPES);
        size := Self.vector.size();
        for index := 0 to size - 1 do begin
            imageType := TInputImageType(TJava.ToObject(Self.vector.get(index)));
            newNode.appendChild(TModDomHelper.createTextNode(document_, TImageActionScriptOutputData.TYPE_, imageType.getName()));
        end;
        Exit(newNode);
end;
    

function TImageTypes.toString: string;
var
  stringBuffer: TStringMaker;
  size: Integer;
  imageType: TInputImageType;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('ImageTypes: ');
        size := Self.vector.size();
        for index := 0 to size - 1 do begin
            imageType := TInputImageType(TJava.ToObject(Self.vector.get(index)));
            stringBuffer.append(imageType.getName());
            if (index) < ((size) - (1)) then begin
                stringBuffer.append(', ');
            end;
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


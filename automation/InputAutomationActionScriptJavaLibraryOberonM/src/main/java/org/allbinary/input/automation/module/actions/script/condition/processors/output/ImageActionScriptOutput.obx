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
unit ImageActionScriptOutput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Document, Node, ImageTypes, ImageActionScriptOutputJPanel, BasicProfileActionScriptOutput, ImageActionScriptOutputInterface;

type
  {AB:TYPES}
  TImageActionScriptOutput = class(TBasicProfileActionScriptOutput, IImageActionScriptOutputInterface)
  public
    logUtil: TLogUtil;
    saved: Boolean;
    display: Boolean;
    imageTypes: TImageTypes;
    actionScriptOutputJPanel: TImageActionScriptOutputJPanel;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create; overload;
        function getActionScriptOutputJPanel: TImageActionScriptOutputJPanel; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure process(frame: Int64); virtual;
        procedure showDialog; virtual;
        function isSaved: Boolean; virtual;
        procedure setSaved(saved: Boolean); virtual;
        function isDisplay: Boolean; virtual;
        procedure setDisplay(display: Boolean); virtual;
        function future_toString: string; virtual;
        procedure log; virtual;
        function getImageTypes: TImageTypes; virtual;
        procedure setImageTypes(imageTypes_: TImageTypes); virtual;
  end;

implementation
uses
  ImageActionScriptOutputData, ImageActionScriptOutputProcessor, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil, StringMaker, NodeList;


{AB:CODE}

procedure TImageActionScriptOutput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.saved := False;
  Self.display := False;
  
  
end;

function TImageActionScriptOutput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageActionScriptOutput.Create(node_: TNode);
var
  actionNode: TNode;
  nodeList_: TNodeList;
  childNode: TNode;
  booleanString: string;
  index: Integer;
begin
        inherited Create(TImageActionScriptOutput.NAME, node_);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        actionNode := TDomSearchHelper.getNode(TImageActionScriptOutputData.NAME, node_.getChildNodes());
        if (actionNode) <> (nil) then begin
            nodeList_ := actionNode.getChildNodes();
            for index := 0 to nodeList_.getLength() - 1 do begin
                childNode := nodeList_.item(index);
                if (childNode.getNodeName().compareTo(TImageActionScriptOutputData.SAVE)) = (0) then begin
                    booleanString := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setSaved(booleanString.booleanValue());
                end else if (childNode.getNodeName().compareTo(TImageActionScriptOutputData.DISPLAY)) = (0) then begin
                    booleanString := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setSaved(booleanString.booleanValue());
                end else if (childNode.getNodeName().compareTo(TImageActionScriptOutputData.TYPES)) = (0) then begin
                    Self.setImageTypes(TImageTypes.Create(childNode));
                end else begin
                    raise SysUtils.Exception.Create('Action Script Output Unknown Node');
                end;
            end;
        end else begin
            raise SysUtils.Exception.Create('Action Script Output Node Null');
        end;
        Self.setAllowsChildren(False);
        Self.actionScriptOutputJPanel := TImageActionScriptOutputJPanel.Create(Self);
end;
    

constructor TImageActionScriptOutput.Create;
begin
        inherited Create(TImageActionScriptOutput.NAME);
        InitFields;
        Self.setImageTypes(TImageTypes.Create());
        Self.setAllowsChildren(False);
        Self.actionScriptOutputJPanel := TImageActionScriptOutputJPanel.Create(Self);
end;
    

function TImageActionScriptOutput.getActionScriptOutputJPanel: TImageActionScriptOutputJPanel;
begin
        Exit(Self.actionScriptOutputJPanel);
end;
    

function TImageActionScriptOutput.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TImageActionScriptOutputData.DISPLAY), TJava.Box(BoolToStr(Self.isDisplay(), True)));
        hashMap_.put(TJava.Box(TImageActionScriptOutputData.SAVE), TJava.Box(BoolToStr(Self.isSaved(), True)));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TImageActionScriptOutput.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  newNode: TNode;
begin
        node_ := inherited toXmlNode(document_);
        newNode := TModDomHelper.createNodeWithValueNodes(document_, TImageActionScriptOutputData.NAME, Self.toHashMap());
        newNode.appendChild(Self.getImageTypes().toXmlNode(document_));
        node_.appendChild(newNode);
        Exit(node_);
end;
    

// throws Exception
procedure TImageActionScriptOutput.process(frame: Int64);
begin
        TImageActionScriptOutputProcessor.process(Self, frame);
end;
    

procedure TImageActionScriptOutput.showDialog;
begin
        Self.actionScriptOutputJPanel.getCapturedImageActionJDialog().setVisible(True);
end;
    

function TImageActionScriptOutput.isSaved: Boolean;
begin
        Exit(Self.saved);
end;
    

procedure TImageActionScriptOutput.setSaved(saved: Boolean);
begin
        Self.saved := saved;
end;
    

function TImageActionScriptOutput.isDisplay: Boolean;
begin
        Exit(Self.display);
end;
    

procedure TImageActionScriptOutput.setDisplay(display: Boolean);
begin
        Self.display := display;
end;
    

function TImageActionScriptOutput.future_toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(' Is Save: ');
        stringBuffer.appendboolean(Self.isSaved());
        stringBuffer.append(' Is Display: ');
        stringBuffer.appendboolean(Self.isDisplay());
        stringBuffer.append(' ');
        stringBuffer.append(Self.getImageTypes().toString());
        Exit(stringBuffer.toString());
end;
    

procedure TImageActionScriptOutput.log;
begin
        Self.logUtil.putF(Self.future_toString(), TJava.Box(Self), 'log');
end;
    

function TImageActionScriptOutput.getImageTypes: TImageTypes;
begin
        Exit(Self.imageTypes);
end;
    

procedure TImageActionScriptOutput.setImageTypes(imageTypes_: TImageTypes);
begin
        Self.imageTypes := imageTypes_;
end;

initialization
  {AB:INITIALIZATION}
  TImageActionScriptOutput.NAME := 'Captures';
  {AB:END}

end.


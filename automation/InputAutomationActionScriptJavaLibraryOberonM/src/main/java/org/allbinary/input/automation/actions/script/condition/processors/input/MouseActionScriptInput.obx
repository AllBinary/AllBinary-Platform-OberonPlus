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
// package org.allbinary.input.automation.actions.script.condition.processors.input
unit MouseActionScriptInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Document, Node, Point, MouseActionScriptInputJPanel, BasicProfileActionScriptInput, MouseActionScriptInputInterface;

type
  {AB:TYPES}
  TMouseActionScriptInput = class(TBasicProfileActionScriptInput, IMouseActionScriptInputInterface)
  public
    logUtil: TLogUtil;
    point: TPoint;
    buttons: Integer;
    mouseActionScriptInputJPanel: TMouseActionScriptInputJPanel;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create; overload;
        procedure setPoint(point_: TPoint); virtual;
        function getPoint: TPoint; virtual;
        function getButtonClicks: Integer; virtual;
        procedure setButtonClicks(buttons: Integer); virtual;
        procedure showDialog; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure process(frame: Int64); virtual;
        procedure log; virtual;
  end;

implementation
uses
  MouseActionScriptInputData, MouseInputAutomationProcessor, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil, BooleanFactory, StringMaker, NodeList;


{AB:CODE}

procedure TMouseActionScriptInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;

function TMouseActionScriptInput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMouseActionScriptInput.Create(node_: TNode);
var
  actionNode: TNode;
  nodeList_: TNodeList;
  childNode: TNode;
  mouseXNode: TNode;
  mouseXString: string;
  mouseXInteger: Integer;
  mouseYNode: TNode;
  mouseYString: string;
  mouseYInteger: Integer;
  newPoint: TPoint;
  buttons: string;
  index: Integer;
begin
        inherited Create(TMouseActionScriptInput.NAME, node_);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.point := TPoint.Create();
        actionNode := TDomSearchHelper.getNode(TMouseActionScriptInputData.NAME, node_.getChildNodes());
        if (actionNode) <> (nil) then begin
            nodeList_ := actionNode.getChildNodes();
            for index := 0 to nodeList_.getLength() - 1 do begin
                childNode := nodeList_.item(index);
                if (childNode.getNodeName().compareTo(TMouseActionScriptInputData.BUTTONS)) = (0) then begin
                    buttons := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setButtonClicks(TJava.IntValueOf(buttons));
                end else if (childNode.getNodeName().compareTo(TMouseActionScriptInputData.MOVE)) = (0) then begin
                    mouseXNode := TDomSearchHelper.getNode(TMouseActionScriptInputData.MOVE_X, childNode.getChildNodes());
                    mouseXString := TDomNodeHelper.getTextNodeValue(mouseXNode);
                    mouseXInteger := IntToStr(mouseXString);
                    mouseYNode := TDomSearchHelper.getNode(TMouseActionScriptInputData.MOVE_Y, childNode.getChildNodes());
                    mouseYString := TDomNodeHelper.getTextNodeValue(mouseYNode);
                    mouseYInteger := IntToStr(mouseYString);
                    newPoint := TPoint.Create((mouseXInteger), (mouseYInteger));
                    Self.setPoint(newPoint);
                end else begin
                    raise SysUtils.Exception.Create('Action Script Input Unknown Node');
                end;
            end;
        end else begin
            raise SysUtils.Exception.Create('Action Script Input Node Null');
        end;
        Self.setAllowsChildren(False);
        Self.mouseActionScriptInputJPanel := TMouseActionScriptInputJPanel.Create(Self);
end;
    

constructor TMouseActionScriptInput.Create;
begin
        inherited Create(TMouseActionScriptInput.NAME);
        InitFields;
        Self.point := TPoint.Create();
        Self.setAllowsChildren(False);
        Self.mouseActionScriptInputJPanel := TMouseActionScriptInputJPanel.Create(Self);
end;
    

procedure TMouseActionScriptInput.setPoint(point_: TPoint);
begin
        Self.point := point_;
end;
    

function TMouseActionScriptInput.getPoint: TPoint;
begin
        Exit(Self.point);
end;
    

function TMouseActionScriptInput.getButtonClicks: Integer;
begin
        Exit(Self.buttons);
end;
    

procedure TMouseActionScriptInput.setButtonClicks(buttons: Integer);
begin
        Self.buttons := buttons;
end;
    

procedure TMouseActionScriptInput.showDialog;
begin
        Self.mouseActionScriptInputJPanel.getMouseActionJDialog().setVisible(True);
end;
    

function TMouseActionScriptInput.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TMouseActionScriptInputData.BUTTONS), TJava.Box(IntToStr(Self.getButtonClicks())));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TMouseActionScriptInput.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  mouseNode: TNode;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        node_ := inherited toXmlNode(document_);
        mouseNode := TModDomHelper.createNodeWithValueNodes(document_, TMouseActionScriptInputData.NAME, Self.toHashMap());
        node_.appendChild(mouseNode);
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TMouseActionScriptInputData.MOVE_X), TJava.Box(IntToStr(Self.getPoint().x)));
        hashMap_.put(TJava.Box(TMouseActionScriptInputData.MOVE_Y), TJava.Box(IntToStr(Self.getPoint().y)));
        mouseNode.appendChild(TModDomHelper.createNodeWithValueNodes(document_, TMouseActionScriptInputData.MOVE, hashMap_));
        Exit(node_);
end;
    

// throws Exception
procedure TMouseActionScriptInput.process(frame: Int64);
begin
        TMouseInputAutomationProcessor.process(Self);
end;
    

procedure TMouseActionScriptInput.log;
var
  buttonStringBuffer: TStringMaker;
  booleanFactory_: TBooleanFactory;
begin
        buttonStringBuffer := TStringMaker.Create();
        buttonStringBuffer.append('1: ');
        booleanFactory_ := TBooleanFactory.getInstance();
        if (((Self.getButtonClicks()) and (TInputEvent.BUTTON1_MASK))) <> (0) then begin
            buttonStringBuffer.append(booleanFactory_.TRUE_STRING);
        end else begin
            buttonStringBuffer.append(booleanFactory_.FALSE_STRING);
        end;
        buttonStringBuffer.append(' 2: ');
        if (((Self.getButtonClicks()) and (TInputEvent.BUTTON2_MASK))) <> (0) then begin
            buttonStringBuffer.append(booleanFactory_.TRUE_STRING);
        end else begin
            buttonStringBuffer.append(booleanFactory_.FALSE_STRING);
        end;
        buttonStringBuffer.append(' 3: ');
        if (((Self.getButtonClicks()) and (TInputEvent.BUTTON3_MASK))) <> (0) then begin
            buttonStringBuffer.append(booleanFactory_.TRUE_STRING);
        end else begin
            buttonStringBuffer.append(booleanFactory_.FALSE_STRING);
        end;
        Self.logUtil.putF('Input Type: ' + Self.getInputRobotInterface().getName() + ' Point: ' + TJava.ToString(Self.getPoint()) + ' Buttons Clicked: ' + buttonStringBuffer.toString(), TJava.Box(Self), 'log');
end;

initialization
  {AB:INITIALIZATION}
  TMouseActionScriptInput.NAME := 'Mouse';
  {AB:END}

end.


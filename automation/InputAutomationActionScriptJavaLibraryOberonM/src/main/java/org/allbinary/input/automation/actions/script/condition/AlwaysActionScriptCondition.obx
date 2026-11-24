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
// package org.allbinary.input.automation.actions.script.condition
unit AlwaysActionScriptCondition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Document, Node, AlwaysActionScriptConditionJPanel, BasicProfileActionScriptCondition, AlwaysActionScriptConditionInterface;

type
  {AB:TYPES}
  TAlwaysActionScriptCondition = class(TBasicProfileActionScriptCondition, IAlwaysActionScriptConditionInterface)
  public
    logUtil: TLogUtil;
    alwaysActionScriptConditionJPanel: TAlwaysActionScriptConditionJPanel;
    isOn: Boolean;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create; overload;
        procedure init;
        function isIsOn: Boolean; virtual;
        procedure setIsOn(isOn: Boolean); virtual;
        procedure showDialog; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function shouldProcess(frame: Int64): Boolean; virtual;
        procedure log; virtual;
  end;

implementation
uses
  AlwaysActionScriptConditionData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil, NodeList;


{AB:CODE}

procedure TAlwaysActionScriptCondition.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TAlwaysActionScriptCondition.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAlwaysActionScriptCondition.Create(node_: TNode);
var
  actionNode: TNode;
  nodeList_: TNodeList;
  childNode: TNode;
  booleanString: string;
  index: Integer;
begin
        inherited Create(TAlwaysActionScriptCondition.NAME, node_);
        InitFields;
        actionNode := TDomSearchHelper.getNode(TAlwaysActionScriptConditionData.NAME, node_.getChildNodes());
        if (actionNode) <> (nil) then begin
            nodeList_ := actionNode.getChildNodes();
            for index := 0 to nodeList_.getLength() - 1 do begin
                childNode := nodeList_.item(index);
                if (childNode.getNodeName().compareTo(TAlwaysActionScriptConditionData.IS_ON)) = (0) then begin
                    booleanString := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setIsOn(booleanString.booleanValue());
                end else begin
                    raise SysUtils.Exception.Create('Action Script Condition Unknown Node');
                end;
            end;
        end else begin
            raise SysUtils.Exception.Create('Action Script Condition Node Null');
        end;
        Self.init();
end;
    

constructor TAlwaysActionScriptCondition.Create;
begin
        inherited Create(TAlwaysActionScriptCondition.NAME);
        InitFields;
        Self.init();
end;
    

procedure TAlwaysActionScriptCondition.init;
begin
        Self.alwaysActionScriptConditionJPanel := TAlwaysActionScriptConditionJPanel.Create(Self);
end;
    

function TAlwaysActionScriptCondition.isIsOn: Boolean;
begin
        Exit(Self.isOn);
end;
    

procedure TAlwaysActionScriptCondition.setIsOn(isOn: Boolean);
begin
        Self.isOn := isOn;
end;
    

procedure TAlwaysActionScriptCondition.showDialog;
begin
        Self.alwaysActionScriptConditionJPanel.getAlwaysActionJDialog().setVisible(True);
end;
    

function TAlwaysActionScriptCondition.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TAlwaysActionScriptConditionData.IS_ON), TJava.Box(BoolToStr(Self.isIsOn(), True)));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TAlwaysActionScriptCondition.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := inherited toXmlNode(document_);
        node_.appendChild(TModDomHelper.createNodeWithValueNodes(document_, TAlwaysActionScriptConditionData.NAME, Self.toHashMap()));
        Exit(node_);
end;
    

// throws Exception
function TAlwaysActionScriptCondition.shouldProcess(frame: Int64): Boolean;
begin
        if Self.isIsOn() then begin
            Exit(inherited shouldProcess(frame));
        end;
        Exit(False);
end;
    

procedure TAlwaysActionScriptCondition.log;
begin
        Self.logUtil.putF('Is On: ' + BoolToStr(Self.isIsOn(), True), TJava.Box(Self), 'log');
end;

initialization
  {AB:INITIALIZATION}
  TAlwaysActionScriptCondition.NAME := 'Always On/Off';
  {AB:END}

end.


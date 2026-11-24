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
unit TimeIntervalActionScriptCondition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TimeDelayHelper, Document, Node, TimeIntervalActionScriptConditionJPanel, BasicProfileActionScriptCondition, TimeIntervalActionScriptConditionInterface;

type
  {AB:TYPES}
  TTimeIntervalActionScriptCondition = class(TBasicProfileActionScriptCondition, ITimeIntervalActionScriptConditionInterface)
  public
    logUtil: TLogUtil;
    timeIntervalActionScriptConditionJPanel: TTimeIntervalActionScriptConditionJPanel;
    timeHelper: TTimeDelayHelper;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create; overload;
        procedure init;
        procedure showDialog; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure log; virtual;
        function getTimeDelayHelper: TTimeDelayHelper; virtual;
        procedure setTimeDelayHelper(timeHelper: TTimeDelayHelper); virtual;
        function shouldProcess(frame: Int64): Boolean; virtual;
  end;

implementation
uses
  TimeIntervalActionScriptConditionData, DomNodeHelper, DomSearchHelper, ModDomHelper, StdUtil, NodeList;


{AB:CODE}

procedure TTimeIntervalActionScriptCondition.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TTimeIntervalActionScriptCondition.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTimeIntervalActionScriptCondition.Create(node_: TNode);
var
  actionNode: TNode;
  nodeList_: TNodeList;
  childNode: TNode;
  interval: string;
  index: Integer;
begin
        inherited Create(TTimeIntervalActionScriptCondition.NAME, node_);
        InitFields;
        actionNode := TDomSearchHelper.getNode(TTimeIntervalActionScriptConditionData.NAME, node_.getChildNodes());
        if (actionNode) <> (nil) then begin
            nodeList_ := actionNode.getChildNodes();
            for index := 0 to nodeList_.getLength() - 1 do begin
                childNode := nodeList_.item(index);
                if (childNode.getNodeName().compareTo(TTimeIntervalActionScriptConditionData.TIME)) = (0) then begin
                    interval := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setTimeDelayHelper(TTimeDelayHelper.Create(IntToStr(interval)));
                end else begin
                    raise SysUtils.Exception.Create('Time Interval Action Script Condition Unknown Node');
                end;
            end;
        end else begin
            raise SysUtils.Exception.Create('Time Interval Action Script Condition Node Null');
        end;
        Self.init();
end;
    

constructor TTimeIntervalActionScriptCondition.Create;
begin
        inherited Create(TTimeIntervalActionScriptCondition.NAME);
        InitFields;
        Self.setTimeDelayHelper(TTimeDelayHelper.Create(0));
        Self.init();
end;
    

procedure TTimeIntervalActionScriptCondition.init;
begin
        Self.timeIntervalActionScriptConditionJPanel := TTimeIntervalActionScriptConditionJPanel.Create(Self);
end;
    

procedure TTimeIntervalActionScriptCondition.showDialog;
begin
        Self.timeIntervalActionScriptConditionJPanel.getTimeIntervalActionJDialog().setVisible(True);
end;
    

function TTimeIntervalActionScriptCondition.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TTimeIntervalActionScriptConditionData.TIME), TJava.Box(IntToStr(Self.timeHelper.delay)));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TTimeIntervalActionScriptCondition.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := inherited toXmlNode(document_);
        node_.appendChild(TModDomHelper.createNodeWithValueNodes(document_, TTimeIntervalActionScriptConditionData.NAME, Self.toHashMap()));
        Exit(node_);
end;
    

procedure TTimeIntervalActionScriptCondition.log;
begin
        Self.logUtil.putF('Time Interval: ' + TJava.ToString(Self.timeHelper.delay), TJava.Box(Self), 'log');
end;
    

function TTimeIntervalActionScriptCondition.getTimeDelayHelper: TTimeDelayHelper;
begin
        Exit(Self.timeHelper);
end;
    

procedure TTimeIntervalActionScriptCondition.setTimeDelayHelper(timeHelper: TTimeDelayHelper);
begin
        Self.timeHelper := timeHelper;
end;
    

// throws Exception
function TTimeIntervalActionScriptCondition.shouldProcess(frame: Int64): Boolean;
var
  timeHelper: TTimeDelayHelper;
begin
        timeHelper := Self.getTimeDelayHelper();
        if timeHelper.isTimeTNT() then begin
            timeHelper.setStartTimeTNT();
            Exit(inherited shouldProcess(frame));
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TTimeIntervalActionScriptCondition.NAME := 'Time Interval';
  {AB:END}

end.


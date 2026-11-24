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
unit BasicProfileActionScriptInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicProfileActionScriptProcessor, InputRobotInterface, LogUtil, Document, Node, ProfileActionScriptInputInterface;

type
  {AB:TYPES}
  TBasicProfileActionScriptInput = class(TBasicProfileActionScriptProcessor, IProfileActionScriptInputInterface)
  public
    logUtil: TLogUtil;
    inputRobotInterface: IInputRobotInterface;
    time: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(label_: string; node_: TNode); overload;
        constructor Create(label_: string); overload;
        function getTime: Integer; virtual;
        procedure setTime(time: Integer); virtual;
        function BasicProfileActionScriptInput_toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure setInputRobotInterface(inputRobotInterface_: IInputRobotInterface); virtual;
        function getInputRobotInterface: IInputRobotInterface; virtual;
        function toString: string; override;
  end;

implementation
uses
  GenericProfileActionScriptInputData, DomNodeHelper, DomSearchHelper, ModDomHelper, InputRobotFactory, StdUtil, StringMaker, StringUtil, ABHashtable;


{AB:CODE}

procedure TBasicProfileActionScriptInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TBasicProfileActionScriptInput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicProfileActionScriptInput.Create(label_: string; node_: TNode);
var
  actionNode: TNode;
  inputTypeString: string;
  timeNode: TNode;
  delayString: string;
begin
        inherited Create(label_, node_);
        InitFields;
        Self.logUtil.putF(TJava.ToString(Self.commonStrings.START) + label_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        actionNode := TDomSearchHelper.getNode(TGenericProfileActionScriptInputData.TYPE_, node_.getChildNodes());
        inputTypeString := TDomNodeHelper.getTextNodeValue(actionNode);
        timeNode := TDomSearchHelper.getNodeNoThrow(TGenericProfileActionScriptInputData.DELAY, node_.getChildNodes());
        if (timeNode) <> (nil) then begin
            delayString := TDomNodeHelper.getTextNodeValue(timeNode);
            Self.setTime(StrToInt(delayString));
        end else begin
            Self.setTime(0);
        end;
        Self.setInputRobotInterface(TInputRobotFactory.getInstance().get(inputTypeString));
end;
    

constructor TBasicProfileActionScriptInput.Create(label_: string);
var
  inputRobotFactory_: TInputRobotFactory;
  hashtable: TABHashtable<TObject, TObject>;
  set_: ISet;
  iterator: IIterator;
begin
        inherited Create(label_);
        InitFields;
        Self.logUtil.putF(TJava.ToString(Self.commonStrings.START) + label_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        inputRobotFactory_ := TInputRobotFactory.getInstance();
        hashtable := TABHashtable<TObject, TObject>(TJava.ToObject(inputRobotFactory_.get()));
        set_ := hashtable.keySet();
        iterator := set_.iterator();
        Self.setInputRobotInterface(inputRobotFactory_.get(TJava.UnboxString(TJava.ToObject(iterator.next()))));
        Self.setTime(0);
end;
    

function TBasicProfileActionScriptInput.getTime: Integer;
begin
        Exit(Self.time);
end;
    

procedure TBasicProfileActionScriptInput.setTime(time: Integer);
begin
        Self.time := time;
end;
    

function TBasicProfileActionScriptInput.BasicProfileActionScriptInput_toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TGenericProfileActionScriptInputData.TYPE_), TJava.Box(Self.getInputRobotInterface().getName()));
        hashMap_.put(TJava.Box(TGenericProfileActionScriptInputData.DELAY), TJava.Box(IntToStr(Self.getTime())));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TBasicProfileActionScriptInput.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createNodeWithValueNodes(document_, TGenericProfileActionScriptInputData.NAME, Self.BasicProfileActionScriptInput_toHashMap());
        Exit(node_);
end;
    

procedure TBasicProfileActionScriptInput.setInputRobotInterface(inputRobotInterface_: IInputRobotInterface);
begin
        Self.inputRobotInterface := inputRobotInterface_;
end;
    

function TBasicProfileActionScriptInput.getInputRobotInterface: IInputRobotInterface;
begin
        Exit(Self.inputRobotInterface);
end;
    

function TBasicProfileActionScriptInput.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(' Input Type: ');
        if (Self.getInputRobotInterface()) <> (nil) then begin
            stringBuffer.append(Self.getInputRobotInterface().getName());
        end else begin
            stringBuffer.append(TStringUtil.getInstance().NULL_STRING);
        end;
        stringBuffer.append(' Time: ');
        stringBuffer.appendlong(Int64(Self.getTime()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


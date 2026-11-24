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
unit KeyboardActionScriptInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Document, Node, KeyboardActionScriptInputJPanel, BasicProfileActionScriptInput, KeyboardActionScriptInputInterface;

type
  {AB:TYPES}
  TKeyboardActionScriptInput = class(TBasicProfileActionScriptInput, IKeyboardActionScriptInputInterface)
  public
    logUtil: TLogUtil;
    keyArray: TArray<Integer>;
    keyboardActionScriptInputJPanel: TKeyboardActionScriptInputJPanel;
    press: Boolean;
    release: Boolean;
    delayBetweenKeys: Integer;
    class var NAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(node_: TNode); overload;
        constructor Create; overload;
        function getDelayBetweenKeys: Integer; virtual;
        procedure setDelayBetweenKeys(delayBetweenKeys: Integer); virtual;
        function isPress: Boolean; virtual;
        procedure setPress(press: Boolean); virtual;
        function isRelease: Boolean; virtual;
        procedure setRelease(release: Boolean); virtual;
        function isNormal: Boolean; virtual;
        procedure setNormal; virtual;
        function getKeyArray: TArray<Integer>; virtual;
        procedure setKeyArray(keyArray: TArray<Integer>); virtual;
        procedure showDialog; virtual;
        function getText: string; overload; virtual;
        procedure setText(text: string); virtual;
        class function getText(integerArray: TArray<Integer>): string; overload; static;
        function integerArrayValue(text: string): TArray<Integer>;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure process(frame: Int64); virtual;
        procedure log; virtual;
        function toString: string; override;
  end;

implementation
uses
  KeyboardActionScriptInputData, KeyboardInputAutomationProcessor, BasicArrayList, BasicArrayListD, DomNodeHelper, DomSearchHelper, ModDomHelper, KeySingletonFactory, KeyUtil, StdUtil, StringMaker, CommonLabels, NodeList;


{AB:CODE}

procedure TKeyboardActionScriptInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.keyArray := TArray<Integer>.Create(TKeySingletonFactory.getInstance(TKeyEvent.VK_0));
  
  
  
  
end;

function TKeyboardActionScriptInput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TKeyboardActionScriptInput.Create(node_: TNode);
var
  actionNode: TNode;
  nodeList_: TNodeList;
  vector: TBasicArrayList;
  childNode: TNode;
  value: string;
  time: string;
  keyString: string;
  index: Integer;
begin
        inherited Create(TKeyboardActionScriptInput.NAME, node_);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        actionNode := TDomSearchHelper.getNode(TKeyboardActionScriptInputData.NAME, node_.getChildNodes());
        if (actionNode) <> (nil) then begin
            nodeList_ := actionNode.getChildNodes();
            vector := TBasicArrayListD.Create();
            for index := 0 to nodeList_.getLength() - 1 do begin
                childNode := nodeList_.item(index);
                if childNode.getNodeName().startsWith(TKeyboardActionScriptInputData.KEY) then begin
                    keyString := TDomNodeHelper.getTextNodeValue(childNode);
                    vector.add(TJava.Box(IntToStr(keyString)));
                end else if (childNode.getNodeName().compareTo(TKeyboardActionScriptInputData.DELAY_BETWEEN_KEYS)) = (0) then begin
                    time := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setDelayBetweenKeys(StrToInt(time));
                end else if (childNode.getNodeName().compareTo(TKeyboardActionScriptInputData.PRESS)) = (0) then begin
                    value := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setPress(BoolToStr(value, True));
                end else if (childNode.getNodeName().compareTo(TKeyboardActionScriptInputData.RELEASE)) = (0) then begin
                    value := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setRelease(BoolToStr(value, True));
                end else begin
                    raise SysUtils.Exception.Create('Action Script Input Unknown Node');
                end;
            end;
            Self.setKeyArray(TJava.UnboxArray<Integer>(TJava.ToObject(vector.toArrayType(TJava.NewArray<Integer>(vector.size())))));
        end else begin
            raise SysUtils.Exception.Create('Action Script Input Node Null');
        end;
        Self.setAllowsChildren(False);
        if (not (Self.isPress())) and (not (Self.isRelease())) then begin
            Self.setNormal();
        end;
        Self.keyboardActionScriptInputJPanel := TKeyboardActionScriptInputJPanel.Create(Self);
end;
    

constructor TKeyboardActionScriptInput.Create;
begin
        inherited Create(TKeyboardActionScriptInput.NAME);
        InitFields;
        if (not (Self.isPress())) and (not (Self.isRelease())) then begin
            Self.setNormal();
        end;
        Self.setAllowsChildren(False);
        Self.setTime(120);
        Self.keyboardActionScriptInputJPanel := TKeyboardActionScriptInputJPanel.Create(Self);
end;
    

function TKeyboardActionScriptInput.getDelayBetweenKeys: Integer;
begin
        Exit(Self.delayBetweenKeys);
end;
    

procedure TKeyboardActionScriptInput.setDelayBetweenKeys(delayBetweenKeys: Integer);
begin
        Self.delayBetweenKeys := delayBetweenKeys;
end;
    

function TKeyboardActionScriptInput.isPress: Boolean;
begin
        Exit(Self.press);
end;
    

procedure TKeyboardActionScriptInput.setPress(press: Boolean);
begin
        Self.press := press;
end;
    

function TKeyboardActionScriptInput.isRelease: Boolean;
begin
        Exit(Self.release);
end;
    

procedure TKeyboardActionScriptInput.setRelease(release: Boolean);
begin
        Self.release := release;
end;
    

function TKeyboardActionScriptInput.isNormal: Boolean;
begin
        Exit((Self.isRelease()) and (Self.isPress()));
end;
    

procedure TKeyboardActionScriptInput.setNormal;
begin
        Self.setPress(True);
        Self.setRelease(True);
end;
    

function TKeyboardActionScriptInput.getKeyArray: TArray<Integer>;
begin
        Exit(Self.keyArray);
end;
    

procedure TKeyboardActionScriptInput.setKeyArray(keyArray: TArray<Integer>);
begin
        if (keyArray) <> (nil) then begin
            Self.logUtil.putF((TCommonLabels.getInstance().START) + (System.Length(keyArray)), TJava.Box(Self), 'setKeyArray');
        end;
        Self.keyArray := keyArray;
end;
    

procedure TKeyboardActionScriptInput.showDialog;
begin
        Self.keyboardActionScriptInputJPanel.getKeyActionJDialog().setVisible(True);
end;
    

function TKeyboardActionScriptInput.getText: string;
begin
        Exit(Self.getText(Self.getKeyArray()));
end;
    

procedure TKeyboardActionScriptInput.setText(text: string);
var
  integerArray: TArray<Integer>;
begin
        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START) + text, TJava.Box(Self), 'setText');
        integerArray := Self.integerArrayValue(text);
        Self.setKeyArray(integerArray);
end;
    

class function TKeyboardActionScriptInput.getText(integerArray: TArray<Integer>): string;
var
  index: Integer;
  stringBuffer: TStringMaker;
  nextInteger: Integer;
begin
        index := 0;
        stringBuffer := TStringMaker.Create();
        while (index) < (System.Length(integerArray)) do begin
            nextInteger := integerArray[index];
            if TKeyUtil.isNormallyDisplayed(nextInteger) then begin
                stringBuffer.append(TKeyEvent.getKeyText(nextInteger));
            end else begin
                stringBuffer.append('&#' + IntToStr(nextInteger) + ';');
            end;
            Inc(index);
        end;
        Exit(stringBuffer.toString());
end;
    

function TKeyboardActionScriptInput.integerArrayValue(text: string): TArray<Integer>;
var
  vector: TBasicArrayList;
  index: Integer;
  aChar: WideChar;
  endIndex: Integer;
  nextCharString: string;
  integerArray: TArray<Integer>;
begin
        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START) + text, TJava.Box(Self), 'integerArrayValue');
        vector := TBasicArrayListD.Create();
        index := 0;
        while (index) < (System.Length(text)) do begin
            aChar := text[(index) + 1];
            if (aChar) = ('&') then begin
                if (text[((index) + (1)) + 1]) = ('#') then begin
                    endIndex := text.indexOf(';', (index) + (1));
                    if (endIndex) <> (-1) then begin
                        nextCharString := Copy(text, ((index) + (2)) + 1, (endIndex) - ((index) + (2)));
                        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().NEXT) + ' Char String: ' + nextCharString, TJava.Box(Self), 'integerArrayValue');
                        vector.add(TJava.Box(IntToStr(Copy(nextCharString, (index) + 1, (System.Length(nextCharString)) - (index)))));
                        index := ((index) + (System.Length(nextCharString))) + (3);
                        Continue;
                    end;
                end;
            end;
            vector.add(TJava.Box(TKeySingletonFactory.getHashtable().get(TJava.Box(TJava.ToString(aChar)))));
            Inc(index);
        end;
        integerArray := TJava.UnboxArray<Integer>(TJava.ToObject(vector.toArrayType(TJava.NewArray<Integer>(vector.size()))));
        Exit(integerArray);
end;
    

function TKeyboardActionScriptInput.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  index: Integer;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        for index := 0 to System.Length(Self.getKeyArray()) - 1 do begin
            hashMap_.put(TJava.Box((TKeyboardActionScriptInputData.KEY) + (index)), TJava.Box(IntToStr(Self.getKeyArray()[index])));
        end;
        hashMap_.put(TJava.Box(TKeyboardActionScriptInputData.DELAY_BETWEEN_KEYS), TJava.Box(IntToStr(Self.getDelayBetweenKeys())));
        hashMap_.put(TJava.Box(TKeyboardActionScriptInputData.PRESS), TJava.Box(BoolToStr(Self.isPress(), True)));
        hashMap_.put(TJava.Box(TKeyboardActionScriptInputData.RELEASE), TJava.Box(BoolToStr(Self.isRelease(), True)));
        Self.logUtil.putF('HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'toHashMap()');
        Exit(hashMap_);
end;
    

// throws Exception
function TKeyboardActionScriptInput.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := inherited toXmlNode(document_);
        node_.appendChild(TModDomHelper.createNodeWithValueNodes(document_, TKeyboardActionScriptInputData.NAME, Self.toHashMap()));
        Exit(node_);
end;
    

// throws Exception
procedure TKeyboardActionScriptInput.process(frame: Int64);
begin
        TKeyboardInputAutomationProcessor.process(Self);
end;
    

procedure TKeyboardActionScriptInput.log;
begin
        Self.logUtil.putF(Self.toString(), TJava.Box(Self), 'log');
end;
    

function TKeyboardActionScriptInput.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(' Text: ');
        stringBuffer.append(Self.getText());
        stringBuffer.append(' isPress: ');
        stringBuffer.appendboolean(Self.isPress());
        stringBuffer.append(' isRelease: ');
        stringBuffer.appendboolean(Self.isRelease());
        stringBuffer.append(' Between Key Delay: ');
        stringBuffer.appendint(Self.getDelayBetweenKeys());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TKeyboardActionScriptInput.NAME := 'Keyboard';
  {AB:END}

end.


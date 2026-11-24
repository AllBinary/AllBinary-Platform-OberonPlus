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
// package org.allbinary.input.automation.module.configuration
unit InputAutomationModuleConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputAutomationModuleFactoryInterface, LogUtil, AbeClientInformationInterface, CommonStrings, Document, Node;

type
  {AB:TYPES}
  TInputAutomationModuleConfiguration = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    className: string;
    name: string;
    inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; node_: TNode); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; name: string; className: string); overload;
        constructor Create(inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface); overload;
        procedure init(abeClientInformation: IAbeClientInformationInterface; node_: TNode); overload; virtual;
        procedure init(abeClientInformation: IAbeClientInformationInterface); overload; virtual;
        function toDomNode(document_: TDocument): TNode; virtual;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function getClassName: string; virtual;
        procedure setClassName(className: string); virtual;
        function getInputAutomationModuleInterface: IInputAutomationModuleFactoryInterface; virtual;
        procedure setInputAutomationModuleInterface(inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface); virtual;
  end;

implementation
uses
  DynamicObjectData, DomNodeHelper, DomSearchHelper, ModDomHelper, InputAutomationData, InputAutomationModuleData, AbeFactory, NodeList;


{AB:CODE}

procedure TInputAutomationModuleConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;
    

constructor TInputAutomationModuleConfiguration.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TInputAutomationModuleConfiguration.Create(abeClientInformation: IAbeClientInformationInterface; node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.init(abeClientInformation, node_);
end;
    

constructor TInputAutomationModuleConfiguration.Create(abeClientInformation: IAbeClientInformationInterface; name: string; className: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.setClassName(className);
        Self.init(abeClientInformation);
end;
    

constructor TInputAutomationModuleConfiguration.Create(inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.setInputAutomationModuleInterface(inputAutomationModuleInterface);
        Self.setClassName(TJava.ToObject(Self.inputAutomationModuleInterface).ClassType.ClassName);
end;
    

// throws Exception
procedure TInputAutomationModuleConfiguration.init(abeClientInformation: IAbeClientInformationInterface; node_: TNode);
var
  nodeList_: TNodeList;
  classNameNode: TNode;
begin
        nodeList_ := node_.getChildNodes();
        if (nodeList_) <> (nil) then begin
            classNameNode := TDomSearchHelper.getNode(TDynamicObjectData.NAME, nodeList_);
            if (classNameNode) <> (nil) then begin
                Self.setClassName(TDomNodeHelper.getTextNodeValue(classNameNode));
                Self.init(abeClientInformation);
            end else begin
                Self.logUtil.putF('Class Node Null', TJava.Box(Self), Self.commonStrings.INIT);
            end;
        end else begin
            Self.logUtil.putF(TJava.ToString(TInputAutomationData.NAME) + ' Node Has No Children', TJava.Box(Self), 'Contructor');
        end;
end;
    

procedure TInputAutomationModuleConfiguration.init(abeClientInformation: IAbeClientInformationInterface);
begin
        try
            Self.logUtil.putF('Name: ' + Self.getName(), TJava.Box(Self), Self.commonStrings.INIT);
            Self.logUtil.putF('ClassName: ' + Self.className, TJava.Box(Self), Self.commonStrings.INIT);
            Self.setInputAutomationModuleInterface((TJava.ToObject(TAbeFactory.getInstance().getInstance().getInstance(abeClientInformation, Self.getClassName())) as IInputAutomationModuleFactoryInterface));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            raise SysUtils.Exception.Create('');
            end;
        end;
end;
    

// throws Exception
function TInputAutomationModuleConfiguration.toDomNode(document_: TDocument): TNode;
var
  node_: TNode;
  classNameNode: TNode;
begin
        node_ := document_.createElement(TInputAutomationModuleData.NAME);
        classNameNode := TModDomHelper.createTextNode(document_, TDynamicObjectData.NAME, Self.getClassName());
        node_.appendChild(classNameNode);
        Exit(node_);
end;
    

function TInputAutomationModuleConfiguration.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TInputAutomationModuleConfiguration.setName(name: string);
begin
        Self.logUtil.putF('Name: ' + name, TJava.Box(Self), 'setName');
        Self.name := name;
end;
    

function TInputAutomationModuleConfiguration.getClassName: string;
begin
        Exit(Self.className);
end;
    

procedure TInputAutomationModuleConfiguration.setClassName(className: string);
begin
        Self.logUtil.putF('ClassName : ' + className, TJava.Box(Self), 'setClassName');
        Self.className := className;
end;
    

function TInputAutomationModuleConfiguration.getInputAutomationModuleInterface: IInputAutomationModuleFactoryInterface;
begin
        Exit(Self.inputAutomationModuleInterface);
end;
    

procedure TInputAutomationModuleConfiguration.setInputAutomationModuleInterface(inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface);
begin
        Self.logUtil.putF('InputAutomationModuleFactoryInterface : ' + TJava.ToString(inputAutomationModuleInterface), TJava.Box(Self), 'setInputAutomationModuleInterface');
        Self.inputAutomationModuleInterface := inputAutomationModuleInterface;
        Self.setName(Self.inputAutomationModuleInterface.getName());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


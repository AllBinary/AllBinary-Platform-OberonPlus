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
// package org.allbinary.input.automation.module.generic.configuration.profile
unit GenericProfileDataWorkerType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document, Node, GenericProfileDataWorkerTypeInterface;

type
  {AB:TYPES}
  TGenericProfileDataWorkerType = class(TInterfacedObject, IGenericProfileDataWorkerTypeInterface)
  public
    name: string;
    class var hashMap: TJavaHashMap<TObject, TObject>;
    class var SAVED_CAPTURE: TGenericProfileDataWorkerType;
    class var SCREEN_CAPTURE: TGenericProfileDataWorkerType;
    class var COMPARISON: TGenericProfileDataWorkerType;
    class var MOTION: TGenericProfileDataWorkerType;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string);
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
        function toString: string; virtual;
        class function getInstance(node_: TNode): TGenericProfileDataWorkerType; static;
  end;

implementation
uses
  SavedCaptureGenericProfileDataWorkerType, GenericProfileDataWorkerData, DomNodeHelper, ModDomHelper, InputImageType, StdUtil;


{AB:CODE}

procedure TGenericProfileDataWorkerType.InitFields;
begin
  
end;

function TGenericProfileDataWorkerType.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGenericProfileDataWorkerType.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        TGenericProfileDataWorkerType.hashMap.put(TJava.Box(Self.getName()), TJava.Box(Self));
end;
    

function TGenericProfileDataWorkerType.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TGenericProfileDataWorkerType.setName(name: string);
begin
        Self.name := name;
end;
    

// throws Exception
function TGenericProfileDataWorkerType.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
begin
        node_ := TModDomHelper.createTextNode(document_, TGenericProfileDataWorkerData.NAME, Self.name);
        Exit(node_);
end;
    

function TGenericProfileDataWorkerType.toString: string;
begin
        Exit('GenericProfileDataWorkerType: ' + Self.getName());
end;
    

class function TGenericProfileDataWorkerType.getInstance(node_: TNode): TGenericProfileDataWorkerType;
var
  name: string;
begin
        name := TDomNodeHelper.getTextNodeValue(node_);
        Exit(TGenericProfileDataWorkerType(TJava.ToObject(TGenericProfileDataWorkerType.hashMap.get(TJava.Box(name)))));
end;

initialization
  {AB:INITIALIZATION}
  TGenericProfileDataWorkerType.hashMap := TStdUtil.getInstance().createHashMap();
  TGenericProfileDataWorkerType.SAVED_CAPTURE := TSavedCaptureGenericProfileDataWorkerType.SAVED_CAPTURE;
  TGenericProfileDataWorkerType.SCREEN_CAPTURE := TGenericProfileDataWorkerType.Create('Screen ' + TInputImageType.CAPTURE.getName());
  TGenericProfileDataWorkerType.COMPARISON := TGenericProfileDataWorkerType.Create(TInputImageType.COMPARISON.getName());
  TGenericProfileDataWorkerType.MOTION := TGenericProfileDataWorkerType.Create(TInputImageType.MOTION.getName());
  {AB:END}

end.


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
// package org.allbinary.logic.communication.log.config
unit LogConfig;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Node;

type
  {AB:TYPES}
  TLogConfig = class(TObject)
  public
    isEnabled_: Boolean;
    name: string;
    description: string;
    path: string;
    fileName: string;
    procedure InitFields;
        constructor Create(aName: string; aDescription: string; aPath: string; aFileName: string); overload;
        constructor Create(node_: TNode); overload;
        function getName: string; virtual;
        function isEnabled: Boolean; virtual;
        procedure enable; virtual;
        procedure disable; virtual;
        function getDescription: string; virtual;
        function getFileName: string; virtual;
        procedure setName(value: string); virtual;
        procedure setDescription(value: string); virtual;
        procedure setPath(value: string); virtual;
        procedure setFileName(value: string); virtual;
        function getTypeVector: TBasicArrayList; virtual;
  end;

implementation
uses
  LogConfigData, EntryData, DomNodeHelper, DomSearchHelper, BooleanUtil, BasicArrayListD;


{AB:CODE}

procedure TLogConfig.InitFields;
begin
  
  
  
  
  
end;
    

constructor TLogConfig.Create(aName: string; aDescription: string; aPath: string; aFileName: string);
begin
    inherited Create;
    InitFields;
        Self.isEnabled_ := False;
        Self.name := aName;
        Self.description := aDescription;
        Self.path := aPath;
        Self.fileName := aFileName;
end;
    

constructor TLogConfig.Create(node_: TNode);
var
  enabledValueNode: TNode;
  isEnabledString: string;
  logConfigData_: TLogConfigData;
  nameValueNode: TNode;
  descriptionValueNode: TNode;
  fileValueNode: TNode;
begin
    inherited Create;
    InitFields;
        enabledValueNode := TDomSearchHelper.getNode(TEntryData.getInstance().ENABLE, node_.getChildNodes());
        isEnabledString := TDomNodeHelper.getTextNodeValue(enabledValueNode);
        Self.isEnabled_ := TBooleanUtil.getInstance().getFromString(isEnabledString);
        logConfigData_ := TLogConfigData.getInstance();
        nameValueNode := TDomSearchHelper.getNode(logConfigData_.NAME, node_.getChildNodes());
        Self.name := TDomNodeHelper.getTextNodeValue(nameValueNode);
        descriptionValueNode := TDomSearchHelper.getNode(logConfigData_.DESCRIPTION, node_.getChildNodes());
        Self.description := TDomNodeHelper.getTextNodeValue(descriptionValueNode);
        fileValueNode := TDomSearchHelper.getNode(logConfigData_.FILE_, node_.getChildNodes());
        Self.fileName := TDomNodeHelper.getTextNodeValue(fileValueNode);
end;
    

function TLogConfig.getName: string;
begin
        Exit(Self.name);
end;
    

function TLogConfig.isEnabled: Boolean;
begin
        Exit(Self.isEnabled_);
end;
    

procedure TLogConfig.enable;
begin
        Self.isEnabled_ := True;
end;
    

procedure TLogConfig.disable;
begin
        Self.isEnabled_ := False;
end;
    

function TLogConfig.getDescription: string;
begin
        Exit(Self.description);
end;
    

function TLogConfig.getFileName: string;
begin
        Exit(Self.fileName);
end;
    

procedure TLogConfig.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TLogConfig.setDescription(value: string);
begin
        Self.description := value;
end;
    

procedure TLogConfig.setPath(value: string);
begin
        Self.path := value;
end;
    

procedure TLogConfig.setFileName(value: string);
begin
        Self.fileName := value;
end;
    

// throws Exception
function TLogConfig.getTypeVector: TBasicArrayList;
var
  logKeyVector: TBasicArrayList;
begin
        logKeyVector := TBasicArrayListD.Create();
        Exit(logKeyVector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


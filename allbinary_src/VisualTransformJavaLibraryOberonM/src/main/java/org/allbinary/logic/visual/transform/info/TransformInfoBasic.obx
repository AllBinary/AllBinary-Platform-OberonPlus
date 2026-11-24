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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoBasic;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AbContext, StoreFrontInterface, AbPath, TransformInfoObjectConfigInterface, Document, WeblisketSessionInterface, TransformInfoHttpInterface;

type
  {AB:TYPES}
  // Hack class should not exist
  TTransformInfoBasic = class(TAbContext, ITransformInfoHttpInterface)
  public
    storeFrontInterface: IStoreFrontInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontInterface_: IStoreFrontInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function getStoreName: string; virtual;
        function log: string; virtual;
        procedure override_(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function getName: string; virtual;
        function getObjectFile: string; virtual;
        function getObject: TObject; virtual;
        function getObjectConfigInterface: ITransformInfoObjectConfigInterface; virtual;
        procedure setObjectConfigInterface(transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface); virtual;
        function getTemplateFilePath: TAbPath; virtual;
        function getTemplateFile: string; virtual;
        function getTemplate: string; virtual;
        function getDataFilePath: TAbPath; virtual;
        function getDataFile: string; virtual;
        function getDataDocument: TDocument; virtual;
        procedure setName(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        procedure setObjectFile(value: string); virtual;
        procedure setObject(anyType: TObject); virtual;
        procedure setObjectConfigFile(value: string); virtual;
        procedure setTemplateFile(value: string); virtual;
        procedure setTemplate(value: string); virtual;
        procedure setDataFile(value: string); virtual;
        procedure setData(value: string); virtual;
        procedure setChild; virtual;
        function isChild: Boolean; virtual;
        function getImportUriPath: string; virtual;
        procedure setImportUriPath(importUriPath: string); virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getWeblisketSession: IWeblisketSessionInterface; virtual;
        function getPageContext: TPageContext; virtual;
        function getPropertiesHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TTransformInfoBasic.InitFields;
begin
  
end;

function TTransformInfoBasic.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoBasic.Create(storeFrontInterface_: IStoreFrontInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_);
        InitFields;
        Self.storeFrontInterface := storeFrontInterface_;
end;
    

function TTransformInfoBasic.getStoreName: string;
begin
        Exit(Self.storeFrontInterface.getName());
end;
    

function TTransformInfoBasic.log: string;
begin
        Exit(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TTransformInfoBasic.override_(hashMap_: TJavaHashMap<TObject, TObject>);
begin
end;
    

function TTransformInfoBasic.getName: string;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getObjectFile: string;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getObject: TObject;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getObjectConfigInterface: ITransformInfoObjectConfigInterface;
begin
        Exit(nil);
end;
    

procedure TTransformInfoBasic.setObjectConfigInterface(transformInfoObjectConfigInterface_: ITransformInfoObjectConfigInterface);
begin
end;
    

function TTransformInfoBasic.getTemplateFilePath: TAbPath;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getTemplateFile: string;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getTemplate: string;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getDataFilePath: TAbPath;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getDataFile: string;
begin
        Exit(nil);
end;
    

// throws Exception
function TTransformInfoBasic.getDataDocument: TDocument;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TTransformInfoBasic.setName(value: string);
begin
end;
    

procedure TTransformInfoBasic.setStoreName(value: string);
begin
end;
    

procedure TTransformInfoBasic.setObjectFile(value: string);
begin
end;
    

procedure TTransformInfoBasic.setObject(anyType: TObject);
begin
end;
    

procedure TTransformInfoBasic.setObjectConfigFile(value: string);
begin
end;
    

procedure TTransformInfoBasic.setTemplateFile(value: string);
begin
end;
    

procedure TTransformInfoBasic.setTemplate(value: string);
begin
end;
    

procedure TTransformInfoBasic.setDataFile(value: string);
begin
end;
    

procedure TTransformInfoBasic.setData(value: string);
begin
end;
    

procedure TTransformInfoBasic.setChild;
begin
end;
    

function TTransformInfoBasic.isChild: Boolean;
begin
        Exit(True);
end;
    

function TTransformInfoBasic.getImportUriPath: string;
begin
        Exit(nil);
end;
    

procedure TTransformInfoBasic.setImportUriPath(importUriPath: string);
begin
end;
    

// throws Exception
function TTransformInfoBasic.getKey: TObject;
begin
        Exit(nil);
end;
    

// throws Exception
function TTransformInfoBasic.toVector: TBasicArrayList;
begin
        Exit(nil);
end;
    

// throws Exception
function TTransformInfoBasic.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(nil);
end;
    

function TTransformInfoBasic.getWeblisketSession: IWeblisketSessionInterface;
begin
        Exit(inherited getWeblisketSession());
end;
    

function TTransformInfoBasic.getPageContext: TPageContext;
begin
        Exit(inherited getPageContext());
end;
    

function TTransformInfoBasic.getPropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(inherited getPropertiesHashMap());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


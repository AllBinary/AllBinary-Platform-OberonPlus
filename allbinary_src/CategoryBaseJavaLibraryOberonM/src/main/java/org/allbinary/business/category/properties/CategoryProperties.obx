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
// package org.allbinary.business.category.properties
unit CategoryProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryHierarchyInterface, LogUtil, AbPath, BasicArrayList, Document, Node, CategoryPropertiesInterface;

type
  {AB:TYPES}
  TCategoryProperties = class(TInterfacedObject, ICategoryPropertiesInterface)
  public
    logUtil: TLogUtil;
    category: string;
    class var MAXDEPTH: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string); overload;
        constructor Create(node_: TNode); overload;
        constructor Create(categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>); overload;
        function isRealRoot: Boolean; virtual;
        function isRoot: Boolean; virtual;
        function getKey: TObject; virtual;
        function getValue: string; virtual;
        function getPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): TAbPath; virtual;
        function getFileName: string; virtual;
        function getWebAppPath: TAbPath; virtual;
        procedure setValue(value: string); virtual;
        function isValid: Boolean; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
  end;

implementation
uses
  CategoryData, CategoryInterface, CategoryUtil, StdUtil, AbSqlData, AbPathData, StringMaker, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TCategoryProperties.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TCategoryProperties.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryProperties.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.category := name;
end;
    

constructor TCategoryProperties.Create(node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.category := TCategoryUtil.getNameFromNode(node_);
end;
    

constructor TCategoryProperties.Create(categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.category := TJava.NewString(TJava.UnboxString(TJava.ToObject(categoryPropertiesHashMap.get(TJava.Box(TCategoryData.getInstance().NAME)))));
end;
    

function TCategoryProperties.isRealRoot: Boolean;
begin
        Exit(False);
end;
    

function TCategoryProperties.isRoot: Boolean;
begin
        Exit(False);
end;
    

function TCategoryProperties.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getValue())));
end;
    

function TCategoryProperties.getValue: string;
begin
        Exit(Self.category);
end;
    

// throws Exception
function TCategoryProperties.getPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): TAbPath;
var
  abPathData_: TAbPathData;
  pathStringBuffer: TStringMaker;
  list: TBasicArrayList;
  nextParentCategoryInterface: ICategoryInterface;
  depthIndex: Integer;
  size: Integer;
  index: Integer;
begin
        abPathData_ := TAbPathData.getInstance();
        pathStringBuffer := TStringMaker.Create();
        list := TBasicArrayListD.Create();
        nextParentCategoryInterface := categoryHierarchyInterface_.getParent();
        if (Self) <> (nextParentCategoryInterface.getProperties()) then begin
            depthIndex := 0;
            while (nextParentCategoryInterface) <> (nil) do begin
                if nextParentCategoryInterface.getProperties().isRealRoot() then begin
                    Break;
                end;
                if nextParentCategoryInterface.getProperties().isRoot() then begin
                    list.addAt(0, TJava.Box(nextParentCategoryInterface.getPath().toString()));
                end else begin
                    pathStringBuffer.delete_(0, pathStringBuffer.length());
                    list.addAt(0, TJava.Box(pathStringBuffer.append(abPathData_.SEPARATOR).append(nextParentCategoryInterface.getProperties().getValue()).toString()));
                end;
                if TJava.ToObject(nextParentCategoryInterface) = TJava.ToObject(nextParentCategoryInterface.getHierarchy().getParent()) then begin
                    Break;
                end;
                nextParentCategoryInterface := nextParentCategoryInterface.getHierarchy().getParent();
                Inc(depthIndex);
                if (depthIndex) > (TCategoryProperties.MAXDEPTH) then begin
                    raise SysUtils.Exception.Create('Probably Major Error');
                end;
            end;
        end;
        pathStringBuffer.delete_(0, pathStringBuffer.length());
        pathStringBuffer.append(abPathData_.SEPARATOR).append(Self.getValue());
        size := list.size();
        for index := 0 to size - 1 do begin
            pathStringBuffer.append(TJava.UnboxString(TJava.ToObject(list.get(index))));
        end;
        pathStringBuffer.append(abPathData_.SEPARATOR);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF('path = ' + pathStringBuffer.toString(), TJava.Box(Self), 'getPath');
        end;
        Exit(TAbPath.Create(pathStringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TCategoryProperties.getFileName: string;
begin
        Exit(((Self.getValue()) + (TAbPathData.getInstance().EXTENSION_SEP)) + (TCategoryData.getInstance().UNCRYPTED_EXTENSION));
end;
    

// throws Exception
function TCategoryProperties.getWebAppPath: TAbPath;
begin
        raise SysUtils.Exception.Create('Not Root');
end;
    

procedure TCategoryProperties.setValue(value: string);
begin
        Self.category := value;
end;
    

function TCategoryProperties.isValid: Boolean;
var
  returnBoolean: Boolean;
begin
        returnBoolean := False;
        if nil.isValidRequired(Self.category, 1, TAbSqlData.MAXSTRING) then begin
            returnBoolean := True;
        end;
        Exit(returnBoolean);
end;
    

function TCategoryProperties.toHashMap: TJavaHashMap<TObject, TObject>;
var
  categoryHashMap: TJavaHashMap<TObject, TObject>;
begin
        categoryHashMap := TStdUtil.getInstance().createHashMap();
        categoryHashMap.put(TJava.Box(TCategoryData.getInstance().NAME), TJava.Box(Self.category));
        Exit(categoryHashMap);
end;
    

function TCategoryProperties.toVector: TBasicArrayList;
var
  categoryVector: TBasicArrayList;
begin
        categoryVector := TBasicArrayListD.Create();
        categoryVector.add(TJava.Box(Self.category));
        Exit(categoryVector);
end;
    

// throws Exception
function TCategoryProperties.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategoryProperties.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategoryProperties.validationInfo: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  TCategoryProperties.MAXDEPTH := 100;
  {AB:END}

end.


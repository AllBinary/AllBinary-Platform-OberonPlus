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
// package org.allbinary.business.category
unit Category;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CategoryHierarchyInterface, CategoryPropertiesFactoryInterface, CategoryPropertiesInterface, LogUtil, AbPath, CommonStrings, Document, Node, CategoryInterface;

type
  {AB:TYPES}
  TCategory = class(TInterfacedObject, ICategoryInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    categoryHierarchyInterface: ICategoryHierarchyInterface;
    categoryPropertiesInterface: ICategoryPropertiesInterface;
    childCategoryVector: TBasicArrayList;
    typeVector: TBasicArrayList;
    PROPERTIES: Integer;
    CATEGORY: Integer;
    class var NOT_ROOT: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface); overload;
        constructor Create(categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface; level: Integer); overload;
        constructor Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface); overload;
        function getKey: TObject; virtual;
        function getRootFilePath: TAbPath; virtual;
        function getFilePath: TAbPath; virtual;
        function getWebAppPath: TAbPath; virtual;
        function getPath: TAbPath; virtual;
        function addChildProperty(categoryPropertiesInterface_: ICategoryPropertiesInterface): Boolean; virtual;
        function addChild(categoryInterface_: ICategoryInterface): Boolean; virtual;
        function getChildNodes: TBasicArrayList; virtual;
        function removeChild(categoryInterface_: ICategoryInterface): Boolean; virtual;
        procedure removal(removalVector: TBasicArrayList);
        function removeDuplicateChild(categoryInterface_: ICategoryInterface): Boolean;
        function isLeaf: Boolean; virtual;
        function getProperties: ICategoryPropertiesInterface; virtual;
        procedure setProperties(categoryPropertiesInterface_: ICategoryPropertiesInterface); virtual;
        function getHierarchy: ICategoryHierarchyInterface; virtual;
        procedure setHierarchy(categoryHierarchyInterface_: ICategoryHierarchyInterface); virtual;
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        procedure log; virtual;
  end;

implementation
uses
  BasicArrayListD, CategoryHierarchy, RootCategoryPropertiesInterface, StdUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TCategory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.childCategoryVector := TBasicArrayListD.Create();
  Self.typeVector := TBasicArrayListD.Create();
  Self.PROPERTIES := 1;
  Self.CATEGORY := 0;
end;

function TCategory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategory.Create(categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), 'Category(CategoryPropertiesFactoryInterface)');
        end;
        Self.categoryPropertiesInterface := categoryPropertiesFactoryInterface_.getInstance();
        Self.categoryHierarchyInterface := (TJava.ToObject(TCategoryHierarchy.Create(Self, Self)) as ICategoryHierarchyInterface);
        Self.log();
end;
    

constructor TCategory.Create(categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface; level: Integer);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := categoryPropertiesFactoryInterface_.getInstance();
        Self.categoryHierarchyInterface := (TJava.ToObject(TCategoryHierarchy.Create(Self, Self, level)) as ICategoryHierarchyInterface);
        Self.log();
end;
    

constructor TCategory.Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(categoryPropertiesFactoryInterface_.getInstance()) as ICategoryPropertiesInterface);
        Self.categoryHierarchyInterface := (TJava.ToObject(TCategoryHierarchy.Create(rootCategoryInterface, parentCategoryInterface)) as ICategoryHierarchyInterface);
        Self.log();
end;
    

// throws Exception
function TCategory.getKey: TObject;
begin
        Exit(TJava.Box(Self.categoryPropertiesInterface.getKey()));
end;
    

// throws Exception
function TCategory.getRootFilePath: TAbPath;
var
  rootAbPath: TAbPath;
  categoryInterface_: ICategoryInterface;
  rootCategoryPropertiesInterface_: IRootCategoryPropertiesInterface;
begin
        rootAbPath := TAbPath.Create(TCategory.NOT_ROOT, TStringUtil.getInstance().EMPTY_STRING);
        categoryInterface_ := Self.categoryHierarchyInterface.getRoot();
        if categoryInterface_.getProperties().isRoot() then begin
            rootCategoryPropertiesInterface_ := (TJava.ToObject(categoryInterface_.getProperties()) as IRootCategoryPropertiesInterface);
            rootAbPath := rootCategoryPropertiesInterface_.getRootFilePath();
        end;
        Exit(rootAbPath);
end;
    

// throws Exception
function TCategory.getFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getRootFilePath().toString() + Self.getProperties().getPath(Self.getHierarchy()).toString(), Self.getProperties().getFileName()));
end;
    

// throws Exception
function TCategory.getWebAppPath: TAbPath;
var
  categoryInterface_: ICategoryInterface;
begin
        categoryInterface_ := Self.categoryHierarchyInterface.getRoot();
        Exit(categoryInterface_.getProperties().getWebAppPath());
end;
    

// throws Exception
function TCategory.getPath: TAbPath;
begin
        Exit(Self.categoryPropertiesInterface.getPath(Self.categoryHierarchyInterface));
end;
    

function TCategory.addChildProperty(categoryPropertiesInterface_: ICategoryPropertiesInterface): Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Self.typeVector.add(TJava.Box(Self.PROPERTIES));
        Exit(Self.childCategoryVector.add(TJava.Box(categoryPropertiesInterface_)));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategory.addChild(categoryInterface_: ICategoryInterface): Boolean;
var
  childCategoryHierarchyInterface: ICategoryHierarchyInterface;
begin
    TJava.MonitorEnter(Self);
    try
        Self.removeDuplicateChild(categoryInterface_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF('adding', TJava.Box(Self), 'addChild');
        end;
        childCategoryHierarchyInterface := categoryInterface_.getHierarchy();
        childCategoryHierarchyInterface.setParent(Self);
        childCategoryHierarchyInterface.setRoot(Self.getHierarchy().getRoot());
        categoryInterface_.setHierarchy(childCategoryHierarchyInterface);
        Self.typeVector.add(TJava.Box(Self.CATEGORY));
        Exit(Self.childCategoryVector.add(TJava.Box(categoryInterface_)));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategory.getChildNodes: TBasicArrayList;
begin
        Exit(Self.childCategoryVector);
end;
    

function TCategory.removeChild(categoryInterface_: ICategoryInterface): Boolean;
var
  removalVector: TBasicArrayList;
  bool_return: Boolean;
  size: Integer;
  anyType: TObject;
  currentCategoryInterface: ICategoryInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        removalVector := TBasicArrayListD.Create();
        bool_return := False;
        size := Self.childCategoryVector.size();
        for index := 0 to size - 1 do begin
            if (Self.CATEGORY) = (Self.typeVector.get(index)) then begin
                anyType := TJava.Box(Self.childCategoryVector.get(index));
                currentCategoryInterface := (TJava.ToObject(anyType) as ICategoryInterface);
                if (currentCategoryInterface.getProperties().getValue().compareTo(categoryInterface_.getProperties().getValue())) = (0) then begin
                    removalVector.add(TJava.Box(currentCategoryInterface));
                    bool_return := True;
                end;
            end;
        end;
        Self.removal(removalVector);
        Exit(bool_return);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TCategory.removal(removalVector: TBasicArrayList);
var
  removalSize: Integer;
  anyType: TObject;
  objectIndex: Integer;
  index: Integer;
begin
        removalSize := removalVector.size();
        for index := 0 to removalSize - 1 do begin
            anyType := TJava.Box(removalVector.get(index));
            objectIndex := Self.childCategoryVector.indexOf(TJava.Box(anyType));
            Self.typeVector.remove(objectIndex);
            Self.childCategoryVector.remove(objectIndex);
        end;
end;
    

function TCategory.removeDuplicateChild(categoryInterface_: ICategoryInterface): Boolean;
var
  removalVector: TBasicArrayList;
  bool_return: Boolean;
  size: Integer;
  anyType: TObject;
  existingCategoryInterface: ICategoryInterface;
  categoryPropertiesInterface_: ICategoryPropertiesInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        removalVector := TBasicArrayListD.Create();
        bool_return := False;
        size := Self.childCategoryVector.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(Self.childCategoryVector.get(index));
            if (Self.PROPERTIES) = (Self.typeVector.get(index)) then begin
                categoryPropertiesInterface_ := (TJava.ToObject(anyType) as ICategoryPropertiesInterface);
                if (categoryInterface_.getProperties().getValue().compareTo(categoryPropertiesInterface_.getValue())) = (0) then begin
                    removalVector.add(TJava.Box(categoryPropertiesInterface_));
                    bool_return := True;
                    Break;
                end;
            end else if (Self.CATEGORY) = (Self.typeVector.get(index)) then begin
                existingCategoryInterface := (TJava.ToObject(anyType) as ICategoryInterface);
                categoryPropertiesInterface_ := existingCategoryInterface.getProperties();
                if (categoryInterface_.getProperties().getValue().compareTo(categoryPropertiesInterface_.getValue())) = (0) then begin
                    removalVector.add(TJava.Box(existingCategoryInterface));
                    bool_return := True;
                    Break;
                end;
            end;
        end;
        Self.removal(removalVector);
        Exit(bool_return);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TCategory.isLeaf: Boolean;
begin
        if (Self.childCategoryVector) = (nil) then begin
            raise SysUtils.Exception.Create('Category Error');
        end;
        if (Self.childCategoryVector.size()) = (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TCategory.getProperties: ICategoryPropertiesInterface;
begin
        Exit(Self.categoryPropertiesInterface);
end;
    

procedure TCategory.setProperties(categoryPropertiesInterface_: ICategoryPropertiesInterface);
begin
        Self.categoryPropertiesInterface := categoryPropertiesInterface_;
end;
    

function TCategory.getHierarchy: ICategoryHierarchyInterface;
begin
        Exit(Self.categoryHierarchyInterface);
end;
    

procedure TCategory.setHierarchy(categoryHierarchyInterface_: ICategoryHierarchyInterface);
begin
        Self.categoryHierarchyInterface := categoryHierarchyInterface_;
end;
    

// throws Exception
function TCategory.isValid: Boolean;
var
  size: Integer;
  anyType: TObject;
  categoryInterface_: ICategoryInterface;
  categoryPropertiesInterface_: ICategoryPropertiesInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        if not ((Self.categoryPropertiesInterface.isValid())) then begin
            Exit(False);
        end;
        size := Self.childCategoryVector.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(Self.childCategoryVector.get(index));
            if (Self.PROPERTIES) = (Self.typeVector.get(index)) then begin
                categoryPropertiesInterface_ := (TJava.ToObject(anyType) as ICategoryPropertiesInterface);
                if not ((categoryPropertiesInterface_.isValid())) then begin
                    Exit(False);
                end;
            end else if (Self.CATEGORY) = (Self.typeVector.get(index)) then begin
                categoryInterface_ := (TJava.ToObject(anyType) as ICategoryInterface);
                if not ((categoryInterface_.isValid())) then begin
                    Exit(False);
                end;
            end;
        end;
        Exit(True);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TCategory.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategory.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategory.validationInfo: string;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategory.toHashMap: TJavaHashMap<TObject, TObject>;
var
  categoryHashMap: TJavaHashMap<TObject, TObject>;
begin
        categoryHashMap := Self.categoryPropertiesInterface.toHashMap();
        Exit(categoryHashMap);
end;
    

// throws Exception
function TCategory.toVector: TBasicArrayList;
var
  categoryVector: TBasicArrayList;
begin
        categoryVector := Self.categoryPropertiesInterface.toVector();
        categoryVector.add(TJava.Box(Self.childCategoryVector));
        Exit(categoryVector);
end;
    

// throws Exception
procedure TCategory.log;
var
  stringBuffer: TStringMaker;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Category Name: ');
            stringBuffer.append(Self.categoryPropertiesInterface.getValue());
            stringBuffer.append(''#10'Path = ');
            stringBuffer.append(Self.getPath().toString());
            stringBuffer.append(''#10'File Path: ');
            stringBuffer.append(Self.getFilePath().toString());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'log()');
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCategory.NOT_ROOT := 'This is not the root so it has no file path.';
  {AB:END}

end.


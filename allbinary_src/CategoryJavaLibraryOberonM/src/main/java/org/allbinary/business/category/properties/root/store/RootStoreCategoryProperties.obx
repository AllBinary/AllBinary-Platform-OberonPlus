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
// package org.allbinary.business.category.properties.root.store
unit RootStoreCategoryProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CategoryHierarchyInterface, CategoryPropertiesInterface, RootCategoryPropertiesInterface, LogUtil, AbPath, AbPathData, TransformInfoInterface, Document, Node;

type
  {AB:TYPES}
  TRootStoreCategoryProperties = class(TInterfacedObject, IRootCategoryPropertiesInterface, ICategoryPropertiesInterface)
  public
    logUtil: TLogUtil;
    pathData: TAbPathData;
    fileAbPath: TAbPath;
    abPath: TAbPath;
    category: string;
    isRealRoot_: Boolean;
    webAppAbPath: TAbPath;
    transformInfoInterface: ITransformInfoInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; categoryAbPath: TAbPath); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure initPath; virtual;
        function isRealRoot: Boolean; virtual;
        function isRoot: Boolean; virtual;
        function getKey: TObject; virtual;
        procedure setPath(path: TAbPath); virtual;
        procedure setRootFilePath(value: TAbPath); virtual;
        function getRootFilePath: TAbPath; virtual;
        function getValue: string; virtual;
        function getWebAppPath: TAbPath; virtual;
        function getPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): TAbPath; virtual;
        function getFileName: string; virtual;
        procedure setValue(value: string); virtual;
        function isValid: Boolean; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        procedure log; virtual;
  end;

implementation
uses
  BasicArrayListD, CategoryData, CategoryUtil, StoreFrontFactory, StoreFrontInterface, URLGLOBALS, StdUtil, StringMaker, StringUtil, TransformInfoHttpInterface;


{AB:CODE}

procedure TRootStoreCategoryProperties.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.pathData := TAbPathData.getInstance();
  
  
  
  
  
  
end;

function TRootStoreCategoryProperties.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRootStoreCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.abPath := TAbPath.createAbPath();
        Self.category := TCategoryData.getInstance().ROOTCATEGORY;
        Self.isRealRoot_ := True;
        Self.initPath();
        Self.log();
end;
    

constructor TRootStoreCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface; categoryAbPath: TAbPath);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.abPath := categoryAbPath;
        Self.category := Self.pathData.getNameFromPath(categoryAbPath.toString());
        if (Self.category = '') then begin
            Self.isRealRoot_ := True;
            Self.category := TCategoryData.getInstance().ROOTCATEGORY;
        end;
        Self.initPath();
        Self.log();
end;
    

constructor TRootStoreCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode);
var
  categoryPath: string;
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        categoryPath := TCategoryUtil.getNameFromNode(node_);
        Self.abPath := TAbPath.Create(categoryPath, TStringUtil.getInstance().EMPTY_STRING);
        Self.category := Self.pathData.getNameFromPath(categoryPath);
        if (Self.category = '') then begin
            Self.isRealRoot_ := True;
            Self.category := TCategoryData.getInstance().ROOTCATEGORY;
        end;
        Self.initPath();
        Self.log();
end;
    

constructor TRootStoreCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>);
var
  categoryPath: string;
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        categoryPath := TJava.NewString(TJava.UnboxString(TJava.ToObject(categoryPropertiesHashMap.get(TJava.Box(TCategoryData.getInstance().NAME)))));
        Self.abPath := TAbPath.Create(categoryPath, TStringUtil.getInstance().EMPTY_STRING);
        Self.category := Self.pathData.getNameFromPath(categoryPath);
        if (Self.category = '') then begin
            Self.isRealRoot_ := True;
            Self.category := TCategoryData.getInstance().ROOTCATEGORY;
        end;
        Self.initPath();
        Self.log();
end;
    

// throws Exception
procedure TRootStoreCategoryProperties.initPath;
var
  transformInfoHttpStoreInterface: ITransformInfoHttpInterface;
  storeFrontInterface_: IStoreFrontInterface;
  postPath: string;
  httpServletRequest_: THttpServletRequest;
begin
        transformInfoHttpStoreInterface := (TJava.ToObject(Self.transformInfoInterface) as ITransformInfoHttpInterface);
        storeFrontInterface_ := TStoreFrontFactory.getInstance(transformInfoHttpStoreInterface.getStoreName());
        postPath := (storeFrontInterface_.getCurrentHostNamePath()) + (storeFrontInterface_.getCategoryPath());
        httpServletRequest_ := THttpServletRequest(TJava.ToObject(transformInfoHttpStoreInterface.getPageContext().getRequest()));
        Self.webAppAbPath := TAbPath.Create(TJava.ToString(httpServletRequest_.getContextPath()) + postPath, TStringUtil.getInstance().EMPTY_STRING);
        Self.setRootFilePath(TAbPath.Create(TJava.ToString(TURLGLOBALS.getMainPath()) + postPath, TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TRootStoreCategoryProperties.isRealRoot: Boolean;
begin
        Exit(Self.isRealRoot_);
end;
    

function TRootStoreCategoryProperties.isRoot: Boolean;
begin
        Exit(True);
end;
    

function TRootStoreCategoryProperties.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getValue())));
end;
    

procedure TRootStoreCategoryProperties.setPath(path: TAbPath);
begin
        Self.abPath := path;
end;
    

procedure TRootStoreCategoryProperties.setRootFilePath(value: TAbPath);
begin
        Self.fileAbPath := value;
end;
    

function TRootStoreCategoryProperties.getRootFilePath: TAbPath;
begin
        Exit(Self.fileAbPath);
end;
    

function TRootStoreCategoryProperties.getValue: string;
begin
        Exit(Self.category);
end;
    

// throws Exception
function TRootStoreCategoryProperties.getWebAppPath: TAbPath;
begin
        Exit(Self.webAppAbPath);
end;
    

function TRootStoreCategoryProperties.getPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): TAbPath;
begin
        Exit(Self.abPath);
end;
    

function TRootStoreCategoryProperties.getFileName: string;
begin
        Exit(((Self.getValue()) + (TAbPathData.getInstance().EXTENSION_SEP)) + (TCategoryData.getInstance().UNCRYPTED_EXTENSION));
end;
    

procedure TRootStoreCategoryProperties.setValue(value: string);
begin
        Self.category := value;
end;
    

function TRootStoreCategoryProperties.isValid: Boolean;
begin
        Exit(True);
end;
    

function TRootStoreCategoryProperties.toHashMap: TJavaHashMap<TObject, TObject>;
var
  categoryHashMap: TJavaHashMap<TObject, TObject>;
begin
        categoryHashMap := TStdUtil.getInstance().createHashMap();
        categoryHashMap.put(TJava.Box(TCategoryData.getInstance().NAME), TJava.Box(Self.getValue()));
        Exit(categoryHashMap);
end;
    

function TRootStoreCategoryProperties.toVector: TBasicArrayList;
var
  categoryVector: TBasicArrayList;
begin
        categoryVector := TBasicArrayListD.Create();
        categoryVector.add(TJava.Box(Self.getValue()));
        Exit(categoryVector);
end;
    

// throws Exception
function TRootStoreCategoryProperties.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TRootStoreCategoryProperties.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TRootStoreCategoryProperties.validationInfo: string;
begin
        Exit(nil);
end;
    

procedure TRootStoreCategoryProperties.log;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF(TStringMaker.Create().append('filePath = ').append(Self.fileAbPath.toString()).append(''#10'path = ').append(Self.abPath.toString()).append(''#10'category = ').append(Self.category).toString(), TJava.Box(Self), 'log()');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


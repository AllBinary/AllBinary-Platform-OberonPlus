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
// package org.allbinary.business.category.properties.root
unit RootCategoryPropertiesAbstract;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CategoryHierarchyInterface, AbPath, Document, Node, RootCategoryPropertiesInterface;

type
  {AB:TYPES}
  TRootCategoryPropertiesAbstract = class(TInterfacedObject, IRootCategoryPropertiesInterface)
  public
    category: string;
    fileName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getKey: TObject; virtual;
        function getValue: string; virtual;
        procedure setValue(value: string); virtual;
        procedure setRootFilePath(value: TAbPath); overload; virtual;
        procedure setRootFilePath(value: string); overload; virtual;
        function getRootFilePath: TAbPath; virtual;
        function isRealRoot: Boolean; virtual;
        function isRoot: Boolean; virtual;
        function getWebAppPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): string; virtual;
        function getPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): TAbPath; virtual;
        function getFileName: string; virtual;
        function isValid: Boolean; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
  end;

implementation
uses
  BasicArrayListD, CategoryData, StdUtil, AbPathData;


{AB:CODE}

procedure TRootCategoryPropertiesAbstract.InitFields;
begin
  Self.category := TCategoryData.getInstance().ROOTCATEGORY;
  Self.fileName := Self.category + TJava.ToString(TAbPathData.getInstance().EXTENSION_SEP) + TJava.ToString(TCategoryData.getInstance().UNCRYPTED_EXTENSION);
end;

function TRootCategoryPropertiesAbstract.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRootCategoryPropertiesAbstract.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TRootCategoryPropertiesAbstract.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getValue())));
end;
    

function TRootCategoryPropertiesAbstract.getValue: string;
begin
        Exit(Self.category);
end;
    

// throws Exception
procedure TRootCategoryPropertiesAbstract.setValue(value: string);
begin
        raise SysUtils.Exception.Create('No Value Allowed');
end;
    

// throws Exception
procedure TRootCategoryPropertiesAbstract.setRootFilePath(value: TAbPath);
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
procedure TRootCategoryPropertiesAbstract.setRootFilePath(value: string);
begin
        raise SysUtils.Exception.Create('No Value Allowed');
end;
    

// throws Exception
function TRootCategoryPropertiesAbstract.getRootFilePath: TAbPath;
begin
        raise SysUtils.Exception.Create('No Value Allowed');
end;
    

// throws Exception
function TRootCategoryPropertiesAbstract.isRealRoot: Boolean;
begin
        raise SysUtils.Exception.Create('No A Real Root');
end;
    

// throws Exception
function TRootCategoryPropertiesAbstract.isRoot: Boolean;
begin
        raise SysUtils.Exception.Create('Root but not implemented');
end;
    

// throws Exception
function TRootCategoryPropertiesAbstract.getWebAppPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): string;
begin
        raise SysUtils.Exception.Create('Not Root');
end;
    

function TRootCategoryPropertiesAbstract.getPath(categoryHierarchyInterface_: ICategoryHierarchyInterface): TAbPath;
begin
        Exit(TAbPath.createAbPath());
end;
    

function TRootCategoryPropertiesAbstract.getFileName: string;
begin
        Exit(Self.fileName);
end;
    

function TRootCategoryPropertiesAbstract.isValid: Boolean;
begin
        Exit(True);
end;
    

function TRootCategoryPropertiesAbstract.toHashMap: TJavaHashMap<TObject, TObject>;
var
  categoryHashMap: TJavaHashMap<TObject, TObject>;
begin
        categoryHashMap := TStdUtil.getInstance().createHashMap();
        categoryHashMap.put(TJava.Box(TCategoryData.getInstance().NAME), TJava.Box(Self.category));
        Exit(categoryHashMap);
end;
    

function TRootCategoryPropertiesAbstract.toVector: TBasicArrayList;
var
  categoryVector: TBasicArrayList;
begin
        categoryVector := TBasicArrayListD.Create();
        categoryVector.add(TJava.Box(Self.category));
        Exit(categoryVector);
end;
    

// throws Exception
function TRootCategoryPropertiesAbstract.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TRootCategoryPropertiesAbstract.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TRootCategoryPropertiesAbstract.validationInfo: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


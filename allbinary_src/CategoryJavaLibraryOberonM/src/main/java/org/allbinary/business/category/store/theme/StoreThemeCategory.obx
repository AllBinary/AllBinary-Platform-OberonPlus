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
// package org.allbinary.business.category.store.theme
unit StoreThemeCategory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Category, CategoryInterface, CategoryPropertiesFactoryInterface, ThemeValidation, TransformInfoInterface, Node, StoreThemeCategoryInterface;

type
  {AB:TYPES}
  TStoreThemeCategory = class(TCategory, IStoreThemeCategoryInterface)
  public
    transformInfoInterface: ITransformInfoInterface;
    themeVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface; level: Integer); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface; level: Integer); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode; rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface); overload;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        procedure addThemes(node_: TNode); virtual;
        procedure addTheme(themeValidation_: TThemeValidation); virtual;
        function getThemes: TBasicArrayList; virtual;
        function isValid: Boolean; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD, DomSearchHelper, StdUtil, ThemeData, ThemesData, NodeList;


{AB:CODE}

procedure TStoreThemeCategory.InitFields;
begin
  
  
end;

function TStoreThemeCategory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreThemeCategory.Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface; level: Integer);
begin
        inherited Create(categoryPropertiesFactoryInterface_, level);
        InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.themeVector := TBasicArrayListD.Create();
end;
    

constructor TStoreThemeCategory.Create(transformInfoInterface_: ITransformInfoInterface; rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface);
begin
        inherited Create(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_);
        InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.themeVector := TBasicArrayListD.Create();
end;
    

constructor TStoreThemeCategory.Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface; level: Integer);
begin
        inherited Create(categoryPropertiesFactoryInterface_, level);
        InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.themeVector := TBasicArrayListD.Create();
        Self.addThemes(node_);
end;
    

constructor TStoreThemeCategory.Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode; rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface);
begin
        inherited Create(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_);
        InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        Self.themeVector := TBasicArrayListD.Create();
        Self.addThemes(node_);
end;
    

function TStoreThemeCategory.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.transformInfoInterface);
end;
    

// throws Exception
procedure TStoreThemeCategory.addThemes(node_: TNode);
var
  themesNode: TNode;
  nodeList_: TNodeList;
  themeNode: TNode;
  index: Integer;
begin
        themesNode := TDomSearchHelper.getNode(TThemesData.getInstance().NAME, node_.getChildNodes());
        nodeList_ := themesNode.getChildNodes();
        for index := 0 to nodeList_.getLength() - 1 do begin
            themeNode := nodeList_.item(index);
            if (themeNode.getNodeName().compareTo(TThemeData.getInstance().NAME)) = (0) then begin
                Self.themeVector.add(TJava.Box(TThemeValidation.Create(Self, themeNode)));
            end;
        end;
end;
    

procedure TStoreThemeCategory.addTheme(themeValidation_: TThemeValidation);
begin
        Self.themeVector.add(TJava.Box(themeValidation_));
end;
    

function TStoreThemeCategory.getThemes: TBasicArrayList;
begin
        Exit(Self.themeVector);
end;
    

// throws Exception
function TStoreThemeCategory.isValid: Boolean;
begin
        if not ((inherited isValid())) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

// throws Exception
function TStoreThemeCategory.toHashMap: TJavaHashMap<TObject, TObject>;
var
  categoryHashMap: TJavaHashMap<TObject, TObject>;
begin
        categoryHashMap := inherited toHashMap();
        categoryHashMap.put(TJava.Box(TThemesData.getInstance().NAME), TJava.Box(Self.themeVector));
        Exit(categoryHashMap);
end;
    

// throws Exception
function TStoreThemeCategory.toVector: TBasicArrayList;
var
  categoryVector: TBasicArrayList;
begin
        categoryVector := inherited toVector();
        Exit(categoryVector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


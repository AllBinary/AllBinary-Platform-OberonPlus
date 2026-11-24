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
// package org.allbinary.business.category.hierarchy
unit CategoryHierarchy;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryInterface, CategoryHierarchyInterface;

type
  {AB:TYPES}
  TCategoryHierarchy = class(TInterfacedObject, ICategoryHierarchyInterface)
  public
    rootCategoryInterface: ICategoryInterface;
    parentCategoryInterface: ICategoryInterface;
    level: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface); overload;
        constructor Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; level: Integer); overload;
        constructor Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>); overload;
        function getLevel: Integer; virtual;
        function getLevelString: string; virtual;
        procedure setLevel(level: Integer); virtual;
        procedure setParent(categoryInterface_: ICategoryInterface); virtual;
        procedure setRoot(categoryInterface_: ICategoryInterface); virtual;
        function getRoot: ICategoryInterface; virtual;
        function getParent: ICategoryInterface; virtual;
  end;

implementation
uses
  CategoryData, StringUtil;


{AB:CODE}

procedure TCategoryHierarchy.InitFields;
begin
  
  
  
end;

function TCategoryHierarchy.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryHierarchy.Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface);
begin
    inherited Create;
    InitFields;
        Self.level := 0;
        Self.setRoot(rootCategoryInterface);
        Self.setParent(parentCategoryInterface);
end;
    

constructor TCategoryHierarchy.Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; level: Integer);
begin
    inherited Create;
    InitFields;
        Self.level := level;
        Self.setRoot(rootCategoryInterface);
        Self.setParent(parentCategoryInterface);
end;
    

constructor TCategoryHierarchy.Create(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>);
var
  levelString: string;
begin
    inherited Create;
    InitFields;
        levelString := TStringUtil.getInstance().getNonNull(TJava.UnboxString(TJava.ToObject(categoryPropertiesHashMap.get(TJava.Box(TCategoryData.getInstance().LEVEL)))));
        Self.level := StrToInt(levelString);
        Self.setRoot(rootCategoryInterface);
        Self.setParent(parentCategoryInterface);
end;
    

function TCategoryHierarchy.getLevel: Integer;
begin
        Exit(Self.level);
end;
    

function TCategoryHierarchy.getLevelString: string;
begin
        Exit(IntToStr(Self.level));
end;
    

procedure TCategoryHierarchy.setLevel(level: Integer);
begin
        Self.level := level;
end;
    

procedure TCategoryHierarchy.setParent(categoryInterface_: ICategoryInterface);
begin
        Self.parentCategoryInterface := categoryInterface_;
end;
    

procedure TCategoryHierarchy.setRoot(categoryInterface_: ICategoryInterface);
begin
        Self.rootCategoryInterface := categoryInterface_;
end;
    

function TCategoryHierarchy.getRoot: ICategoryInterface;
begin
        Exit(Self.rootCategoryInterface);
end;
    

function TCategoryHierarchy.getParent: ICategoryInterface;
begin
        Exit(Self.parentCategoryInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


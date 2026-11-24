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
unit StoreThemeCategoryFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryFactoryInterface, CategoryInterface, LogUtil, AbPath, TransformInfoInterface, CommonStrings, Node;

type
  {AB:TYPES}
  TStoreThemeCategoryFactory = class(TInterfacedObject, ICategoryFactoryInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    transformInfoInterface: ITransformInfoInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function getRootInstance: ICategoryInterface; overload; virtual;
        function getRootInstance(categoryAbPath: TAbPath): ICategoryInterface; overload; virtual;
        function getRootInstanceFromNode(node_: TNode): ICategoryInterface; virtual;
        function getInstance(categoryPath: string; level: Integer): ICategoryInterface; overload; virtual;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPath: string): ICategoryInterface; overload; virtual;
        function getInstance(node_: TNode; level: Integer): ICategoryInterface; overload; virtual;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; node_: TNode): ICategoryInterface; overload; virtual;
        function getInstance(categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>; level: Integer): ICategoryInterface; overload; virtual;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>): ICategoryInterface; overload; virtual;
  end;

implementation
uses
  StoreThemeCategory, CategoryUtil, CategoryPropertiesFactory, CategoryPropertiesFactoryInterface, RootStoreThemeCategoryPropertiesFactory, StringUtil;


{AB:CODE}

procedure TStoreThemeCategoryFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TStoreThemeCategoryFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreThemeCategoryFactory.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'StoreCategoryFactory(TransformInfoInterface transformInfoInterface)');
        end;
        Self.transformInfoInterface := transformInfoInterface_;
end;
    

function TStoreThemeCategoryFactory.getRootInstance: ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TRootStoreThemeCategoryPropertiesFactory.Create(Self.transformInfoInterface)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, categoryPropertiesFactoryInterface_, 0)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getRootInstance()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getRootInstance(categoryAbPath: TAbPath): ICategoryInterface;
var
  level: Integer;
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            level := TCategoryUtil.getPathLevel(categoryAbPath);
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TRootStoreThemeCategoryPropertiesFactory.Create(Self.transformInfoInterface, categoryAbPath)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, categoryPropertiesFactoryInterface_, level)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getRootInstance(String)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getRootInstanceFromNode(node_: TNode): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
  categoryPath: TAbPath;
  level: Integer;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TRootStoreThemeCategoryPropertiesFactory.Create(Self.transformInfoInterface, node_)) as ICategoryPropertiesFactoryInterface);
            categoryPath := TAbPath.Create(TCategoryUtil.getNameFromNode(node_), TStringUtil.getInstance().EMPTY_STRING);
            level := TCategoryUtil.getPathLevel(categoryPath);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, node_, categoryPropertiesFactoryInterface_, level)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getRootInstance(node)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getInstance(categoryPath: string; level: Integer): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(categoryPath)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, categoryPropertiesFactoryInterface_, level)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(String, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPath: string): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(categoryPath)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface , String, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getInstance(node_: TNode; level: Integer): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(node_)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, categoryPropertiesFactoryInterface_, level)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(Node, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; node_: TNode): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(node_)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface, Node, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getInstance(categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>; level: Integer): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(categoryPropertiesHashMap)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, categoryPropertiesFactoryInterface_, level)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(HashMap)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreThemeCategoryFactory.getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(categoryPropertiesHashMap)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TStoreThemeCategory.Create(Self.transformInfoInterface, rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface, HashMap)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


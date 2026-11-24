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
unit CategoryAbstractFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbPath, CommonStrings, Node, CategoryInterface, CategoryFactoryInterface;

type
  {AB:TYPES}
  TCategoryAbstractFactory = class(TInterfacedObject, ICategoryFactoryInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getRootInstance: ICategoryInterface; overload; virtual;
        function getRootInstance(categoryAbPath: TAbPath): ICategoryInterface; overload; virtual;
        function getRootInstanceFromNode(node_: TNode): ICategoryInterface; virtual;
        function getInstance(categoryName: string): ICategoryInterface; overload; virtual;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryName: string): ICategoryInterface; overload; virtual;
        function getInstance(node_: TNode): ICategoryInterface; overload; virtual;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; node_: TNode): ICategoryInterface; overload; virtual;
        function getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>): ICategoryInterface; overload; virtual;
  end;

implementation
uses
  Category, CategoryPropertiesFactory, CategoryPropertiesFactoryInterface;


{AB:CODE}

procedure TCategoryAbstractFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TCategoryAbstractFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryAbstractFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TCategoryAbstractFactory.getRootInstance: ICategoryInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TCategoryAbstractFactory.getRootInstance(categoryAbPath: TAbPath): ICategoryInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TCategoryAbstractFactory.getRootInstanceFromNode(node_: TNode): ICategoryInterface;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TCategoryAbstractFactory.getInstance(categoryName: string): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getInstance(String)');
            end;
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(categoryName)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TCategory.Create(categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(String, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TCategoryAbstractFactory.getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryName: string): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface, String)');
            end;
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(categoryName)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TCategory.Create(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface , String, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TCategoryAbstractFactory.getInstance(node_: TNode): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getInstance(Node)');
            end;
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(node_)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TCategory.Create(categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(Node, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TCategoryAbstractFactory.getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; node_: TNode): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface, Node)');
            end;
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(node_)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TCategory.Create(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface, Node, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TCategoryAbstractFactory.getInstance(rootCategoryInterface: ICategoryInterface; parentCategoryInterface: ICategoryInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'getInstance(CategoryInterface, CategoryInterface, HashMap)');
            end;
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TCategoryPropertiesFactory.Create(categoryPropertiesHashMap)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TCategory.Create(rootCategoryInterface, parentCategoryInterface, categoryPropertiesFactoryInterface_)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORYERROR) then begin
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


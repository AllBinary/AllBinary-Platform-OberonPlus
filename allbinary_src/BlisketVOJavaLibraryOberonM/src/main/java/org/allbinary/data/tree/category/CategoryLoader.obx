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
// package org.allbinary.data.tree.category
unit CategoryLoader;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryFactoryInterface, CategoryInterface, LogUtil, Document, NodeList, CategoryModifierTree, CategoryLoaderInterface;

type
  {AB:TYPES}
  TCategoryLoader = class(TCategoryModifierTree, ICategoryLoaderInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryFactoryInterface_: ICategoryFactoryInterface);
        function getDoc(categoryInterface_: ICategoryInterface): TDocument; virtual;
        function get(categoryInterface_: ICategoryInterface): ICategoryInterface; overload; virtual;
        function get(document_: TDocument): ICategoryInterface; overload; virtual;
        function getAll(categoryInterface_: ICategoryInterface): ICategoryInterface; overload; virtual;
        function getAll(document_: TDocument): ICategoryInterface; overload;
        function getAll(parentCategoryInterface: ICategoryInterface; categoryNodeList: TNodeList): ICategoryInterface; overload;
        function addProperties(loadedCategoryInterface: ICategoryInterface; categoryNodeList: TNodeList): ICategoryInterface;
  end;

implementation
uses
  CategoryData, CategoryProperties, CategoryPropertiesInterface, DomSearchHelper, DomDocumentHelper, CryptFileReader, AbFile, AbPath, Node;


{AB:CODE}

procedure TCategoryLoader.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TCategoryLoader.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryLoader.Create(categoryFactoryInterface_: ICategoryFactoryInterface);
begin
        inherited Create(categoryFactoryInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'CategoryLoader(CategoryFactoryInterface categoryFactoryInterface)');
        end;
end;
    

function TCategoryLoader.getDoc(categoryInterface_: ICategoryInterface): TDocument;
var
  rootAbFile: TAbFile;
  fileAbPath: TAbPath;
  cryptFileReader_: TCryptFileReader;
  document_: TDocument;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if not TJava.IsNull(categoryInterface_.getProperties().getPath(categoryInterface_.getHierarchy())) then begin
                if (categoryInterface_.getHierarchy().getLevel()) = (1) then begin
                    rootAbFile := TAbFile.createAbFileFromAbPath(categoryInterface_.getRootFilePath());
                    if not (rootAbFile.isDirectory()) then begin
                        rootAbFile.mkdirs();
                        if not (rootAbFile.isDirectory()) then begin
                            raise SysUtils.Exception.Create('Could Not Create Directory');
                        end;
                        Self.save(categoryInterface_);
                    end;
                end;
                fileAbPath := categoryInterface_.getFilePath();
                cryptFileReader_ := TCryptFileReader.Create(TCategoryData.getInstance().UNCRYPTED_EXTENSION, TCategoryData.getInstance().ENCRYPTED_EXTENSION);
                document_ := TDomDocumentHelper.create_(cryptFileReader_.get(fileAbPath));
                Exit(document_);
            end else begin
                raise SysUtils.Exception.Create('Null Category');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                try
                    categoryInterface_.log();
                except
                    on e2: SysUtils.Exception do begin
                    Self.logUtil.put('Could Not Log Category', TJava.Box(Self), 'getDoc', TJava.Box(e));
                    end;
                end;
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'getDoc', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategoryLoader.get(categoryInterface_: ICategoryInterface): ICategoryInterface;
var
  document_: TDocument;
  categoryNode: TNode;
begin
    TJava.MonitorEnter(Self);
    try
        try
            document_ := Self.getDoc(categoryInterface_);
            categoryNode := TDomSearchHelper.getNode(TCategoryData.getInstance().NAME, document_.getChildNodes());
            Exit(Self.addProperties(categoryInterface_, categoryNode.getChildNodes()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategoryLoader.get(document_: TDocument): ICategoryInterface;
var
  categoryNode: TNode;
  loadedCategoryInterface: ICategoryInterface;
begin
    TJava.MonitorEnter(Self);
    try
        try
            categoryNode := TDomSearchHelper.getNode(TCategoryData.getInstance().NAME, document_.getChildNodes());
            loadedCategoryInterface := Self.categoryFactoryInterface.getRootInstanceFromNode(categoryNode);
            Exit(Self.addProperties(loadedCategoryInterface, categoryNode.getChildNodes()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategoryLoader.getAll(categoryInterface_: ICategoryInterface): ICategoryInterface;
var
  document_: TDocument;
begin
    TJava.MonitorEnter(Self);
    try
        try
            document_ := Self.getDoc(categoryInterface_);
            Exit(Self.getAll(document_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategoryLoader.getAll(document_: TDocument): ICategoryInterface;
var
  categoryNode: TNode;
  loadedCategoryInterface: ICategoryInterface;
begin
    TJava.MonitorEnter(Self);
    try
        try
            categoryNode := TDomSearchHelper.getNode(TCategoryData.getInstance().NAME, document_.getChildNodes());
            loadedCategoryInterface := Self.categoryFactoryInterface.getRootInstanceFromNode(categoryNode);
            Exit(Self.addProperties(loadedCategoryInterface, categoryNode.getChildNodes()));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategoryLoader.getAll(parentCategoryInterface: ICategoryInterface; categoryNodeList: TNodeList): ICategoryInterface;
var
  categoryNode: TNode;
  categoryInterface_: ICategoryInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if (categoryNodeList) <> (nil) then begin
                for index := 0 to categoryNodeList.getLength() - 1 do begin
                    categoryNode := categoryNodeList.item(index);
                    if ((categoryNode) <> (nil)) and ((categoryNode.getNodeName().compareTo(TCategoryData.getInstance().NAME)) = (0)) then begin
                        categoryInterface_ := (TJava.ToObject(Self.categoryFactoryInterface.getInstance(parentCategoryInterface.getHierarchy().getRoot(), parentCategoryInterface, categoryNode)) as ICategoryInterface);
                        parentCategoryInterface.addChild(categoryInterface_);
                    end;
                end;
            end;
            Exit(parentCategoryInterface);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TCategoryLoader.addProperties(loadedCategoryInterface: ICategoryInterface; categoryNodeList: TNodeList): ICategoryInterface;
var
  categoryNode: TNode;
  categoryPropertiesInterface_: ICategoryPropertiesInterface;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if (categoryNodeList) <> (nil) then begin
                for index := 0 to categoryNodeList.getLength() - 1 do begin
                    categoryNode := categoryNodeList.item(index);
                    if ((categoryNode) <> (nil)) and ((categoryNode.getNodeName().compareTo(TCategoryData.getInstance().NAME)) = (0)) then begin
                        categoryPropertiesInterface_ := (TJava.ToObject(TCategoryProperties.Create(categoryNode)) as ICategoryPropertiesInterface);
                        loadedCategoryInterface.addChildProperty(categoryPropertiesInterface_);
                    end;
                end;
            end;
            Exit(loadedCategoryInterface);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


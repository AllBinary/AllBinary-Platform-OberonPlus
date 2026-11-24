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
// package org.allbinary.business.category.store
unit StoreCategoryFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryAbstractFactory, CategoryFactoryInterface, CategoryInterface, LogUtil, AbPath, TransformInfoInterface, Node;

type
  {AB:TYPES}
  TStoreCategoryFactory = class(TCategoryAbstractFactory, ICategoryFactoryInterface)
  public
    logUtil: TLogUtil;
    transformInfoInterface: ITransformInfoInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function getRootInstance: ICategoryInterface; overload; virtual;
        function getRootInstance(categoryPath: TAbPath): ICategoryInterface; overload; virtual;
        function getRootInstanceFromNode(node_: TNode): ICategoryInterface; virtual;
  end;

implementation
uses
  Category, CategoryUtil, CategoryPropertiesFactoryInterface, RootStoreCategoryPropertiesFactory, StringUtil;


{AB:CODE}

procedure TStoreCategoryFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TStoreCategoryFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreCategoryFactory.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'StoreCategoryFactory(TransformInfoInterface transformInfoInterface)');
        end;
        Self.transformInfoInterface := transformInfoInterface_;
end;
    

function TStoreCategoryFactory.getRootInstance: ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TRootStoreCategoryPropertiesFactory.Create(Self.transformInfoInterface)) as ICategoryPropertiesFactoryInterface);
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
    

function TStoreCategoryFactory.getRootInstance(categoryPath: TAbPath): ICategoryInterface;
var
  level: Integer;
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
begin
        try
            level := TCategoryUtil.getPathLevel(categoryPath);
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TRootStoreCategoryPropertiesFactory.Create(Self.transformInfoInterface, categoryPath)) as ICategoryPropertiesFactoryInterface);
            Exit((TJava.ToObject(TCategory.Create(categoryPropertiesFactoryInterface_, level)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(String, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStoreCategoryFactory.getRootInstanceFromNode(node_: TNode): ICategoryInterface;
var
  categoryPropertiesFactoryInterface_: ICategoryPropertiesFactoryInterface;
  categoryPath: TAbPath;
  level: Integer;
begin
        try
            categoryPropertiesFactoryInterface_ := (TJava.ToObject(TRootStoreCategoryPropertiesFactory.Create(Self.transformInfoInterface, node_)) as ICategoryPropertiesFactoryInterface);
            categoryPath := TAbPath.Create(TCategoryUtil.getNameFromNode(node_), TStringUtil.getInstance().EMPTY_STRING);
            level := TCategoryUtil.getPathLevel(categoryPath);
            Exit((TJava.ToObject(TCategory.Create(categoryPropertiesFactoryInterface_, level)) as ICategoryInterface));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getInstance(String, int)', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


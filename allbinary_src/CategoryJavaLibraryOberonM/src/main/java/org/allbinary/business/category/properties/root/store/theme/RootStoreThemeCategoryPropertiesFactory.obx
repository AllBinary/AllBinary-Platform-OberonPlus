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
// package org.allbinary.business.category.properties.root.store.theme
unit RootStoreThemeCategoryPropertiesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryPropertiesFactoryInterface, CategoryPropertiesInterface, LogUtil, AbPath, TransformInfoInterface, Node;

type
  {AB:TYPES}
  TRootStoreThemeCategoryPropertiesFactory = class(TInterfacedObject, ICategoryPropertiesFactoryInterface)
  public
    logUtil: TLogUtil;
    categoryPropertiesInterface: ICategoryPropertiesInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; abPath_: TAbPath); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>); overload;
        function getInstance: ICategoryPropertiesInterface; virtual;
  end;

implementation
uses
  RootStoreThemeCategoryProperties, CommonStrings;


{AB:CODE}

procedure TRootStoreThemeCategoryPropertiesFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TRootStoreThemeCategoryPropertiesFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRootStoreThemeCategoryPropertiesFactory.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(TRootStoreThemeCategoryProperties.Create(transformInfoInterface_)) as ICategoryPropertiesInterface);
end;
    

constructor TRootStoreThemeCategoryPropertiesFactory.Create(transformInfoInterface_: ITransformInfoInterface; abPath_: TAbPath);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(TRootStoreThemeCategoryProperties.Create(transformInfoInterface_, abPath_)) as ICategoryPropertiesInterface);
end;
    

constructor TRootStoreThemeCategoryPropertiesFactory.Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(TRootStoreThemeCategoryProperties.Create(transformInfoInterface_, node_)) as ICategoryPropertiesInterface);
end;
    

constructor TRootStoreThemeCategoryPropertiesFactory.Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(TRootStoreThemeCategoryProperties.Create(transformInfoInterface_, categoryPropertiesHashMap)) as ICategoryPropertiesInterface);
end;
    

function TRootStoreThemeCategoryPropertiesFactory.getInstance: ICategoryPropertiesInterface;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit((TJava.ToObject(Self.categoryPropertiesInterface) as ICategoryPropertiesInterface));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.business.category.properties
unit CategoryPropertiesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Node, CategoryPropertiesInterface, CategoryPropertiesFactoryInterface;

type
  {AB:TYPES}
  TCategoryPropertiesFactory = class(TInterfacedObject, ICategoryPropertiesFactoryInterface)
  public
    logUtil: TLogUtil;
    categoryPropertiesInterface: ICategoryPropertiesInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string); overload;
        constructor Create(node_: TNode); overload;
        constructor Create(categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>); overload;
        function getInstance: ICategoryPropertiesInterface; virtual;
  end;

implementation
uses
  CategoryProperties, CommonStrings;


{AB:CODE}

procedure TCategoryPropertiesFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TCategoryPropertiesFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryPropertiesFactory.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(TCategoryProperties.Create(name)) as ICategoryPropertiesInterface);
end;
    

constructor TCategoryPropertiesFactory.Create(node_: TNode);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(TCategoryProperties.Create(node_)) as ICategoryPropertiesInterface);
end;
    

constructor TCategoryPropertiesFactory.Create(categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.categoryPropertiesInterface := (TJava.ToObject(TCategoryProperties.Create(categoryPropertiesHashMap)) as ICategoryPropertiesInterface);
end;
    

function TCategoryPropertiesFactory.getInstance: ICategoryPropertiesInterface;
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


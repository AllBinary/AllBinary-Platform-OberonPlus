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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoHttpStore;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreFrontInterface, LogUtil, AbPath, TransformInfoHttp, TransformInfoHttpStoreInterface;

type
  {AB:TYPES}
  TTransformInfoHttpStore = class(TTransformInfoHttp, ITransformInfoHttpStoreInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(storeFrontInterface_: IStoreFrontInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        function getPath: string;
        function getTemplateFilePath: TAbPath; virtual;
        function getObjectConfigFilePath: TAbPath; virtual;
        function getDataFilePath: TAbPath; virtual;
        procedure setStoreName(value: string); virtual;
        function getStoreName: string; virtual;
  end;

implementation
uses
  StoreFrontData, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, AbPathData, StringMaker;


{AB:CODE}

procedure TTransformInfoHttpStore.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TTransformInfoHttpStore.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoHttpStore.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_, True);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

constructor TTransformInfoHttpStore.Create(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
var
  stringBuffer: TStringMaker;
begin
        inherited Create(databaseHashMap, propertiesHashMap, pageContext_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Database HashMap: ');
            stringBuffer.append(databaseHashMap.toString());
            stringBuffer.append(''#10'Properties HashMap: ');
            stringBuffer.append(propertiesHashMap.toString());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'Constructor(HashMap, HashMap , PageContext)');
        end;
        Self.setStoreName(TJava.UnboxString(TJava.ToObject(databaseHashMap.get(TJava.Box(TStoreFrontData.getInstance().NAME)))));
end;
    

constructor TTransformInfoHttpStore.Create(storeFrontInterface_: IStoreFrontInterface; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.setStoreName(storeFrontInterface_.getName());
end;
    

// throws Exception
function TTransformInfoHttpStore.getPath: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(Self.getStoreName());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Exit(stringBuffer.toString());
end;
    

// throws Exception
function TTransformInfoHttpStore.getTemplateFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getTemplateFile()));
end;
    

// throws Exception
function TTransformInfoHttpStore.getObjectConfigFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getObjectConfigFile()));
end;
    

// throws Exception
function TTransformInfoHttpStore.getDataFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getDataFile()));
end;
    

procedure TTransformInfoHttpStore.setStoreName(value: string);
begin
        inherited setStoreName(value);
end;
    

function TTransformInfoHttpStore.getStoreName: string;
begin
        Exit(inherited getStoreName());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


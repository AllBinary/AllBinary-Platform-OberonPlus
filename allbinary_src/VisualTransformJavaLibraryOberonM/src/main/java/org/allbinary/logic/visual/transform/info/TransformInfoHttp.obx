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
unit TransformInfoHttp;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbContext, WeblisketSessionInterface, LogUtil, AbPath, TransformInfo, TransformInfoHttpInterface;

type
  {AB:TYPES}
  TTransformInfoHttp = class(TTransformInfo, ITransformInfoHttpInterface)
  public
    logUtil: TLogUtil;
    abContext: TAbContext;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext; crud: Boolean); overload;
        constructor Create(request: THttpServletRequest; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(parentViewOfThisTransformInfoInterface: TTransformInfoHttp); overload;
        procedure set_(hashMap_: TJavaHashMap<TObject, TObject>);
        function getWeblisketSession: IWeblisketSessionInterface; virtual;
        function getPageContext: TPageContext; virtual;
        function getPropertiesHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getTemplateFilePath: TAbPath; virtual;
        function getObjectConfigFilePath: TAbPath; virtual;
        function getDataFilePath: TAbPath; virtual;
  end;

implementation
uses
  TransformInfoData, StoreFrontData, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, RequestParams, AbSqlData, TransformInfoObjectConfig;


{AB:CODE}

procedure TTransformInfoHttp.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TTransformInfoHttp.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoHttp.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext; crud: Boolean);
begin
        inherited Create();
        InitFields;
        Self.abContext := TAbContext.Create(propertiesHashMap, pageContext_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), 'Constructor(HashMap, PageContext, boolean)');
        end;
        Self.override_(propertiesHashMap);
end;
    

constructor TTransformInfoHttp.Create(request: THttpServletRequest; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create();
        InitFields;
        Self.abContext := TAbContext.Create(propertiesHashMap, pageContext_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), 'Constructor(HttpServletRequest, HashMap, PageContext)');
        end;
        Self.set_(TRequestParams.Create(THttpServletRequest(TJava.ToObject(request))).toHashMap());
        Self.override_(propertiesHashMap);
end;
    

constructor TTransformInfoHttp.Create(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create();
        InitFields;
        Self.abContext := TAbContext.Create(propertiesHashMap, pageContext_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), 'Constructor(HashMap, HashMap, PageContext)');
        end;
        Self.set_(databaseHashMap);
end;
    

constructor TTransformInfoHttp.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create();
        InitFields;
        Self.abContext := TAbContext.Create(propertiesHashMap, pageContext_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), 'Constructor(HashMap, PageContext)');
        end;
        Self.set_(propertiesHashMap);
end;
    

constructor TTransformInfoHttp.Create(parentViewOfThisTransformInfoInterface: TTransformInfoHttp);
begin
        inherited Create();
        InitFields;
        Self.abContext := TAbContext.Create(parentViewOfThisTransformInfoInterface.getPropertiesHashMap(), parentViewOfThisTransformInfoInterface.getPageContext());
end;
    

// throws Exception
procedure TTransformInfoHttp.set_(hashMap_: TJavaHashMap<TObject, TObject>);
var
  transformInfoData_: TTransformInfoData;
  stringValidationUtil_: TObject;
  objectConfigString: string;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + hashMap_.toString(), TJava.Box(Self), 'set()');
        end;
        transformInfoData_ := TTransformInfoData.getInstance();
        Self.setName(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.NAME)))));
        Self.setStoreName(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME)))));
        Self.setObjectFile(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTFILENAME)))));
        Self.setObject(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECT_)))));
        stringValidationUtil_ := nil;
        objectConfigString := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTCONFIG))));
        if stringValidationUtil_.isValidRequired(objectConfigString, 10, TAbSqlData.MAXBLOB) then begin
            Self.setObjectConfig(objectConfigString);
        end else begin
            Self.setObjectConfig(TTransformInfoObjectConfig.Create(Self).toString());
        end;
        if not ((TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTCONFIGFILENAME)))) = '')) then begin
            Self.setObjectConfigFile(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTCONFIGFILENAME)))));
        end;
        Self.setTemplateFile(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.TEMPLATEFILENAME)))));
        Self.setTemplate(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.TEMPLATE)))));
        Self.setDataFile(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.DATAFILENAME)))));
        Self.setData(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.DATA)))));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
            Self.logUtil.putF(Self.log(), TJava.Box(Self), 'set()');
        end;
end;
    

function TTransformInfoHttp.getWeblisketSession: IWeblisketSessionInterface;
begin
        Exit(Self.abContext.getWeblisketSession());
end;
    

function TTransformInfoHttp.getPageContext: TPageContext;
begin
        Exit(Self.abContext.getPageContext());
end;
    

function TTransformInfoHttp.getPropertiesHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.abContext.getPropertiesHashMap());
end;
    

// throws Exception
function TTransformInfoHttp.getTemplateFilePath: TAbPath;
begin
        Exit(TAbPath.Create((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH), Self.getTemplateFile()));
end;
    

// throws Exception
function TTransformInfoHttp.getObjectConfigFilePath: TAbPath;
begin
        Exit(TAbPath.Create((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH), Self.getObjectConfigFile()));
end;
    

// throws Exception
function TTransformInfoHttp.getDataFilePath: TAbPath;
begin
        Exit(TAbPath.Create((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH), Self.getDataFile()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


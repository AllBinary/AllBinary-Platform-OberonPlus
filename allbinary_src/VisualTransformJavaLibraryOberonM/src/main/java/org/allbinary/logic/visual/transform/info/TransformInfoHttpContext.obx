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
unit TransformInfoHttpContext;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbPath, TransformInfoHttp;

type
  {AB:TYPES}
  TTransformInfoHttpContext = class(TTransformInfoHttp)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext); overload;
        function getPath: string;
        function getTemplateFilePath: TAbPath; virtual;
        function getObjectConfigFilePath: TAbPath; virtual;
        function getDataFilePath: TAbPath; virtual;
  end;

implementation
uses
  FREEBLISKET_PATH_GLOBALS, URLGLOBALS, AbPathData, StringMaker, StringUtil;


{AB:CODE}

procedure TTransformInfoHttpContext.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TTransformInfoHttpContext.Create(databaseHashMap: TJavaHashMap<TObject, TObject>; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
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
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.setStoreName(TStringUtil.getInstance().EMPTY_STRING);
end;
    

constructor TTransformInfoHttpContext.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Properties HashMap: ' + propertiesHashMap.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.setStoreName(TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
function TTransformInfoHttpContext.getPath: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH);
        stringBuffer.append(Self.getStoreName());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Exit(stringBuffer.toString());
end;
    

// throws Exception
function TTransformInfoHttpContext.getTemplateFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getTemplateFile()));
end;
    

// throws Exception
function TTransformInfoHttpContext.getObjectConfigFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getObjectConfigFile()));
end;
    

// throws Exception
function TTransformInfoHttpContext.getDataFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getDataFile()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


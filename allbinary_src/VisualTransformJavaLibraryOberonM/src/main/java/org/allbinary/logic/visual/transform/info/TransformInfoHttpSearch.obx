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
unit TransformInfoHttpSearch;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SearchRequest, AbPath, TransformInfoHttp;

type
  {AB:TYPES}
  TTransformInfoHttpSearch = class(TTransformInfoHttp)
  public
        constructor Create(searchRequest_: TSearchRequest);
        function getPath: string;
        function getTemplateFilePath: TAbPath; virtual;
        function getObjectConfigFilePath: TAbPath; virtual;
        function getDataFilePath: TAbPath; virtual;
  end;

implementation
uses
  FREEBLISKET_PATH_GLOBALS, URLGLOBALS, AbPathData, StringMaker, StringUtil;


{AB:CODE}
    

constructor TTransformInfoHttpSearch.Create(searchRequest_: TSearchRequest);
var
  dataFileName: string;
begin
        inherited Create(searchRequest_.getPropertiesHashMap(), searchRequest_.getPageContext());
        if (searchRequest_.getStoreFront().getName()) <> ('') then begin
            Self.setStoreName(searchRequest_.getStoreFront().getName());
        end else begin
            Self.setStoreName(TStringUtil.getInstance().EMPTY_STRING);
        end;
        dataFileName := searchRequest_.getXslFile();
        Self.setTemplateFile(dataFileName);
end;
    

// throws Exception
function TTransformInfoHttpSearch.getPath: string;
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
function TTransformInfoHttpSearch.getTemplateFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getTemplateFile()));
end;
    

// throws Exception
function TTransformInfoHttpSearch.getObjectConfigFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getObjectConfigFile()));
end;
    

// throws Exception
function TTransformInfoHttpSearch.getDataFilePath: TAbPath;
begin
        Exit(TAbPath.Create(Self.getPath(), Self.getDataFile()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


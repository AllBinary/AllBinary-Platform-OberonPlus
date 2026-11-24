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
// package org.allbinary.logic.visual.transform.template.util
unit TransformTemplateCustomizerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TTransformTemplateCustomizerUtil = class(TObject)
  public
    logUtil: TLogUtil;
    CUSTOMIZER_NAME: string;
    BODY_VIEWNAMEKEY: string;
    TITLE_VIEWNAMEKEY: string;
    GLOBALS_NEW: string;
    GLOBALS_INSERT: string;
    GLOBALS_DELETE: string;
    GLOBALS_EDIT: string;
    GLOBALS_UPDATE: string;
    class var instance: TTransformTemplateCustomizerUtil;
    procedure InitFields;
        class function getInstance: TTransformTemplateCustomizerUtil; static;
        constructor Create;
        function getPageNameHack(viewName: string; storeName: string): string; virtual;
  end;

implementation
uses
  GLOBALS2, StdUtil, StringUtil, Replace, CustomizerTransformInfoData, BodyData, TitleData, CommonSeps, CommonStrings;


{AB:CODE}

procedure TTransformTemplateCustomizerUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
end;
    

class function TTransformTemplateCustomizerUtil.getInstance: TTransformTemplateCustomizerUtil;
begin
        Exit(TTransformTemplateCustomizerUtil.instance);
end;
    

constructor TTransformTemplateCustomizerUtil.Create;
var
  commonStrings_: TCommonStrings;
  SPACE: string;
begin
    inherited Create;
    InitFields;
        commonStrings_ := TCommonStrings.getInstance();
        SPACE := TCommonSeps.getInstance().SPACE;
        Self.CUSTOMIZER_NAME := SPACE + TJava.ToString(TCustomizerTransformInfoData.NAME);
        Self.BODY_VIEWNAMEKEY := SPACE + TJava.ToString(TBodyData.getInstance().VIEWNAMEKEY);
        Self.TITLE_VIEWNAMEKEY := SPACE + TJava.ToString(TTitleData.getInstance().VIEWNAMEKEY);
        Self.GLOBALS_NEW := TJava.ToString(GLOBALS2.NEW_) + SPACE;
        Self.GLOBALS_INSERT := commonStrings_.INSERT + SPACE;
        Self.GLOBALS_DELETE := commonStrings_.DELETE_ + SPACE;
        Self.GLOBALS_EDIT := TJava.ToString(GLOBALS2.EDIT) + SPACE;
        Self.GLOBALS_UPDATE := commonStrings_.UPDATE + SPACE;
end;
    

function TTransformTemplateCustomizerUtil.getPageNameHack(viewName: string; storeName: string): string;
var
  SPACE: string;
  ONE_EMPTY_STRING_ARRAY: TArray<string>;
  hashMap_: TJavaHashMap<TObject, TObject>;
  replace_: TReplace;
  rootViewName: string;
begin
        SPACE := TCommonSeps.getInstance().SPACE;
        ONE_EMPTY_STRING_ARRAY := TStringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TArray<string>.Create(viewName + SPACE)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(storeName + SPACE)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.CUSTOMIZER_NAME)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.BODY_VIEWNAMEKEY)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.TITLE_VIEWNAMEKEY)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.GLOBALS_NEW)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.GLOBALS_INSERT)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.GLOBALS_DELETE)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.GLOBALS_EDIT)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        hashMap_.put(TJava.Box(TArray<string>.Create(Self.GLOBALS_UPDATE)), TJava.Box(ONE_EMPTY_STRING_ARRAY));
        replace_ := nil;
        rootViewName := replace_.all(viewName);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('RootViewName for ObjectConfig: ' + rootViewName, TJava.Box(Self), 'getPageNameHack');
        end;
        Exit(rootViewName);
end;

initialization
  {AB:INITIALIZATION}
  TTransformTemplateCustomizerUtil.instance := TTransformTemplateCustomizerUtil.Create();
  {AB:END}

end.


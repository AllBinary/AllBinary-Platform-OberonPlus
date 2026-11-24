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
unit RootStoreThemeCategoryProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RootStoreCategoryProperties, AbPath, TransformInfoInterface, Node;

type
  {AB:TYPES}
  TRootStoreThemeCategoryProperties = class(TRootStoreCategoryProperties)
  public
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; abPath_: TAbPath); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure initPath; virtual;
  end;

implementation
uses
  StoreFrontFactory, StoreFrontInterface, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, AbPathData, StringMaker, StringUtil, TransformInfoHttpStoreInterface;


{AB:CODE}
    

constructor TRootStoreThemeCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

constructor TRootStoreThemeCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface; abPath_: TAbPath);
begin
        inherited Create(transformInfoInterface_, abPath_);
end;
    

constructor TRootStoreThemeCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface; node_: TNode);
begin
        inherited Create(transformInfoInterface_, node_);
end;
    

constructor TRootStoreThemeCategoryProperties.Create(transformInfoInterface_: ITransformInfoInterface; categoryPropertiesHashMap: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(transformInfoInterface_, categoryPropertiesHashMap);
end;
    

// throws Exception
procedure TRootStoreThemeCategoryProperties.initPath;
var
  transformInfoHttpStoreInterface_: ITransformInfoHttpStoreInterface;
  storeFrontInterface_: IStoreFrontInterface;
  stringBuffer: TStringMaker;
  abPath_: TAbPath;
  httpServletRequest_: THttpServletRequest;
begin
        transformInfoHttpStoreInterface_ := (TJava.ToObject(Self.transformInfoInterface) as ITransformInfoHttpStoreInterface);
        storeFrontInterface_ := TStoreFrontFactory.getInstance(transformInfoHttpStoreInterface_.getStoreName());
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(storeFrontInterface_.getName());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().THEMEPATH);
        abPath_ := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        httpServletRequest_ := THttpServletRequest(TJava.ToObject(transformInfoHttpStoreInterface_.getPageContext().getRequest()));
        Self.webAppAbPath := TAbPath.Create(TJava.ToString(httpServletRequest_.getContextPath()) + abPath_.toString(), TStringUtil.getInstance().EMPTY_STRING);
        Self.setRootFilePath(TAbPath.Create(TJava.ToString(TURLGLOBALS.getMainPath()) + abPath_.toString(), TStringUtil.getInstance().EMPTY_STRING));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


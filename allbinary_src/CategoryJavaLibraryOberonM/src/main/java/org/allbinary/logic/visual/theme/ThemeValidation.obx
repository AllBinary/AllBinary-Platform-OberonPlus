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
// package org.allbinary.logic.visual.theme
unit ThemeValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreThemeCategoryInterface, DomNodeInterface, LogUtil, ValidationInterface, AbPath, CompositeTransformInfoInterface, TransformInfoInterface, CssStyleValidation, CommonStrings, Document, Node, ThemeInterface;

type
  {AB:TYPES}
  TThemeValidation = class(TInterfacedObject, IThemeInterface, IValidationInterface, IDomNodeInterface, ICompositeTransformInfoInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    transformInfoInterface: ITransformInfoInterface;
    styleValidationInterface: IValidationInterface;
    themeName: string;
    themePreviewImageName: string;
    webAppAbPath: TAbPath;
    categoryAbPath: TAbPath;
    fileAbPath: TAbPath;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; cssStyleValidation_: TCssStyleValidation; categoryThemePath: string); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; hashMap_: TJavaHashMap<TObject, TObject>); overload;
        constructor Create(storeThemeCategoryInterface_: IStoreThemeCategoryInterface; node_: TNode); overload;
        procedure init; overload;
        procedure init(storeThemeCategoryInterface_: IStoreThemeCategoryInterface); overload;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        function getName: string; virtual;
        function getPreviewImageName: string; virtual;
        function getPreviewImagePath: string; virtual;
        function getPath: string; virtual;
        function getCssStyleValidation: TCssStyleValidation; virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ThemeData, BasicArrayListD, CategoryData, CategoryFactoryInterface, StoreThemeCategoryFactory, CategoryLoaderFactory, CategoryLoaderInterface, DomData, DomNodeHelper, DomSearchHelper, ModDomHelper, DomDocumentHelper, StdUtil, AbSqlData, CryptFileReader, AbPathData, PathUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TThemeValidation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
end;

function TThemeValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TThemeValidation.Create(transformInfoInterface_: ITransformInfoInterface; cssStyleValidation_: TCssStyleValidation; categoryThemePath: string);
var
  pathData: TAbPathData;
  pathUtil_: TPathUtil;
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        pathData := TAbPathData.getInstance();
        pathUtil_ := TPathUtil.getInstance();
        Self.categoryAbPath := pathUtil_.removeNameFromPath(categoryThemePath);
        Self.themeName := pathData.getNameFromPath(categoryThemePath);
        Self.styleValidationInterface := cssStyleValidation_;
        Self.init();
end;
    

constructor TThemeValidation.Create(transformInfoInterface_: ITransformInfoInterface; hashMap_: TJavaHashMap<TObject, TObject>);
var
  categoryThemeAbPath: TAbPath;
  pathData: TAbPathData;
  pathUtil_: TPathUtil;
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
        categoryThemeAbPath := TAbPath.Create(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TThemeData.getInstance().PATH)))), TStringUtil.getInstance().EMPTY_STRING);
        pathData := TAbPathData.getInstance();
        pathUtil_ := TPathUtil.getInstance();
        Self.categoryAbPath := pathUtil_.removeNameFromPath(categoryThemeAbPath.toString());
        Self.themeName := pathData.getNameFromPath(categoryThemeAbPath.toString());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('CategoryThemePath: ');
            stringBuffer.append(categoryThemeAbPath.toString());
            stringBuffer.append(' & CategoryPath: ');
            stringBuffer.append(Self.categoryAbPath.toString());
            stringBuffer.append(' & ThemeName: ');
            stringBuffer.append(Self.themeName);
            Self.logUtil.putF('Http Request Constructor', TJava.Box(Self), stringBuffer.toString());
        end;
        Self.init();
end;
    

constructor TThemeValidation.Create(storeThemeCategoryInterface_: IStoreThemeCategoryInterface; node_: TNode);
var
  themeNameNode: TNode;
  valueNode: TNode;
  previewImageNameNode: TNode;
  previewImageNameValueNode: TNode;
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := storeThemeCategoryInterface_.getTransformInfoInterface();
        Self.categoryAbPath := storeThemeCategoryInterface_.getPath();
        themeNameNode := TDomSearchHelper.getNode(TThemeData.getInstance().NAME, node_.getChildNodes());
        valueNode := TDomSearchHelper.getNode(TDomData.VALUE, themeNameNode.getChildNodes());
        Self.themeName := TDomNodeHelper.getTextNodeValue(valueNode);
        previewImageNameNode := TDomSearchHelper.getNode(TThemeData.getInstance().PREVIEW_IMAGE_NAME, node_.getChildNodes());
        previewImageNameValueNode := TDomSearchHelper.getNode(TDomData.VALUE, previewImageNameNode.getChildNodes());
        Self.themePreviewImageName := TDomNodeHelper.getTextNodeValue(previewImageNameValueNode);
        Self.webAppAbPath := storeThemeCategoryInterface_.getWebAppPath();
        Self.init(storeThemeCategoryInterface_);
end;
    

// throws Exception
procedure TThemeValidation.init;
var
  categoryFactoryInterface_: ICategoryFactoryInterface;
  categoryLoaderInterface_: ICategoryLoaderInterface;
  rootStoreThemeCategoryInterface: IStoreThemeCategoryInterface;
begin
        categoryFactoryInterface_ := TStoreThemeCategoryFactory.Create(Self.getTransformInfoInterface());
        categoryLoaderInterface_ := TCategoryLoaderFactory.getInstance(categoryFactoryInterface_);
        rootStoreThemeCategoryInterface := (TJava.ToObject(categoryFactoryInterface_.getRootInstance()) as IStoreThemeCategoryInterface);
        Self.init(rootStoreThemeCategoryInterface);
end;
    

// throws Exception
procedure TThemeValidation.init(storeThemeCategoryInterface_: IStoreThemeCategoryInterface);
begin
        Self.fileAbPath := TAbPath.Create(storeThemeCategoryInterface_.getRootFilePath().toString() + Self.categoryAbPath.toString(), TStringUtil.getInstance().EMPTY_STRING);
        Self.webAppAbPath := storeThemeCategoryInterface_.getWebAppPath();
end;
    

// throws Exception
function TThemeValidation.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.transformInfoInterface);
end;
    

function TThemeValidation.getName: string;
begin
        Exit(Self.themeName);
end;
    

function TThemeValidation.getPreviewImageName: string;
begin
        Exit(Self.themePreviewImageName);
end;
    

function TThemeValidation.getPreviewImagePath: string;
begin
        Exit(Self.webAppAbPath.toString() + Self.categoryAbPath.toString());
end;
    

function TThemeValidation.getPath: string;
begin
        Exit(Self.categoryAbPath.toString());
end;
    

// throws Exception
function TThemeValidation.getCssStyleValidation: TCssStyleValidation;
var
  cssStyleFileAbPath: TAbPath;
  cryptFileReader_: TCryptFileReader;
  document_: TDocument;
begin
        if (Self.styleValidationInterface) = (nil) then begin
            cssStyleFileAbPath := TAbPath.Create(Self.fileAbPath.toString(), Self.themeName + TJava.ToString(TAbPathData.getInstance().EXTENSION_SEP) + TJava.ToString(TCategoryData.getInstance().UNCRYPTED_EXTENSION));
            cryptFileReader_ := TCryptFileReader.Create(TCategoryData.getInstance().UNCRYPTED_EXTENSION, TCategoryData.getInstance().ENCRYPTED_EXTENSION);
            document_ := TDomDocumentHelper.create_(cryptFileReader_.get(cssStyleFileAbPath));
            Self.styleValidationInterface := TCssStyleValidation.Create(document_);
        end;
        Exit(TCssStyleValidation(TJava.ToObject(Self.styleValidationInterface)));
end;
    

function TThemeValidation.isValid: Boolean;
var
  isValid: Boolean;
begin
        try
            isValid := True;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            if not (nil.isValidRequired(Self.categoryAbPath.toString(), TAbSqlData.MINSTRING, TAbSqlData.MAXSTRING)) then begin
                isValid := False;
            end;
            if not (nil.isValidRequired(Self.themeName, TAbSqlData.MINSTRING, TAbSqlData.MAXSTRING)) then begin
                isValid := False;
            end;
            if not ((Self.getCssStyleValidation().isValid())) then begin
                isValid := False;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('End: ' + BoolToStr(isValid, True), TJava.Box(Self), Self.commonStrings.IS_VALID);
            end;
            Exit(isValid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TThemeValidation.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Theme Validation Error');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TThemeValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TThemeValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TThemeValidation.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getName())));
end;
    

function TThemeValidation.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.getName()));
        vector.add(TJava.Box(Self.getPath()));
        vector.add(TJava.Box(Self.getPreviewImageName()));
        vector.add(TJava.Box(Self.getPreviewImagePath()));
        Exit(vector);
end;
    

function TThemeValidation.toHashMap: TJavaHashMap<TObject, TObject>;
var
  themeData_: TThemeData;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        themeData_ := TThemeData.getInstance();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(themeData_.NAME), TJava.Box(Self.getName()));
        hashMap_.put(TJava.Box(themeData_.PATH), TJava.Box(Self.getPath()));
        hashMap_.put(TJava.Box(themeData_.PREVIEW_IMAGE_NAME), TJava.Box(Self.getPreviewImageName()));
        hashMap_.put(TJava.Box(themeData_.PREVIEW_IMAGE_PATH), TJava.Box(Self.getPreviewImagePath()));
        Exit(hashMap_);
end;
    

// throws Exception
function TThemeValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  domNodeInterface_: IDomNodeInterface;
begin
        node_ := TModDomHelper.createNameValueNodes(document_, TThemeData.getInstance().NAME, Self.toHashMap());
        domNodeInterface_ := (TJava.ToObject(Self.getCssStyleValidation()) as IDomNodeInterface);
        node_.appendChild(domNodeInterface_.toXmlNode(document_));
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


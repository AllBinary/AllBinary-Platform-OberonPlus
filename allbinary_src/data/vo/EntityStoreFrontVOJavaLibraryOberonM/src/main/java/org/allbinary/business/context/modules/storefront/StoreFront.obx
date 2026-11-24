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
// package org.allbinary.business.context.modules.storefront
unit StoreFront;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, ContextConfigurationInterface, LogUtil, Directory, AbPath, AbPathUtil, StringUtil, CommonStrings, StoreFrontInterface;

type
  {AB:TYPES}
  TStoreFront = class(TInterfacedObject, IStoreFrontInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    directory: TDirectory;
    stringUtil: TStringUtil;
    abPathUtil: TAbPathUtil;
    name: string;
    basketName: string;
    homeHostName: string;
    homeHostNamePath: TAbPath;
    hostName: string;
    hostNamePath: TAbPath;
    testHomeHostName: string;
    testHomeHostNamePath: TAbPath;
    testHostName: string;
    testHostNamePath: TAbPath;
    imagePath: TAbPath;
    staticPath: TAbPath;
    categoryPath: TAbPath;
    inventoryControl: string;
    contextConfigurationInterface: IContextConfigurationInterface;
    subStores: string;
    tagLocation: string;
    packageLocation: string;
    ftp: string;
    ftpPath: TAbPath;
    ftpUserName: string;
    ftpPassword: string;
    testFtp: string;
    testFtpPath: TAbPath;
    testFtpUserName: string;
    testFtpPassword: string;
    timeCreated: string;
    lastModified: string;
    MINCHAR: Integer;
    MINSTORENAMELENGTH: Integer;
    MAXCHAR: Integer;
    EMPTY_STRING: string;
    ONE_EMPTY_STRING_ARRAY: TArray<string>;
    class var RESOURCES: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function isColumn(columnName: string): Boolean;
        function createPath(key: string; hashMap_: TJavaHashMap<TObject, TObject>): TAbPath; overload;
        function createPath(append: string; key: string; hashMap_: TJavaHashMap<TObject, TObject>): TAbPath; overload;
        function get(key: string; hashMap_: TJavaHashMap<TObject, TObject>): string;
        function create_(append: string; key: string; hashMap_: TJavaHashMap<TObject, TObject>): string;
        procedure getFormData(storeHashMap: TJavaHashMap<TObject, TObject>);
        function isNameValid: Boolean; virtual;
        function isValid: Boolean; virtual;
        function nameValidationInfo: string; virtual;
        function validationInfo: string; virtual;
        function getTestHtmlPath: string; virtual;
        function getCurrentHostName: string; virtual;
        function getCurrentHostNamePath: string; virtual;
        function getCurrentHomeHostName: string; virtual;
        function getCurrentHomeHostNamePath: string; virtual;
        function getName: string; virtual;
        function getBasketName: string; virtual;
        function getHomeHostName: string; virtual;
        function getHomeHostNamePath: string; virtual;
        function getHostName: string; virtual;
        function getHostNamePath: string; virtual;
        function getTestHomeHostName: string; virtual;
        function getTestHomeHostNamePath: string; virtual;
        function getTestHostName: string; virtual;
        function getTestHostNamePath: string; virtual;
        function getStaticPath: string; virtual;
        function getCategoryPath: string; virtual;
        function getInventoryControl: string; virtual;
        function getSubStores: TBasicArrayList; virtual;
        function getTagLocation: string; virtual;
        function getPackageLocation: string; overload; virtual;
        function getFtp: string; virtual;
        function getFtpUserName: string; virtual;
        function getFtpPassword: string; virtual;
        function getTestFtp: string; virtual;
        function getTestFtpUserName: string; virtual;
        function getTestFtpPassword: string; virtual;
        function getFtpPath: string; virtual;
        function getTestFtpPath: string; virtual;
        function getTimeCreated: string; virtual;
        function getLastModified: string; virtual;
        procedure setName(value: string); virtual;
        procedure setBasketName(value: string); virtual;
        procedure setHomeHostName(value: string); virtual;
        procedure setHomeHostNamePath(value: string); virtual;
        procedure setHostName(value: string); virtual;
        procedure setHostNamePath(value: string); virtual;
        procedure setTestHomeHostName(value: string); virtual;
        procedure setTestHomeHostNamePath(value: string); virtual;
        procedure setTestHostName(value: string); virtual;
        procedure setTestHostNamePath(value: string); virtual;
        procedure setImagePath(value: string); virtual;
        procedure setStaticPath(value: string); virtual;
        procedure setCategoryPath(value: string); virtual;
        procedure setSubStores(value: string); virtual;
        procedure setTagLocation(value: string); virtual;
        procedure setPackageLocation(value: string); virtual;
        procedure setInventoryControl(value: string); virtual;
        procedure getPackageLocation(value: string); overload; virtual;
        procedure setFtp(value: string); virtual;
        procedure setFtpUserName(value: string); virtual;
        procedure setFtpPassword(value: string); virtual;
        procedure setTestFtp(value: string); virtual;
        procedure setTestFtpUserName(value: string); virtual;
        procedure setTestFtpPassword(value: string); virtual;
        procedure setTimeCreated(value: string); virtual;
        procedure setLastModified(value: string); virtual;
        procedure setFtpPath(value: string); virtual;
        procedure setTestFtpPath(value: string); virtual;
        function createDirectories: Boolean;
        procedure install(current: Integer; total: Integer); virtual;
        procedure installViews(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; current: Integer; total: Integer);
        procedure installResources(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
        procedure installMedia(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function getContextConfigurationInterface: IContextConfigurationInterface; virtual;
        procedure setContextConfigurationInterface(contextConfigurationInterface_: IContextConfigurationInterface); virtual;
  end;

implementation
uses
  StoreFrontData, BasicArrayListD, ContextConfiguration, ContextConfigurationDomDocumentMapping, ContextConfigurationInterfaceFactory, EntryData, UserData, DomDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, StdUtil, RequestParams, AbFile, FileUtil, AbPathData, SpecialCharacterUtil, StringMaker, Replace, Tokenizer, CommonSeps, StringEscapeUtils, Document;


{AB:CODE}

procedure TStoreFront.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.directory := TDirectory.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.abPathUtil := TAbPathUtil.getInstance();
  Self.name := Self.stringUtil.EMPTY_STRING;
  Self.basketName := Self.stringUtil.EMPTY_STRING;
  Self.homeHostName := Self.stringUtil.EMPTY_STRING;
  Self.homeHostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.hostName := Self.stringUtil.EMPTY_STRING;
  Self.hostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.testHomeHostName := Self.stringUtil.EMPTY_STRING;
  Self.testHomeHostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.testHostName := Self.stringUtil.EMPTY_STRING;
  Self.testHostNamePath := Self.abPathUtil.NO_ABPATH;
  Self.imagePath := Self.abPathUtil.NO_ABPATH;
  Self.staticPath := Self.abPathUtil.NO_ABPATH;
  Self.categoryPath := Self.abPathUtil.NO_ABPATH;
  Self.inventoryControl := Self.stringUtil.EMPTY_STRING;
  
  Self.subStores := Self.stringUtil.EMPTY_STRING;
  Self.tagLocation := Self.stringUtil.EMPTY_STRING;
  Self.packageLocation := Self.stringUtil.EMPTY_STRING;
  Self.ftp := Self.stringUtil.EMPTY_STRING;
  Self.ftpPath := Self.abPathUtil.NO_ABPATH;
  Self.ftpUserName := Self.stringUtil.EMPTY_STRING;
  Self.ftpPassword := Self.stringUtil.EMPTY_STRING;
  Self.testFtp := Self.stringUtil.EMPTY_STRING;
  Self.testFtpPath := Self.abPathUtil.NO_ABPATH;
  Self.testFtpUserName := Self.stringUtil.EMPTY_STRING;
  Self.testFtpPassword := Self.stringUtil.EMPTY_STRING;
  Self.timeCreated := Self.stringUtil.EMPTY_STRING;
  Self.lastModified := Self.stringUtil.EMPTY_STRING;
  Self.MINCHAR := 0;
  Self.MINSTORENAMELENGTH := 1;
  Self.MAXCHAR := 255;
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  Self.ONE_EMPTY_STRING_ARRAY := TStringUtil.getInstance().ONE_EMPTY_STRING_ARRAY;
end;

function TStoreFront.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFront.Create;
begin
    inherited Create;
    InitFields;
        Self.contextConfigurationInterface := TContextConfiguration.Create();
end;
    

constructor TStoreFront.Create(request: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.getFormData(TRequestParams.Create(request).toHashMap());
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().EMAILLOGGING) then begin
            Self.logUtil.putF('TWB- needs update for adding and updating context configuration - currently defaults to admin context config', TJava.Box(Self), 'StoreFront');
        end;
        Self.setContextConfigurationInterface(TContextConfigurationInterfaceFactory.getInstance().getInstance('Admin'));
end;
    

constructor TStoreFront.Create(hashMap_: TJavaHashMap<TObject, TObject>);
var
  domDocumentString: string;
  document_: TDocument;
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap_);
        domDocumentString := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().CONFIGURATION))));
        if (domDocumentString) = ('') then begin
            document_ := TDomDocumentHelper.create_(domDocumentString);
            Self.setContextConfigurationInterface(TContextConfigurationInterfaceFactory.getInstance().getInstance(document_));
        end;
end;
    

function TStoreFront.isColumn(columnName: string): Boolean;
begin
        if ((CompareStr(columnName, TStoreFrontData.getInstance().NAME)) = (0)) or ((CompareStr(columnName, TUserData.MAINEMAIL)) = (0)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

// throws Exception
function TStoreFront.createPath(key: string; hashMap_: TJavaHashMap<TObject, TObject>): TAbPath;
begin
        Exit(TAbPath.Create(Self.create_(Self.EMPTY_STRING, key, hashMap_), TStringUtil.getInstance().EMPTY_STRING));
end;
    

// throws Exception
function TStoreFront.createPath(append: string; key: string; hashMap_: TJavaHashMap<TObject, TObject>): TAbPath;
begin
        Exit(TAbPath.Create(Self.create_(append, key, hashMap_), TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TStoreFront.get(key: string; hashMap_: TJavaHashMap<TObject, TObject>): string;
begin
        Exit(Self.create_(Self.EMPTY_STRING, key, hashMap_));
end;
    

function TStoreFront.create_(append: string; key: string; hashMap_: TJavaHashMap<TObject, TObject>): string;
var
  path: string;
begin
        path := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(key))));
        if (path = '') then begin
            Exit(Self.EMPTY_STRING);
        end else begin
            if Self.isColumn(path) then begin
                Exit(TJava.ToString(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(path))))) + append);
            end else begin
                Exit(path);
            end;
        end;
end;
    

// throws Exception
procedure TStoreFront.getFormData(storeHashMap: TJavaHashMap<TObject, TObject>);
var
  storeFrontData_: TStoreFrontData;
begin
        storeFrontData_ := TStoreFrontData.getInstance();
        Self.name := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.NAME))));
        Self.basketName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.NAME))));
        Self.homeHostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.HOMEHOSTNAME))));
        Self.homeHostNamePath := Self.createPath(storeFrontData_.HOMEHOSTNAMEPATH, storeHashMap);
        Self.hostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.HOSTNAME))));
        Self.hostNamePath := Self.createPath(storeFrontData_.HOSTNAMEPATH, storeHashMap);
        Self.testHomeHostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTHOMEHOSTNAME))));
        Self.testHomeHostNamePath := Self.createPath(storeFrontData_.TESTHOMEHOSTNAMEPATH, storeHashMap);
        Self.testHostName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTHOSTNAME))));
        Self.testHostNamePath := Self.createPath(storeFrontData_.TESTHOSTNAMEPATH, storeHashMap);
        Self.imagePath := Self.createPath(TStoreFront.RESOURCES, storeFrontData_.IMAGEPATH, storeHashMap);
        Self.staticPath := Self.createPath(' Products' + TJava.ToString(TAbPathData.getInstance().SEPARATOR), storeFrontData_.STATICPATH, storeHashMap);
        Self.categoryPath := Self.createPath(TStoreFront.RESOURCES, storeFrontData_.CATEGORYPATH, storeHashMap);
        Self.inventoryControl := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.INVENTORYCONTROL))));
        Self.subStores := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.SUBSTORES))));
        Self.tagLocation := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TAGLOCATION))));
        Self.packageLocation := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.PACKAGELOCATION))));
        Self.ftp := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.FTP))));
        Self.ftpPath := Self.createPath(storeFrontData_.FTPPATH, storeHashMap);
        Self.ftpUserName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.FTPUSERNAME))));
        Self.ftpPassword := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.FTPPASSWORD))));
        Self.testFtp := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTFTP))));
        Self.testFtpPath := Self.createPath(storeFrontData_.TESTFTPPATH, storeHashMap);
        Self.testFtpUserName := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTFTPUSERNAME))));
        Self.testFtpPassword := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(storeFrontData_.TESTFTPPASSWORD))));
        Self.timeCreated := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(TEntryData.getInstance().TIMECREATED))));
        Self.lastModified := TJava.UnboxString(TJava.ToObject(storeHashMap.get(TJava.Box(TEntryData.getInstance().LASTMODIFIED))));
end;
    

function TStoreFront.isNameValid: Boolean;
var
  isEscapedCharactersContained: Boolean;
  storeNameEscaped: string;
  stringValidationUtil_: TObject;
  isSpacesContained: Boolean;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        if not (nil.isValidRequired(Self.name, Self.MINSTORENAMELENGTH, Self.MAXCHAR)) then begin
            Exit(False);
        end else begin
            isEscapedCharactersContained := False;
            storeNameEscaped := TStringEscapeUtils.escapeHtml3(Self.name);
            if (CompareStr(Self.name, storeNameEscaped)) <> (0) then begin
                isEscapedCharactersContained := True;
            end;
            stringValidationUtil_ := nil;
            isSpacesContained := False;
            if stringValidationUtil_.containsSpaces(Self.name) then begin
                isSpacesContained := True;
            end;
            if (isSpacesContained) or (isEscapedCharactersContained) then begin
                hashMap_ := TSpecialCharacterUtil.getHashMap();
                hashMap_.put(TJava.Box(TArray<string>.Create(TCommonSeps.getInstance().SPACE)), TJava.Box(Self.ONE_EMPTY_STRING_ARRAY));
                Self.name := TReplace.Create(hashMap_).all(Self.name);
            end;
        end;
        Exit(True);
end;
    

function TStoreFront.isValid: Boolean;
var
  valid: Boolean;
  stringValidationUtil_: TObject;
begin
        valid := True;
        valid := Self.isNameValid();
        stringValidationUtil_ := nil;
        if not (stringValidationUtil_.isValidRequired(Self.basketName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.homeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.homeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.hostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.hostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testHomeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testHomeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.imagePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.staticPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.categoryPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.inventoryControl, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.subStores, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.tagLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.packageLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.ftp, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.ftpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.ftpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.ftpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testFtp, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testFtpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testFtpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.testFtpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
            valid := False;
        end;
        if ((valid)) = (True) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TStoreFront.nameValidationInfo: string;
var
  stringValidationUtil_: TObject;
  stringBuffer: TStringMaker;
begin
        stringValidationUtil_ := nil;
        if not (stringValidationUtil_.isValidRequired(Self.name, Self.MINCHAR, Self.MAXCHAR)) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Name is invalid. Must be < ');
            stringBuffer.appendint(Self.MAXCHAR);
            stringBuffer.append(' and > 0 characters.<br>');
            Exit(stringBuffer.toString());
        end;
        Exit(Self.EMPTY_STRING);
end;
    

function TStoreFront.validationInfo: string;
var
  stringValidationUtil_: TObject;
  stringBuffer: TStringMaker;
begin
        try
            stringValidationUtil_ := nil;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.nameValidationInfo());
            if not (stringValidationUtil_.isValidRequired(Self.basketName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Basket name is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.homeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Home host name is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.homeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Home host name path is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.hostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Host name is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.hostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Host name path is invalid. Must be < ');
                stringBuffer.appendint(Self.MAXCHAR);
                stringBuffer.append(' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testHomeHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test home host name is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testHomeHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test home host name path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testHostName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test host name is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testHostNamePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test host name path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.imagePath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Image path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.staticPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Static path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.categoryPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Category path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.inventoryControl, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Inventory control is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.subStores, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Sub stores is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.tagLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Tag location is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidRequired(Self.packageLocation, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Package location is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.ftp, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.ftpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.ftpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp username is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.ftpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Ftp password is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testFtp, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testFtpPath.toString(), Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp Path is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testFtpUserName, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp username is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            if not (stringValidationUtil_.isValidNotRequired(Self.testFtpPassword, Self.MINCHAR, Self.MAXCHAR)) then begin
                stringBuffer.append('Test ftp password is invalid. Must be < ' + IntToStr(Self.MAXCHAR) + ' and > 0 characters.<br>');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TStoreFront.getTestHtmlPath: string;
begin
        Exit((Torg.allbinary.globals.URLGLOBALS.getTestHtmlPath()) + (Self.getCurrentHostNamePath()));
end;
    

function TStoreFront.getCurrentHostName: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHostName();
        end else begin
            location := Self.getHostName();
        end;
        Exit(location);
end;
    

function TStoreFront.getCurrentHostNamePath: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHostNamePath();
        end else begin
            location := Self.getHostNamePath();
        end;
        Exit(location);
end;
    

function TStoreFront.getCurrentHomeHostName: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHomeHostName();
        end else begin
            location := Self.getHomeHostName();
        end;
        Exit(location);
end;
    

function TStoreFront.getCurrentHomeHostNamePath: string;
var
  location: string;
begin
        location := Self.EMPTY_STRING;
        if Torg.allbinary.globals.URLGLOBALS.isTestingMode() then begin
            location := Self.getTestHomeHostNamePath();
        end else begin
            location := Self.getHomeHostNamePath();
        end;
        Exit(location);
end;
    

function TStoreFront.getName: string;
begin
        Exit(Self.name);
end;
    

function TStoreFront.getBasketName: string;
begin
        Exit(Self.basketName);
end;
    

function TStoreFront.getHomeHostName: string;
begin
        Exit(Self.homeHostName);
end;
    

function TStoreFront.getHomeHostNamePath: string;
begin
        Exit(Self.homeHostNamePath.toString());
end;
    

function TStoreFront.getHostName: string;
begin
        Exit(Self.hostName);
end;
    

function TStoreFront.getHostNamePath: string;
begin
        Exit(Self.hostNamePath.toString());
end;
    

function TStoreFront.getTestHomeHostName: string;
begin
        Exit(Self.testHomeHostName);
end;
    

function TStoreFront.getTestHomeHostNamePath: string;
begin
        Exit(Self.testHomeHostNamePath.toString());
end;
    

function TStoreFront.getTestHostName: string;
begin
        Exit(Self.testHostName);
end;
    

function TStoreFront.getTestHostNamePath: string;
begin
        Exit(Self.testHostNamePath.toString());
end;
    

function TStoreFront.getStaticPath: string;
begin
        Exit(Self.staticPath.toString());
end;
    

function TStoreFront.getCategoryPath: string;
begin
        Exit(Self.categoryPath.toString());
end;
    

function TStoreFront.getInventoryControl: string;
begin
        Exit(Self.inventoryControl);
end;
    

// throws Exception
function TStoreFront.getSubStores: TBasicArrayList;
var
  tokenizer_: TTokenizer;
  subStoreVector: TBasicArrayList;
begin
        try
            tokenizer_ := TTokenizer.Create(TCommonSeps.getInstance().SEMICOLON);
            subStoreVector := tokenizer_.getTokensFromString(Self.subStores, TBasicArrayListD.Create());
            Exit(subStoreVector);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

function TStoreFront.getTagLocation: string;
begin
        Exit(Self.tagLocation);
end;
    

function TStoreFront.getPackageLocation: string;
begin
        Exit(Self.packageLocation);
end;
    

function TStoreFront.getFtp: string;
begin
        Exit(Self.ftp);
end;
    

function TStoreFront.getFtpUserName: string;
begin
        Exit(Self.ftpUserName);
end;
    

function TStoreFront.getFtpPassword: string;
begin
        Exit(Self.ftpPassword);
end;
    

function TStoreFront.getTestFtp: string;
begin
        Exit(Self.testFtp);
end;
    

function TStoreFront.getTestFtpUserName: string;
begin
        Exit(Self.testFtpUserName);
end;
    

function TStoreFront.getTestFtpPassword: string;
begin
        Exit(Self.testFtpPassword);
end;
    

function TStoreFront.getFtpPath: string;
begin
        Exit(Self.ftpPath.toString());
end;
    

function TStoreFront.getTestFtpPath: string;
begin
        Exit(Self.testFtpPath.toString());
end;
    

function TStoreFront.getTimeCreated: string;
begin
        Exit(Self.timeCreated);
end;
    

function TStoreFront.getLastModified: string;
begin
        Exit(Self.lastModified);
end;
    

procedure TStoreFront.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TStoreFront.setBasketName(value: string);
begin
        Self.basketName := value;
end;
    

procedure TStoreFront.setHomeHostName(value: string);
begin
        Self.homeHostName := value;
end;
    

// throws Exception
procedure TStoreFront.setHomeHostNamePath(value: string);
begin
        Self.homeHostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setHostName(value: string);
begin
        Self.hostName := value;
end;
    

// throws Exception
procedure TStoreFront.setHostNamePath(value: string);
begin
        Self.hostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setTestHomeHostName(value: string);
begin
        Self.testHomeHostName := value;
end;
    

// throws Exception
procedure TStoreFront.setTestHomeHostNamePath(value: string);
begin
        Self.testHomeHostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setTestHostName(value: string);
begin
        Self.testHostName := value;
end;
    

// throws Exception
procedure TStoreFront.setTestHostNamePath(value: string);
begin
        Self.testHostNamePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setImagePath(value: string);
begin
        Self.imagePath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setStaticPath(value: string);
begin
        Self.staticPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setCategoryPath(value: string);
begin
        Self.categoryPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TStoreFront.setSubStores(value: string);
begin
        Self.subStores := value;
end;
    

procedure TStoreFront.setTagLocation(value: string);
begin
        Self.tagLocation := value;
end;
    

procedure TStoreFront.setPackageLocation(value: string);
begin
        Self.packageLocation := value;
end;
    

procedure TStoreFront.setInventoryControl(value: string);
begin
        Self.inventoryControl := value;
end;
    

procedure TStoreFront.getPackageLocation(value: string);
begin
        Self.packageLocation := value;
end;
    

procedure TStoreFront.setFtp(value: string);
begin
        Self.ftp := value;
end;
    

procedure TStoreFront.setFtpUserName(value: string);
begin
        Self.ftpUserName := value;
end;
    

procedure TStoreFront.setFtpPassword(value: string);
begin
        Self.ftpPassword := value;
end;
    

procedure TStoreFront.setTestFtp(value: string);
begin
        Self.testFtp := value;
end;
    

procedure TStoreFront.setTestFtpUserName(value: string);
begin
        Self.testFtpUserName := value;
end;
    

procedure TStoreFront.setTestFtpPassword(value: string);
begin
        Self.testFtpPassword := value;
end;
    

procedure TStoreFront.setTimeCreated(value: string);
begin
        Self.timeCreated := value;
end;
    

procedure TStoreFront.setLastModified(value: string);
begin
        Self.lastModified := value;
end;
    

// throws Exception
procedure TStoreFront.setFtpPath(value: string);
begin
        Self.ftpPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TStoreFront.setTestFtpPath(value: string);
begin
        Self.testFtpPath := TAbPath.Create(value, TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
function TStoreFront.createDirectories: Boolean;
var
  storeAbPath: TAbPath;
begin
        storeAbPath := TAbPath.Create((TURLGLOBALS.getWebappPath()) + (Self.getCurrentHomeHostNamePath()), TStringUtil.getInstance().EMPTY_STRING);
        if not (Self.directory.create_(storeAbPath)) then begin
            Exit(False);
        end;
        if not (Self.directory.create_(TAbPath.Create((storeAbPath) + (Self.getCategoryPath()), TStringUtil.getInstance().EMPTY_STRING))) then begin
            Exit(False);
        end;
        if not (Self.directory.create_(TAbPath.Create((storeAbPath) + (Self.getStaticPath()), TStringUtil.getInstance().EMPTY_STRING))) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

// throws Exception
procedure TStoreFront.install(current: Integer; total: Integer);
var
  stringBuffer: TStringMaker;
  viewPath: string;
  fromDirectoryAbPath: TAbPath;
  fromSpecialDirectoryAbPath: TAbPath;
  toDirectoryAbPath: TAbPath;
  viewTotal: Integer;
  installTotal: Integer;
  file_: TAbFile;
  halfViewTotal: Integer;
begin
        try
            if not (Self.createDirectories()) then begin
                raise SysUtils.Exception.Create('Unable to create store directories');
            end;
            stringBuffer := TStringMaker.Create();
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(TURLGLOBALS.getMainPath());
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
            viewPath := stringBuffer.toString();
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(viewPath);
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH);
            fromDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(viewPath);
            stringBuffer.append('special');
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            fromSpecialDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append(viewPath);
            stringBuffer.append(Self.getName());
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            toDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
            if (current) = (0) then begin
                if not (Self.directory.create_(toDirectoryAbPath)) then begin
                    raise SysUtils.Exception.Create('Unable to create store view directory: ' + toDirectoryAbPath.toString());
                end;
            end;
            viewTotal := (((total) * (85))) div (100);
            installTotal := (((total) * (93))) div (100);
            if (current) < (viewTotal) then begin
                file_ := TAbFile.createAbFileFromAbPath(fromSpecialDirectoryAbPath);
                if file_.isDirectory() then begin
                    halfViewTotal := (viewTotal) div (2);
                    if (current) < (halfViewTotal) then begin
                        Self.installViews(fromSpecialDirectoryAbPath, toDirectoryAbPath, current, halfViewTotal);
                    end else if (current) < (viewTotal) then begin
                        Self.installViews(fromDirectoryAbPath, toDirectoryAbPath, (current) - (halfViewTotal), (viewTotal) - (halfViewTotal));
                    end;
                end else begin
                    Self.installViews(fromDirectoryAbPath, toDirectoryAbPath, current, viewTotal);
                end;
            end else if (current) < (installTotal) then begin
                Self.installResources(fromDirectoryAbPath, (current) - (viewTotal), (installTotal) - (viewTotal));
            end else begin
                Self.installMedia(fromDirectoryAbPath, (current) - (installTotal), (total) - (installTotal));
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'install()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TStoreFront.installViews(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; current: Integer; total: Integer);
begin
        TFileUtil.getInstance().copyDirectoryPortion(fromDirectoryAbPath, toDirectoryAbPath, True, False, current, total);
end;
    

// throws Exception
procedure TStoreFront.installResources(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
var
  stringBuffer: TStringMaker;
  installCategoryAbPath: TAbPath;
  categoryAbPath: TAbPath;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(fromDirectoryAbPath.toString());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append('Resources');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        installCategoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(Self.getCurrentHomeHostNamePath());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append(Self.getCategoryPath());
        categoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        TFileUtil.getInstance().copyDirectoryPortion(installCategoryAbPath, categoryAbPath, True, False, current, total);
end;
    

// throws Exception
procedure TStoreFront.installMedia(fromDirectoryAbPath: TAbPath; current: Integer; total: Integer);
var
  stringBuffer: TStringMaker;
  viewStoreImagesDirectoryAbPath: TAbPath;
  storeAbPath: TAbPath;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(fromDirectoryAbPath.toString());
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().TEMPLATEPATH);
        stringBuffer.append('images');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        viewStoreImagesDirectoryAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        storeAbPath := TAbPath.Create((TURLGLOBALS.getWebappPath()) + (Self.getCurrentHomeHostNamePath()), TStringUtil.getInstance().EMPTY_STRING);
        TFileUtil.getInstance().copyDirectoryPortion(viewStoreImagesDirectoryAbPath, storeAbPath, True, False, current, total);
end;
    

// throws Exception
function TStoreFront.toVector: TBasicArrayList;
var
  dataVector: TBasicArrayList;
  contextConfigurationDomDocumentMapping_: TContextConfigurationDomDocumentMapping;
  calendar: TCalendar;
  time: string;
begin
        dataVector := TBasicArrayListD.Create();
        dataVector.add(TJava.Box(Self.name));
        dataVector.add(TJava.Box(Self.homeHostName));
        dataVector.add(TJava.Box(Self.homeHostNamePath.toString()));
        dataVector.add(TJava.Box(Self.hostName));
        dataVector.add(TJava.Box(Self.hostNamePath.toString()));
        dataVector.add(TJava.Box(Self.testHomeHostName));
        dataVector.add(TJava.Box(Self.testHomeHostNamePath.toString()));
        dataVector.add(TJava.Box(Self.testHostName));
        dataVector.add(TJava.Box(Self.testHostNamePath.toString()));
        dataVector.add(TJava.Box(Self.imagePath.toString()));
        dataVector.add(TJava.Box(Self.staticPath.toString()));
        dataVector.add(TJava.Box(Self.categoryPath.toString()));
        dataVector.add(TJava.Box(Self.inventoryControl));
        contextConfigurationDomDocumentMapping_ := TContextConfigurationDomDocumentMapping.Create(Self.getContextConfigurationInterface());
        dataVector.add(TJava.Box(contextConfigurationDomDocumentMapping_.toDomDocumentString()));
        dataVector.add(TJava.Box(Self.subStores));
        dataVector.add(TJava.Box(Self.tagLocation));
        dataVector.add(TJava.Box(Self.packageLocation));
        dataVector.add(TJava.Box(Self.ftp));
        dataVector.add(TJava.Box(Self.ftpPath.toString()));
        dataVector.add(TJava.Box(Self.ftpUserName));
        dataVector.add(TJava.Box(Self.ftpPassword));
        dataVector.add(TJava.Box(Self.testFtp));
        dataVector.add(TJava.Box(Self.testFtpPath.toString()));
        dataVector.add(TJava.Box(Self.testFtpUserName));
        dataVector.add(TJava.Box(Self.testFtpPassword));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        dataVector.add(TJava.Box(time));
        dataVector.add(TJava.Box(time));
        Exit(dataVector);
end;
    

// throws Exception
function TStoreFront.toHashMap: TJavaHashMap<TObject, TObject>;
var
  storeFrontData_: TStoreFrontData;
  dataHashMap: TJavaHashMap<TObject, TObject>;
  contextConfigurationDomDocumentMapping_: TContextConfigurationDomDocumentMapping;
  calendar: TCalendar;
  time: string;
begin
        storeFrontData_ := TStoreFrontData.getInstance();
        dataHashMap := TStdUtil.getInstance().createHashMap();
        dataHashMap.put(TJava.Box(storeFrontData_.NAME), TJava.Box(Self.name));
        dataHashMap.put(TJava.Box(storeFrontData_.HOMEHOSTNAME), TJava.Box(Self.homeHostName));
        dataHashMap.put(TJava.Box(storeFrontData_.HOMEHOSTNAMEPATH), TJava.Box(Self.homeHostNamePath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.HOSTNAME), TJava.Box(Self.hostName));
        dataHashMap.put(TJava.Box(storeFrontData_.HOSTNAMEPATH), TJava.Box(Self.hostNamePath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTHOMEHOSTNAME), TJava.Box(Self.testHomeHostName));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTHOMEHOSTNAMEPATH), TJava.Box(Self.testHomeHostNamePath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTHOSTNAME), TJava.Box(Self.testHostName));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTHOSTNAMEPATH), TJava.Box(Self.testHostNamePath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.IMAGEPATH), TJava.Box(Self.imagePath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.STATICPATH), TJava.Box(Self.staticPath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.CATEGORYPATH), TJava.Box(Self.categoryPath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.INVENTORYCONTROL), TJava.Box(Self.inventoryControl));
        contextConfigurationDomDocumentMapping_ := TContextConfigurationDomDocumentMapping.Create(Self.getContextConfigurationInterface());
        dataHashMap.put(TJava.Box(storeFrontData_.CONFIGURATION), TJava.Box(contextConfigurationDomDocumentMapping_.toDomDocumentString()));
        dataHashMap.put(TJava.Box(storeFrontData_.SUBSTORES), TJava.Box(Self.subStores));
        dataHashMap.put(TJava.Box(storeFrontData_.TAGLOCATION), TJava.Box(Self.tagLocation));
        dataHashMap.put(TJava.Box(storeFrontData_.PACKAGELOCATION), TJava.Box(Self.packageLocation));
        dataHashMap.put(TJava.Box(storeFrontData_.FTP), TJava.Box(Self.ftp));
        dataHashMap.put(TJava.Box(storeFrontData_.FTPPATH), TJava.Box(Self.ftpPath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.FTPUSERNAME), TJava.Box(Self.ftpUserName));
        dataHashMap.put(TJava.Box(storeFrontData_.FTPPASSWORD), TJava.Box(Self.ftpPassword));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTFTP), TJava.Box(Self.testFtp));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTFTPPATH), TJava.Box(Self.testFtpPath.toString()));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTFTPUSERNAME), TJava.Box(Self.testFtpUserName));
        dataHashMap.put(TJava.Box(storeFrontData_.TESTFTPPASSWORD), TJava.Box(Self.testFtpPassword));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        dataHashMap.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(dataHashMap);
end;
    

function TStoreFront.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getName())));
end;
    

function TStoreFront.getContextConfigurationInterface: IContextConfigurationInterface;
begin
        Exit(Self.contextConfigurationInterface);
end;
    

procedure TStoreFront.setContextConfigurationInterface(contextConfigurationInterface_: IContextConfigurationInterface);
begin
        Self.contextConfigurationInterface := contextConfigurationInterface_;
end;

initialization
  {AB:INITIALIZATION}
  TStoreFront.RESOURCES := ' Resources' + TJava.ToString(TAbPathData.getInstance().SEPARATOR);
  {AB:END}

end.


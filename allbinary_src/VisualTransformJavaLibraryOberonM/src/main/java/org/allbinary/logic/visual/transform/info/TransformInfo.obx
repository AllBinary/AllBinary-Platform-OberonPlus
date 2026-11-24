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
unit TransformInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AbPath, AbeClientInformationInterface, TransformInfoObjectConfigInterface, CommonStrings, Document, TransformInfoInterface;

type
  {AB:TYPES}
  TTransformInfo = class(TInterfacedObject, ITransformInfoInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abeClientInformation: IAbeClientInformationInterface;
    isChild_: Boolean;
    name: string;
    storeName: string;
    objectFileName: string;
    anyType: TObject;
    objectConfigFileName: string;
    objectConfigInterface: ITransformInfoObjectConfigInterface;
    template: string;
    templateFileName: string;
    dataFileName: string;
    data: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(name: string); overload;
        constructor Create(name: string; objectFileName: string; objectConfigFileName: string; templateFileName: string; dataFileName: string); overload;
        procedure override_(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function log: string; virtual;
        procedure setName(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        function getStoreName: string; virtual;
        procedure setObject(anyType: TObject); virtual;
        procedure setObjectFile(value: string); virtual;
        procedure setTemplate(value: string); virtual;
        procedure setTemplateFile(value: string); virtual;
        procedure setObjectConfigFileName(value: string); virtual;
        procedure setObjectConfigFile(value: string); virtual;
        procedure setObjectConfig(value: string); virtual;
        procedure setDataFile(value: string); virtual;
        procedure setData(value: string); virtual;
        function getName: string; virtual;
        function getObject: TObject; virtual;
        function getObjectFile: string; virtual;
        function getTemplate: string; virtual;
        function getTemplateFile: string; virtual;
        function getTemplateFilePath: TAbPath; virtual;
        function getObjectConfigFilePath: TAbPath; virtual;
        function getDataFilePath: TAbPath; virtual;
        function getObjectConfigFile: string; virtual;
        function getData: string;
        function getDataDocument: TDocument; virtual;
        function getDataFile: string; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
        procedure setChild; virtual;
        function isChild: Boolean; virtual;
        function getObjectConfigInterface: ITransformInfoObjectConfigInterface; virtual;
        procedure setObjectConfigInterface(objectConfigInterface: ITransformInfoObjectConfigInterface); virtual;
  end;

implementation
uses
  TransformInfoData, BasicArrayListD, StoreFrontData, EntryData, DomDocumentHelper, XmlDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, StdUtil, Encoder, CryptFileReader, OutputTypeData, AbFilePath, AbPathData, StringMaker, StringUtil, ServiceClientInformationInterfaceFactory, TransformInfoDataData, TransformInfoObjectConfig, TransformInfoObjectConfigAndManipulatorFactory, TransformInfoTemplateData, TransformInfoObjectData, CommonSeps;


{AB:CODE}

procedure TTransformInfo.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  Self.isChild_ := False;
  
  
  
  
  
  
  
  
  
  Self.data := TStringUtil.getInstance().EMPTY_STRING;
end;

function TTransformInfo.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfo.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TTransformInfo.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
end;
    

constructor TTransformInfo.Create(name: string; objectFileName: string; objectConfigFileName: string; templateFileName: string; dataFileName: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.setObjectFile(objectFileName);
        Self.setObjectConfigFile(objectConfigFileName);
        Self.setTemplateFile(templateFileName);
        Self.setDataFile(dataFileName);
end;
    

// throws Exception
procedure TTransformInfo.override_(hashMap_: TJavaHashMap<TObject, TObject>);
var
  transformInfoData_: TTransformInfoData;
  stringValidationUtil_: TObject;
  aName: string;
  stringBuffer: TStringMaker;
  aStoreName: string;
  aObjectFileName: string;
  fileAbPath: TAbPath;
  aObject: string;
  fileDataString: string;
  objectConfigFileName: string;
  type_: string;
  aTemplateFileName: string;
  aTemplate: string;
  aDataFileName: string;
  aData: string;
begin
        transformInfoData_ := TTransformInfoData.getInstance();
        stringValidationUtil_ := nil;
        aName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.NAME))));
        if not ((aName = '')) then begin
            Self.name := aName;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('TransformInfo properties overridden for: ');
            stringBuffer.append(Self.getName());
            stringBuffer.append(''#10' properties: ');
            stringBuffer.append(hashMap_.toString());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'override(HashMap hashMap)');
        end;
        aStoreName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        if not ((aStoreName = '')) then begin
            Self.storeName := aStoreName;
        end;
        aObjectFileName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTFILENAME))));
        if not ((aObjectFileName = '')) then begin
            Self.objectFileName := aObjectFileName;
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TURLGLOBALS.getMainPath());
        stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
        stringBuffer.append(Self.storeName);
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        fileAbPath := TAbPath.Create(stringBuffer.toString(), TStringUtil.getInstance().EMPTY_STRING);
        aObject := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECT_))));
        if not ((aObject = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override view Object for: ' + Self.getName(), TJava.Box(Self), 'override(HashMap hashMap)');
            end;
            fileDataString := TCryptFileReader.Create(TTransformInfoObjectData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoObjectData.getInstance().ENCRYPTED_EXTENSION).get(TAbPath.Create(fileAbPath.toString(), aObject));
            if (fileDataString) <> ('') then begin
                Self.anyType := TJava.Box(fileDataString);
            end;
        end;
        if not ((TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTCONFIG)))) = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override ObjectConfig for: ' + Self.getName(), TJava.Box(Self), 'override(HashMap hashMap)');
            end;
            Self.setObjectConfig(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTCONFIG)))));
        end;
        objectConfigFileName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.OBJECTCONFIGFILENAME))));
        if not ((objectConfigFileName = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override ObjectConfig File for: ' + Self.getName(), TJava.Box(Self), 'override(HashMap hashMap)');
            end;
            Self.setObjectConfigFile(objectConfigFileName);
        end;
        type_ := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TOutputTypeData.getInstance().NAME))));
        if not ((type_ = '')) then begin
            if (Self.getObjectConfigInterface()) = (nil) then begin
                Self.setObjectConfigInterface(TTransformInfoObjectConfig.Create(Self));
            end;
            Self.getObjectConfigInterface().setOutputTypeName(type_);
        end;
        aTemplateFileName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.TEMPLATEFILENAME))));
        if not ((aTemplateFileName = '')) then begin
            Self.templateFileName := aTemplateFileName;
        end;
        aTemplate := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.TEMPLATE))));
        if not ((aTemplate = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override Template for: ' + Self.getName(), TJava.Box(Self), 'override(HashMap hashMap)');
            end;
            fileDataString := TCryptFileReader.Create(TTransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).get(TAbPath.Create(fileAbPath.toString(), aTemplate));
            if not ((fileDataString = '')) then begin
                Self.template := fileDataString;
            end;
        end;
        aDataFileName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.DATAFILENAME))));
        if not ((aDataFileName = '')) then begin
            Self.dataFileName := aDataFileName;
        end;
        aData := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(transformInfoData_.DATA))));
        if not ((aData = '')) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('TransformInfo override Data for: ' + Self.getName(), TJava.Box(Self), 'override(HashMap hashMap)');
            end;
            fileDataString := TCryptFileReader.Create(TTransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(TAbPath.Create(fileAbPath.toString(), aData));
            if not ((fileDataString = '')) then begin
                Self.data := fileDataString;
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Name: ');
            stringBuffer.append(aName);
            stringBuffer.append(''#10'Temp Object File: ');
            stringBuffer.append(aObject);
            stringBuffer.append(''#10'Temp Object Config File: ');
            stringBuffer.append(Self.getObjectConfigFilePath().toString());
            stringBuffer.append(''#10'Temp Template File: ');
            stringBuffer.append(aTemplate);
            stringBuffer.append(''#10'Temp Data File: ');
            stringBuffer.append(aData);
            stringBuffer.append(''#10'Store Name: ');
            stringBuffer.append(aStoreName);
            stringBuffer.append(''#10'ObjectFile: ');
            stringBuffer.append(Self.getObjectFile());
            stringBuffer.append('->TransformInfo');
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'TransformInfoInterface(HashMap)');
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY) then begin
            Self.logUtil.putF(Self.log(), TJava.Box(Self), 'override');
        end;
end;
    

function TTransformInfo.log: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Name: ');
        stringBuffer.append(Self.name);
        stringBuffer.append(''#10'Object File: ');
        stringBuffer.append(Self.objectFileName);
        stringBuffer.append(''#10'Object Config File Path: ');
        stringBuffer.append(Self.getObjectConfigFile());
        stringBuffer.append(''#10'Template File: ');
        stringBuffer.append(Self.templateFileName);
        stringBuffer.append(''#10'Data File: ');
        stringBuffer.append(Self.dataFileName);
        stringBuffer.append(''#10'Store Name: ');
        stringBuffer.append(Self.storeName);
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append(Self.getObjectFile());
        stringBuffer.append('->TransformInfo');
        stringBuffer.append('TransformInfoInterface(HashMap)');
        Exit(stringBuffer.toString());
end;
    

procedure TTransformInfo.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TTransformInfo.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

function TTransformInfo.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

procedure TTransformInfo.setObject(anyType: TObject);
begin
        Self.anyType := TJava.Box(anyType);
end;
    

procedure TTransformInfo.setObjectFile(value: string);
begin
        Self.objectFileName := value;
end;
    

procedure TTransformInfo.setTemplate(value: string);
begin
        Self.template := value;
end;
    

procedure TTransformInfo.setTemplateFile(value: string);
begin
        Self.templateFileName := value;
end;
    

// throws Exception
procedure TTransformInfo.setObjectConfigFileName(value: string);
begin
        Self.objectConfigFileName := value;
end;
    

// throws Exception
procedure TTransformInfo.setObjectConfigFile(value: string);
begin
        Self.objectConfigFileName := value;
        Self.setObjectConfigInterface(TTransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(Self.abeClientInformation, Self, Self.getObjectConfigFilePath()));
end;
    

// throws Exception
procedure TTransformInfo.setObjectConfig(value: string);
var
  document_: TDocument;
begin
        document_ := TDomDocumentHelper.create_(value);
        Self.setObjectConfigInterface(TTransformInfoObjectConfigAndManipulatorFactory.getInstance().getInstance(Self.abeClientInformation, Self, document_));
end;
    

procedure TTransformInfo.setDataFile(value: string);
begin
        Self.dataFileName := value;
end;
    

procedure TTransformInfo.setData(value: string);
begin
        Self.data := value;
end;
    

function TTransformInfo.getName: string;
begin
        Exit(Self.name);
end;
    

function TTransformInfo.getObject: TObject;
begin
        Exit(TJava.Box(Self.anyType));
end;
    

function TTransformInfo.getObjectFile: string;
begin
        Exit(Self.objectFileName);
end;
    

function TTransformInfo.getTemplate: string;
begin
        Exit(Self.template);
end;
    

function TTransformInfo.getTemplateFile: string;
begin
        Exit(Self.templateFileName);
end;
    

// throws Exception
function TTransformInfo.getTemplateFilePath: TAbPath;
begin
        Exit(TAbFilePath.Create(Self.getTemplateFile()));
end;
    

// throws Exception
function TTransformInfo.getObjectConfigFilePath: TAbPath;
begin
        Exit(TAbFilePath.Create(Self.getObjectConfigFile()));
end;
    

// throws Exception
function TTransformInfo.getDataFilePath: TAbPath;
begin
        Exit(TAbFilePath.Create(Self.getDataFile()));
end;
    

function TTransformInfo.getObjectConfigFile: string;
begin
        Exit(Self.objectConfigFileName);
end;
    

function TTransformInfo.getData: string;
var
  stringValidationUtil_: TObject;
  dataFileString: string;
  fileData: string;
  stringBuffer: TStringMaker;
begin
        stringValidationUtil_ := nil;
        dataFileString := Self.getDataFile();
        if not ((dataFileString = '')) then begin
            try
                fileData := TCryptFileReader.Create(TTransformInfoDataData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoDataData.getInstance().ENCRYPTED_EXTENSION).get(Self.getDataFilePath());
                if not ((Self.data = '')) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                        Self.logUtil.putF('Data File overriding existing data: ' + TJava.ToString(Self.getDataFilePath()), TJava.Box(Self), 'getData()');
                    end;
                end;
                Self.data := fileData;
            except
                on e: SysUtils.Exception do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    Self.logUtil.put('Could Not Load Data from: ' + TJava.ToString(Self.getDataFile()), TJava.Box(Self), 'getData()', TJava.Box(e));
                end;
                end;
            end;
        end;
        try
            if not ((Self.data = '')) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    Self.logUtil.putF('Data: ' + TXmlDocumentHelper.toString(TDomDocumentHelper.create_(Self.data)), TJava.Box(Self), 'getData()');
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Name: ');
                    stringBuffer.append(Self.name);
                    stringBuffer.append(''#10'Empty Data For: ');
                    stringBuffer.append(dataFileString);
                    stringBuffer.append(''#10'Path: ');
                    stringBuffer.append(Self.getDataFilePath().toFileSystemString());
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'getData()');
                    end;
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Could Not Preview Data: ' + Self.data, TJava.Box(Self), 'getData()', TJava.Box(e));
            end;
            end;
        end;
        Exit(Self.data);
end;
    

// throws Exception
function TTransformInfo.getDataDocument: TDocument;
var
  localData: string;
  stringValidationUtil_: TObject;
  document_: TDocument;
begin
        localData := Self.getData();
        stringValidationUtil_ := nil;
        if (localData = '') then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.putF('No Data So Creating New Document', TJava.Box(Self), 'getDataDocument()');
            end;
            Exit(TDomDocumentHelper.create_());
        end else begin
            document_ := TDomDocumentHelper.create_(localData);
            Exit(document_);
        end;
end;
    

function TTransformInfo.getDataFile: string;
begin
        Exit(Self.dataFileName);
end;
    

function TTransformInfo.toHashMap: TJavaHashMap<TObject, TObject>;
var
  transformInfoData_: TTransformInfoData;
  hashMap_: TJavaHashMap<TObject, TObject>;
  calendar: TCalendar;
  time: string;
begin
        transformInfoData_ := TTransformInfoData.getInstance();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(transformInfoData_.NAME), TJava.Box(Self.name));
        hashMap_.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
        hashMap_.put(TJava.Box(transformInfoData_.OBJECTFILENAME), TJava.Box(Self.objectFileName));
        hashMap_.put(TJava.Box(transformInfoData_.OBJECT_), TJava.Box(Self.anyType));
        hashMap_.put(TJava.Box(transformInfoData_.OBJECTCONFIGFILENAME), TJava.Box(Self.getObjectConfigFile()));
        hashMap_.put(TJava.Box(transformInfoData_.OBJECTCONFIG), TJava.Box(TEncoder.encode(TJava.GetBytes(Self.getObjectConfigInterface().toString()))));
        hashMap_.put(TJava.Box(transformInfoData_.TEMPLATEFILENAME), TJava.Box(Self.templateFileName));
        hashMap_.put(TJava.Box(transformInfoData_.TEMPLATE), TJava.Box(Self.template));
        hashMap_.put(TJava.Box(transformInfoData_.DATAFILENAME), TJava.Box(Self.dataFileName));
        hashMap_.put(TJava.Box(transformInfoData_.DATA), TJava.Box(TEncoder.encode(TJava.GetBytes(Self.data))));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        hashMap_.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED), TJava.Box(time));
        Exit(hashMap_);
end;
    

function TTransformInfo.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.name));
        vector.add(TJava.Box(Self.storeName));
        vector.add(TJava.Box(Self.objectFileName));
        vector.add(TJava.Box(Self.anyType));
        vector.add(TJava.Box(Self.getObjectConfigFile()));
        vector.add(TJava.Box(TEncoder.encode(TJava.GetBytes(Self.getObjectConfigInterface().toString()))));
        vector.add(TJava.Box(Self.templateFileName));
        vector.add(TJava.Box(Self.template));
        vector.add(TJava.Box(Self.dataFileName));
        vector.add(TJava.Box(TEncoder.encode(TJava.GetBytes(Self.data))));
        calendar := TCalendar.getInstance();
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        vector.add(TJava.Box(time));
        vector.add(TJava.Box(time));
        Exit(vector);
end;
    

function TTransformInfo.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.getName())));
end;
    

procedure TTransformInfo.setChild;
begin
        Self.isChild_ := True;
end;
    

function TTransformInfo.isChild: Boolean;
begin
        Exit(Self.isChild_);
end;
    

function TTransformInfo.getObjectConfigInterface: ITransformInfoObjectConfigInterface;
begin
        Exit(Self.objectConfigInterface);
end;
    

procedure TTransformInfo.setObjectConfigInterface(objectConfigInterface: ITransformInfoObjectConfigInterface);
begin
        Self.objectConfigInterface := objectConfigInterface;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


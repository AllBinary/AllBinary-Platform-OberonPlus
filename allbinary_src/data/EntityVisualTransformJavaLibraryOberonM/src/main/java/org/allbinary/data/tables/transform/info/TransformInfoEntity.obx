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
// package org.allbinary.data.tables.transform.info
unit TransformInfoEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AbSqlBean, AbeClientInformationInterface, TransformInfoFactoryInterface, TransformInfoInterface, TransformInfoObjectConfigAndManipulatorFactoryBase, TransformInfoObjectConfigGeneratorFactoryInterface, TransformInfoEntityInterface;

type
  {AB:TYPES}
  TTransformInfoEntity = class(TAbSqlBean, ITransformInfoEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    abeClientInformation: IAbeClientInformationInterface;
    transformInfoFactoryInterface: ITransformInfoFactoryInterface;
    transformInfoObjectConfigAndManipulatorFactoryInterface: TTransformInfoObjectConfigAndManipulatorFactoryBase;
    transformInfoObjectConfigGeneratorFactoryInterface: ITransformInfoObjectConfigGeneratorFactoryInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoObjectConfigGeneratorFactoryInterface_: ITransformInfoObjectConfigGeneratorFactoryInterface; transformInfoObjectConfigAndManipulatorFactoryInterface: TTransformInfoObjectConfigAndManipulatorFactoryBase; transformInfoFactoryInterface_: ITransformInfoFactoryInterface);
        procedure insert(values: TBasicArrayList); virtual;
        procedure delete_(value: string); virtual;
        function get(name: string; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInfoInterface; virtual;
        function getObjectConfigs(storeName: string): TBasicArrayList; virtual;
        function getNames(storeName: string): TBasicArrayList; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, EntryData, UserDbInitInfo, DomDocumentHelper, StdUtil, Encoder, StringMaker, ServiceClientInformationInterfaceFactory, TransformInfoData;


{AB:CODE}

procedure TTransformInfoEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'transforminfo';
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  
  
end;

function TTransformInfoEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoEntity.Create(transformInfoObjectConfigGeneratorFactoryInterface_: ITransformInfoObjectConfigGeneratorFactoryInterface; transformInfoObjectConfigAndManipulatorFactoryInterface: TTransformInfoObjectConfigAndManipulatorFactoryBase; transformInfoFactoryInterface_: ITransformInfoFactoryInterface);
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
        Self.transformInfoObjectConfigGeneratorFactoryInterface := transformInfoObjectConfigGeneratorFactoryInterface_;
        Self.transformInfoObjectConfigAndManipulatorFactoryInterface := transformInfoObjectConfigAndManipulatorFactoryInterface;
        Self.transformInfoFactoryInterface := transformInfoFactoryInterface_;
end;
    

procedure TTransformInfoEntity.insert(values: TBasicArrayList);
begin
        try
            inherited insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), INSERT, TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TTransformInfoEntity.delete_(value: string);
begin
        try
            inherited deleteWhere(TTransformInfoData.getInstance().NAME, value);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), Self.commonStrings.delete_);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.delete_, TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
function TTransformInfoEntity.get(name: string; propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext): ITransformInfoInterface;
var
  transformInfoData_: TTransformInfoData;
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
  anyType: TObject;
  string_: string;
  objectData: TObject;
begin
        transformInfoData_ := TTransformInfoData.getInstance();
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(transformInfoData_.NAME), TJava.Box(name));
        hashMap_ := inherited getRow(keysAndValues);
        if (hashMap_) <> (nil) then begin
            anyType := TJava.Box(hashMap_.get(TJava.Box(transformInfoData_.OBJECTCONFIG)));
            if (anyType) <> (nil) then begin
                string_ := TJava.UnboxString(TJava.ToObject(anyType));
                hashMap_.put(TJava.Box(transformInfoData_.OBJECTCONFIG), TJava.Box(TJava.NewString(TEncoder.decode(string_))));
            end;
            objectData := TJava.Box(hashMap_.get(TJava.Box(transformInfoData_.DATA)));
            if (objectData) <> (nil) then begin
                string_ := TJava.UnboxString(TJava.ToObject(objectData));
                hashMap_.put(TJava.Box(transformInfoData_.DATA), TJava.Box(TJava.NewString(TEncoder.decode(string_))));
            end;
            Exit(Self.transformInfoFactoryInterface.getInstance(hashMap_, propertiesHashMap, pageContext_));
        end else begin
            Exit(nil);
        end;
end;
    

// throws Exception
function TTransformInfoEntity.getObjectConfigs(storeName: string): TBasicArrayList;
var
  objectConfigVector: TBasicArrayList;
  objectConfigColumnVector: TBasicArrayList;
  size: Integer;
  objectConfigString: string;
  i: Integer;
begin
        objectConfigVector := TBasicArrayListD.Create();
        objectConfigColumnVector := Self.getColumnWhere(TTransformInfoData.getInstance().OBJECTCONFIG, TStoreFrontData.getInstance().NAME, storeName);
        size := objectConfigColumnVector.size();
        for i := 0 to size - 1 do begin
            objectConfigString := TJava.UnboxString(TJava.ToObject(objectConfigColumnVector.get(i)));
            objectConfigString := TJava.NewString(TEncoder.decode(objectConfigString));
            objectConfigVector.add(TJava.Box(Self.transformInfoObjectConfigAndManipulatorFactoryInterface.getInstance(Self.abeClientInformation, (TJava.ToObject(Self) as ITransformInfoInterface), TDomDocumentHelper.create_(objectConfigString))));
        end;
        Exit(objectConfigVector);
end;
    

// throws Exception
function TTransformInfoEntity.getNames(storeName: string): TBasicArrayList;
var
  viewNameVector: TBasicArrayList;
  columnVector: TBasicArrayList;
  size: Integer;
  viewNameString: string;
  i: Integer;
begin
        viewNameVector := TBasicArrayListD.Create();
        columnVector := Self.getColumnWhere(TTransformInfoData.getInstance().NAME, TStoreFrontData.getInstance().NAME, storeName);
        size := columnVector.size();
        for i := 0 to size - 1 do begin
            viewNameString := TJava.UnboxString(TJava.ToObject(columnVector.get(i)));
            viewNameVector.add(TJava.Box(viewNameString));
        end;
        Exit(viewNameVector);
end;
    

function TTransformInfoEntity.createTableStatement: string;
var
  transformInfoData_: TTransformInfoData;
  stringBuffer: TStringMaker;
begin
        transformInfoData_ := TTransformInfoData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(transformInfoData_.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TStoreFrontData.getInstance().NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(transformInfoData_.OBJECTFILENAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(transformInfoData_.OBJECT_);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(transformInfoData_.OBJECTCONFIGFILENAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(transformInfoData_.OBJECTCONFIG);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(transformInfoData_.TEMPLATEFILENAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(transformInfoData_.TEMPLATE);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(transformInfoData_.DATAFILENAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(transformInfoData_.DATA);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().LASTMODIFIED);
        stringBuffer.append(TEntryData.getInstance().TIMECREATED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.sqlStrings.PRIMARY_KEY);
        stringBuffer.append(transformInfoData_.NAME);
        stringBuffer.append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TTransformInfoEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

procedure TTransformInfoEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TTransformInfoData.getInstance().NAME, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TTransformInfoData.getInstance().NAME)))), updatedValues);
end;
    

function TTransformInfoEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


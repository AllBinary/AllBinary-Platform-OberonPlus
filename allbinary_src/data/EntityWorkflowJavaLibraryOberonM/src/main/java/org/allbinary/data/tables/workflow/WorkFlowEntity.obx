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
// package org.allbinary.data.tables.workflow
unit WorkFlowEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AbSqlBean, WorkFlowInterface, AbeClientInformationInterface, WorkFlowEntityInterface;

type
  {AB:TYPES}
  TWorkFlowEntity = class(TAbSqlBean, IWorkFlowEntityInterface)
  public
    logUtil: TLogUtil;
    abeClientInformation: IAbeClientInformationInterface;
    tableName: string;
    METHOD_GET: string;
    METHOD_UPDATE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(values: TBasicArrayList); virtual;
        procedure delete_(name: string; storeName: string); virtual;
        function get(name: string; storeName: string): IWorkFlowInterface; overload; virtual;
        function get(storeName: string): TBasicArrayList; overload; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, DynamicObjectData, StoreFrontData, EntryData, UserDbInitInfo, StdUtil, DbWorkFlowFactory, WorkFlowData, StringMaker, LicensingException, ServiceClientInformationInterfaceFactory;


{AB:CODE}

procedure TWorkFlowEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  Self.tableName := 'workflows';
  Self.METHOD_GET := 'get()';
  Self.METHOD_UPDATE := 'update';
end;

function TWorkFlowEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWorkFlowEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TWorkFlowEntity.insert(values: TBasicArrayList);
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
    

procedure TWorkFlowEntity.delete_(name: string; storeName: string);
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
begin
        try
            keysAndValues := TStdUtil.getInstance().createHashMap();
            keysAndValues.put(TJava.Box(TWorkFlowData.getInstance().NAME), TJava.Box(name));
            keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeName));
            inherited deleteWhere(keysAndValues);
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
    

// throws Exception, LicensingException
function TWorkFlowEntity.get(name: string; storeName: string): IWorkFlowInterface;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        try
            keysAndValues := TStdUtil.getInstance().createHashMap();
            keysAndValues.put(TJava.Box(TWorkFlowData.getInstance().NAME), TJava.Box(name));
            keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeName));
            hashMap_ := inherited getRow(keysAndValues);
            Exit((TJava.ToObject(TDbWorkFlowFactory.getInstance().getInstance(Self.abeClientInformation, hashMap_)) as IWorkFlowInterface));
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.METHOD_GET, TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.METHOD_GET, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

function TWorkFlowEntity.get(storeName: string): TBasicArrayList;
var
  workFlowsVector: TBasicArrayList;
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMapVector: TBasicArrayList;
  size: Integer;
  workFlowHashMap: TJavaHashMap<TObject, TObject>;
  i: Integer;
begin
        try
            workFlowsVector := TBasicArrayListD.Create();
            keysAndValues := TStdUtil.getInstance().createHashMap();
            keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeName));
            hashMapVector := inherited getRows(keysAndValues);
            size := hashMapVector.size();
            for i := 0 to size - 1 do begin
                workFlowHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(hashMapVector.get(i)));
                if (workFlowHashMap) <> (nil) then begin
                    workFlowsVector.add(TJava.Box(TDbWorkFlowFactory.getInstance().getInstance(Self.abeClientInformation, workFlowHashMap)));
                end;
            end;
            Exit(workFlowsVector);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.METHOD_GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TWorkFlowEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
var
  wherekeysAndValues: TJavaHashMap<TObject, TObject>;
begin
        try
            wherekeysAndValues := TStdUtil.getInstance().createHashMap();
            wherekeysAndValues.put(TJava.Box(TWorkFlowData.getInstance().NAME), TJava.Box(TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TWorkFlowData.getInstance().NAME))))));
            wherekeysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TStoreFrontData.getInstance().NAME))))));
            inherited updateWhere(wherekeysAndValues, updatedValues);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.METHOD_UPDATE, TJava.Box(e));
            end;
            end;
        end;
end;
    

function TWorkFlowEntity.createTableStatement: string;
var
  workFlowData_: TWorkFlowData;
  stringBuffer: TStringMaker;
begin
        workFlowData_ := TWorkFlowData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(workFlowData_.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TStoreFrontData.getInstance().NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDynamicObjectData.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(workFlowData_.DATA).append(Self.sqlTypeStrings.BLOB_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(workFlowData_.NAME).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TWorkFlowEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TWorkFlowEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


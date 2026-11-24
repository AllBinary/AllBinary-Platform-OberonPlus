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
// package org.allbinary.data.tables.advertisement
unit AdvertisementsEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AdvertisementInterface, LogUtil, AbSqlBean, AdvertisementsEntityInterface;

type
  {AB:TYPES}
  TAdvertisementsEntity = class(TAbSqlBean, IAdvertisementsEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    _INDEX: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure delete_(value: string); virtual;
        function get(storeName: string): TBasicArrayList; overload; virtual;
        function get(storeName: string; advertismentName: string): IAdvertisementInterface; overload; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTable: string; virtual;
        procedure insert(values: TBasicArrayList); virtual;
  end;

implementation
uses
  BasicArrayListD, DynamicObjectData, AdvertisementData, StoreFrontData, EntryData, UserDbInitInfo, StdUtil, StringMaker;


{AB:CODE}

procedure TAdvertisementsEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'advertisements';
  Self._INDEX := '_index';
end;

function TAdvertisementsEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementsEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TAdvertisementsEntity.delete_(value: string);
begin
        try
            inherited deleteWhere(TEntryData.getInstance().ID, value);
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
    

function TAdvertisementsEntity.get(storeName: string): TBasicArrayList;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMapVector: TBasicArrayList;
  vector: TBasicArrayList;
  size: Integer;
  hashMap_: TJavaHashMap<TObject, TObject>;
  index: Integer;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeName));
        hashMapVector := inherited getRows(keysAndValues);
        vector := TBasicArrayListD.Create();
        size := hashMapVector.size();
        for index := 0 to size - 1 do begin
            hashMap_ := TJavaHashMap<TObject, TObject>(TJava.ToObject(hashMapVector.get(index)));
        end;
        Exit(vector);
end;
    

function TAdvertisementsEntity.get(storeName: string; advertismentName: string): IAdvertisementInterface;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeName));
        keysAndValues.put(TJava.Box(TAdvertisementData.getInstance().NAME), TJava.Box(advertismentName));
        hashMap_ := inherited getRow(keysAndValues);
        Exit(nil);
end;
    

function TAdvertisementsEntity.createTableStatement: string;
var
  advertisementData_: TAdvertisementData;
  stringBuffer: TStringMaker;
begin
        advertisementData_ := TAdvertisementData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.getTableName()).append(Self.sqlStrings.START).append(advertisementData_.NAME).append(Self._INDEX).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(advertisementData_.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TStoreFrontData.getInstance().NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementData_.DESCRIPTION).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TDynamicObjectData.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(advertisementData_.NAME).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TAdvertisementsEntity.createTable: string;
var
  returnStr: string;
begin
        returnStr := inherited createTable(Self.createTableStatement());
        Exit(returnStr);
end;
    

procedure TAdvertisementsEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TEntryData.getInstance().ID, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TEntryData.getInstance().ID)))), updatedValues);
end;
    

function TAdvertisementsEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TAdvertisementsEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


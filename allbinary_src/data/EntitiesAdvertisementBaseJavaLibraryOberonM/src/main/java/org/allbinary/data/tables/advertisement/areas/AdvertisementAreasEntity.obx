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
// package org.allbinary.data.tables.advertisement.areas
unit AdvertisementAreasEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AdvertisementAreaInterface, LogUtil, AbSqlBean, AdvertisementAreasEntityInterface;

type
  {AB:TYPES}
  TAdvertisementAreasEntity = class(TAbSqlBean, IAdvertisementAreasEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure delete_(value: string); virtual;
        function get(storeName: string): TBasicArrayList; overload; virtual;
        function get(storeName: string; advertisementAreaName: string): IAdvertisementAreaInterface; overload; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTable: string; virtual;
        procedure insert(values: TBasicArrayList); virtual;
  end;

implementation
uses
  BasicArrayListD, AdvertisementArea, AdvertisementAreaData, AdvertisementCampaignData, StoreFrontData, EntryData, UserDbInitInfo, StdUtil, StringMaker;


{AB:CODE}

procedure TAdvertisementAreasEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'advertisements';
end;

function TAdvertisementAreasEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementAreasEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TAdvertisementAreasEntity.delete_(value: string);
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
    

// throws Exception
function TAdvertisementAreasEntity.get(storeName: string): TBasicArrayList;
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
            if (hashMap_) <> (nil) then begin
                vector.add(TJava.Box((TJava.ToObject(TAdvertisementArea.Create(hashMap_)) as IAdvertisementAreaInterface)));
            end;
        end;
        Exit(vector);
end;
    

// throws Exception
function TAdvertisementAreasEntity.get(storeName: string; advertisementAreaName: string): IAdvertisementAreaInterface;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeName));
        keysAndValues.put(TJava.Box(TAdvertisementAreaData.getInstance().NAME), TJava.Box(advertisementAreaName));
        hashMap_ := inherited getRow(keysAndValues);
        if (hashMap_) <> (nil) then begin
            Exit((TJava.ToObject(TAdvertisementArea.Create(hashMap_)) as IAdvertisementAreaInterface));
        end else begin
            Exit(nil);
        end;
end;
    

function TAdvertisementAreasEntity.createTableStatement: string;
var
  advertisementAreaData_: TAdvertisementAreaData;
  stringBuffer: TStringMaker;
begin
        advertisementAreaData_ := TAdvertisementAreaData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(advertisementAreaData_.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TStoreFrontData.getInstance().NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementAreaData_.DESCRIPTION).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementAreaData_.CONSTRAINTS).append(Self.sqlTypeStrings.BLOB_NOT_NULL).append(TAdvertisementCampaignData.getInstance().NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(advertisementAreaData_.NAME).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TAdvertisementAreasEntity.createTable: string;
var
  returnStr: string;
begin
        returnStr := inherited createTable(Self.createTableStatement());
        Exit(returnStr);
end;
    

procedure TAdvertisementAreasEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TAdvertisementAreaData.getInstance().NAME, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TAdvertisementAreaData.getInstance().NAME)))), updatedValues);
end;
    

function TAdvertisementAreasEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TAdvertisementAreasEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


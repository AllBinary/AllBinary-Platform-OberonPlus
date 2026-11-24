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
// package org.allbinary.data.tables.advertisement.campaign.internal
unit AdvertisementCampaignInternalEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AdvertisementCampaignInterface, AdvertisementCampaignsInterface, LogUtil, AbSqlBean, AdvertisementCampaignInternalEntityInterface;

type
  {AB:TYPES}
  TAdvertisementCampaignInternalEntity = class(TAbSqlBean, IAdvertisementCampaignInternalEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure delete_(value: string); virtual;
        function getCampaignsInStore(storeName: string): IAdvertisementCampaignsInterface; virtual;
        function get(storeName: string; name: string): IAdvertisementCampaignInterface; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
        procedure insert(values: TBasicArrayList); virtual;
  end;

implementation
uses
  BasicArrayListD, AdvertisementCampaign, AdvertisementCampaignData, AdvertisementCampaigns, StoreFrontData, EntryData, UserDbInitInfo, TimeData, StdUtil, StringMaker;


{AB:CODE}

procedure TAdvertisementCampaignInternalEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'adCampaignInternal';
end;

function TAdvertisementCampaignInternalEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementCampaignInternalEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TAdvertisementCampaignInternalEntity.delete_(value: string);
begin
        try
            inherited deleteWhere(TStoreFrontData.getInstance().NAME, value);
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
    

function TAdvertisementCampaignInternalEntity.getCampaignsInStore(storeName: string): IAdvertisementCampaignsInterface;
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
                vector.add(TJava.Box((TJava.ToObject(TAdvertisementCampaign.Create(hashMap_)) as IAdvertisementCampaignInterface)));
            end;
        end;
        Exit((TJava.ToObject(TAdvertisementCampaigns.Create(vector)) as IAdvertisementCampaignsInterface));
end;
    

function TAdvertisementCampaignInternalEntity.get(storeName: string; name: string): IAdvertisementCampaignInterface;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeName));
        keysAndValues.put(TJava.Box(TAdvertisementCampaignData.getInstance().NAME), TJava.Box(name));
        hashMap_ := inherited getRow(keysAndValues);
        if (hashMap_) <> (nil) then begin
            Exit((TJava.ToObject(TAdvertisementCampaign.Create(hashMap_)) as IAdvertisementCampaignInterface));
        end else begin
            Exit(nil);
        end;
end;
    

procedure TAdvertisementCampaignInternalEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TEntryData.getInstance().getInstance().ID, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TEntryData.getInstance().getInstance().ID)))), updatedValues);
end;
    

function TAdvertisementCampaignInternalEntity.createTableStatement: string;
var
  entryData_: TEntryData;
  advertisementCampaignData_: TAdvertisementCampaignData;
  stringBuffer: TStringMaker;
begin
        entryData_ := TEntryData.getInstance().getInstance();
        advertisementCampaignData_ := TAdvertisementCampaignData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(entryData_.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TStoreFrontData.getInstance().NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData_.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData_.DESCRIPTION).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(advertisementCampaignData_.CONFIG).append(Self.sqlTypeStrings.BLOB_NOT_NULL).append(TTimeData.getInstance().START).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TTimeData.getInstance().END_).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData_.TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData_.LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(entryData_.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TAdvertisementCampaignInternalEntity.createTable: string;
var
  returnStr: string;
begin
        returnStr := inherited createTable(Self.createTableStatement());
        Exit(returnStr);
end;
    

function TAdvertisementCampaignInternalEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TAdvertisementCampaignInternalEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


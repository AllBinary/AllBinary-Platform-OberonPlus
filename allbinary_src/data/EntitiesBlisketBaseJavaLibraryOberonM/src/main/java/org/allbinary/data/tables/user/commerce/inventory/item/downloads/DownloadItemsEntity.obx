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
// package org.allbinary.data.tables.user.commerce.inventory.item.downloads
unit DownloadItemsEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicItemData, LogUtil, AbSqlBean, DownloadItemsEntityInterface;

type
  {AB:TYPES}
  TDownloadItemsEntity = class(TAbSqlBean, IDownloadItemsEntityInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(values: TBasicArrayList); virtual;
        procedure delete_(value: string); virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function getForItem(id: string): TBasicArrayList; overload; virtual;
        function getForItem(id: string; downloadItemId: string): TBasicArrayList; overload; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, InventoryDbInitInfo, DownloadItemData, DownloadableItem, StdUtil, StringMaker;


{AB:CODE}

procedure TDownloadItemsEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  Self.tableName := 'downloaditems';
end;

function TDownloadItemsEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDownloadItemsEntity.Create;
begin
        inherited Create(TInventoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TDownloadItemsEntity.insert(values: TBasicArrayList);
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
    

procedure TDownloadItemsEntity.delete_(value: string);
begin
        try
            inherited deleteWhere(TDownloadItemData.ID, value);
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
    

procedure TDownloadItemsEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TDownloadItemData.ID, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TDownloadItemData.ID)))), updatedValues);
end;
    

function TDownloadItemsEntity.getForItem(id: string): TBasicArrayList;
var
  returnVector: TBasicArrayList;
  keysAndValues: TJavaHashMap<TObject, TObject>;
  vector: TBasicArrayList;
  size: Integer;
  hashMap_: TJavaHashMap<TObject, TObject>;
  index: Integer;
begin
        returnVector := TBasicArrayListD.Create();
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(Self.basicItemData.ID), TJava.Box(id));
        vector := inherited getRows(keysAndValues);
        size := vector.size();
        for index := 0 to size - 1 do begin
            hashMap_ := TJavaHashMap<TObject, TObject>(TJava.ToObject(vector.get(index)));
            returnVector.add(TJava.Box(TDownloadableItem.Create(hashMap_)));
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
            Self.logUtil.putF('Found: ' + IntToStr(size), TJava.Box(Self), 'getForItem');
        end;
        Exit(returnVector);
end;
    

function TDownloadItemsEntity.getForItem(id: string; downloadItemId: string): TBasicArrayList;
var
  returnVector: TBasicArrayList;
  keysAndValues: TJavaHashMap<TObject, TObject>;
  vector: TBasicArrayList;
  size: Integer;
  hashMap_: TJavaHashMap<TObject, TObject>;
  index: Integer;
begin
        returnVector := TBasicArrayListD.Create();
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(Self.basicItemData.ID), TJava.Box(id));
        keysAndValues.put(TJava.Box(TDownloadItemData.ID), TJava.Box(downloadItemId));
        vector := inherited getRows(keysAndValues);
        size := vector.size();
        for index := 0 to size - 1 do begin
            hashMap_ := TJavaHashMap<TObject, TObject>(TJava.ToObject(vector.get(index)));
            returnVector.add(TJava.Box(TDownloadableItem.Create(hashMap_)));
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
            Self.logUtil.putF('Found: ' + IntToStr(size), TJava.Box(Self), 'getForItem');
        end;
        Exit(returnVector);
end;
    

function TDownloadItemsEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(TDownloadItemData.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.basicItemData.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().ENABLE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDownloadItemData.SPECIAL_NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDownloadItemData.VERSION).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDownloadItemData.CHANGES).append(Self.sqlTypeStrings.BLOB_NOT_NULL).append(TDownloadItemData.SYSTEM).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDownloadItemData.PLATFORM).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDownloadItemData.LICENSE_FILE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TDownloadItemData.FILE_).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDownloadItemData.SIZE).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TDownloadItemData.VALID_TIME).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TDownloadItemData.RETRIES).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(TDownloadItemData.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TDownloadItemsEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TDownloadItemsEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


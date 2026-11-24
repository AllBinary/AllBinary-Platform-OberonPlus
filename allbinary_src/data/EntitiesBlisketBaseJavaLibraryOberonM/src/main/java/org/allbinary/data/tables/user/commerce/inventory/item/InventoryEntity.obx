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
// package org.allbinary.data.tables.user.commerce.inventory.item
unit InventoryEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, BasicItemData, ItemInterface, LogUtil, AbSqlBean, InventoryEntityInterface;

type
  {AB:TYPES}
  TInventoryEntity = class(TAbSqlBean, IInventoryEntityInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(values: TBasicArrayList); virtual;
        procedure delete_(value: string); virtual;
        function getItems(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList; virtual;
        function getItem(id: string): IItemInterface; virtual;
        function getWeight(id: string): string; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTable: string; virtual;
        procedure deleteWhere(key: string; value: string); virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, InventoryDbInitInfo, BasicItem, MoneyException, StdUtil, StringMaker;


{AB:CODE}

procedure TInventoryEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  Self.tableName := 'basicinventory';
end;

function TInventoryEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInventoryEntity.Create;
begin
        inherited Create(TInventoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TInventoryEntity.insert(values: TBasicArrayList);
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
    

procedure TInventoryEntity.delete_(value: string);
begin
        try
            inherited deleteWhere(Self.basicItemData.ID, value);
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
function TInventoryEntity.getItems(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
var
  itemVector: TBasicArrayList;
  keysAndValues: TJavaHashMap<TObject, TObject>;
  itemHashMapVector: TBasicArrayList;
  size: Integer;
  itemHashMap: TJavaHashMap<TObject, TObject>;
  category: string;
  i: Integer;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
            Self.logUtil.putF('Getting Items For: ' + storeFrontInterface_.getName(), TJava.Box(Self), 'getItems');
        end;
        itemVector := TBasicArrayListD.Create();
        keysAndValues := TStdUtil.getInstance().createHashMap();
        itemHashMapVector := inherited getRows(keysAndValues);
        size := itemHashMapVector.size();
        for i := 0 to size - 1 do begin
            itemHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(itemHashMapVector.get(i)));
            if (itemHashMap) <> (nil) then begin
                category := TJava.UnboxString(TJava.ToObject(itemHashMap.get(TJava.Box(Self.basicItemData.CATEGORY))));
                if (not ((category = ''))) and (category.StartsWith(storeFrontInterface_.getCategoryPath())) then begin
                    itemVector.add(TJava.Box(TBasicItem.Create(itemHashMap)));
                end;
            end;
        end;
        Exit(itemVector);
end;
    

// throws MoneyException
function TInventoryEntity.getItem(id: string): IItemInterface;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  itemHashMap: TJavaHashMap<TObject, TObject>;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(Self.basicItemData.ID), TJava.Box(id));
        itemHashMap := inherited getRow(keysAndValues);
        if (itemHashMap) <> (nil) then begin
            Exit(TBasicItem.Create(itemHashMap));
        end else begin
            Exit(nil);
        end;
end;
    

function TInventoryEntity.getWeight(id: string): string;
begin
        Exit(inherited getField(Self.basicItemData.ID, id, Self.basicItemData.WEIGHT));
end;
    

function TInventoryEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(Self.basicItemData.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.NUMBER);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.INBASKETS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.WEIGHT);
        stringBuffer.append(' VARCHAR(20) NOT NULL,');
        stringBuffer.append(TEntryData.getInstance().ENABLE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.NEWORUSED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.SUMMARY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.DISTRIBUTOR);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.IDUSEDBYDISTRIBUTOR);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.PRODUCEDBY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.PRODUCTIONDATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.STARTPRODUCTIONDATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.DESCRIPTION);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(Self.basicItemData.KEYWORDS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.CATEGORY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.TYPE_);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.SMALLIMAGE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.MEDIUMIMAGE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.LARGEIMAGE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().LASTMODIFIED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().TIMECREATED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.PRICE);
        stringBuffer.append(' VARCHAR(20) NOT NULL,');
        stringBuffer.append(Self.basicItemData.COMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(Self.basicItemData.CUSTOMS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.DOWNLOADS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.GROUPS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.OPTIONS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.PERMISSIONS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.SPECIALS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.sqlStrings.PRIMARY_KEY);
        stringBuffer.append(Self.basicItemData.ID);
        stringBuffer.append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TInventoryEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

procedure TInventoryEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(Self.basicItemData.ID, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(Self.basicItemData.ID)))), updatedValues);
end;
    

function TInventoryEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TInventoryEntity.deleteWhere(key: string; value: string);
begin
        inherited deleteWhere(key, value);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.data.tables.user.commerce.inventory.order
unit OrderItemsEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasketReview, BasicItemData, OrderInterface, LogUtil, AbSqlBean, OrderItemsEntityInterface;

type
  {AB:TYPES}
  TOrderItemsEntity = class(TAbSqlBean, IOrderItemsEntityInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(userName: string; order: IOrderInterface); overload; virtual;
        procedure setStatus(orderId: string; groupId: string; status: string); virtual;
        function isEverythingShipped(orderId: string): Boolean; virtual;
        function getBasketReview(orderId: string): TBasketReview; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
        procedure insert(values: TBasicArrayList); overload; virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, EntryData, HistoryDbInitInfo, StdUtil, UserData, ShippingAddressData, BasketInterface, Item, ItemInterface, OrderData, OrderHistoryData, ShippingMethodData, OrderItemIdGenerator, TableDataFactory, InventoryEntity, InventoryEntityFactory, StringMaker, StringUtil;


{AB:CODE}

procedure TOrderItemsEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  Self.tableName := 'orderitems';
end;

function TOrderItemsEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOrderItemsEntity.Create;
begin
        inherited Create(THistoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TOrderItemsEntity.insert(userName: string; order: IOrderInterface);
var
  vector: TBasicArrayList;
  basket: IBasketInterface;
  items: ISet;
  ZERO_STRING: string;
  EMPTY_STRING: string;
  inventoryEntity_: TInventoryEntity;
  itemsArray: TArray<TObject>;
  itemsSize: Integer;
  item_: string;
  itemInterface_: IItemInterface;
  i: Integer;
begin
        vector := TBasicArrayListD.Create();
        try
            basket := order.getBasket();
            items := basket.getIds();
            ZERO_STRING := TTableDataFactory.getInstance().ZERO_STRING;
            EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
            inventoryEntity_ := TInventoryEntityFactory.getInstance().getInventoryEntityInstance();
            itemsArray := items.toArray();
            itemsSize := System.Length(itemsArray);
            for i := 0 to itemsSize - 1 do begin
                item_ := TJava.UnboxString(TJava.ToObject(itemsArray[i]));
                itemInterface_ := inventoryEntity_.getItem(item_);
                vector := TBasicArrayListD.Create();
                vector.add(TJava.Box(TOrderItemIdGenerator.Create().getNext()));
                vector.add(TJava.Box(order.getId()));
                vector.add(TJava.Box(TTableDataFactory.getInstance().INTEGER_MAX_VALUE_STRING));
                vector.add(TJava.Box(userName));
                vector.add(TJava.Box(order.getStoreName()));
                vector.add(TJava.Box(itemInterface_.getId()));
                vector.add(TJava.Box(basket.getNumberOf(item_).toString()));
                vector.add(TJava.Box(itemInterface_.getNewOrUsed()));
                vector.add(TJava.Box(itemInterface_.getSummary()));
                vector.add(TJava.Box(itemInterface_.getDistributor()));
                vector.add(TJava.Box(itemInterface_.getIdUsedByDistributor()));
                vector.add(TJava.Box(itemInterface_.getProducedBy()));
                vector.add(TJava.Box(itemInterface_.getProductionDate()));
                vector.add(TJava.Box(itemInterface_.getStartProductionDate()));
                vector.add(TJava.Box(itemInterface_.getDescription()));
                vector.add(TJava.Box(itemInterface_.getKeywords()));
                vector.add(TJava.Box(itemInterface_.getCategory()));
                vector.add(TJava.Box(itemInterface_.getType()));
                vector.add(TJava.Box(itemInterface_.getSmallImage()));
                vector.add(TJava.Box(itemInterface_.getMediumImage()));
                vector.add(TJava.Box(itemInterface_.getLargeImage()));
                vector.add(TJava.Box(itemInterface_.getWeight()));
                vector.add(TJava.Box(itemInterface_.getPrice().toString()));
                vector.add(TJava.Box(itemInterface_.getComment()));
                vector.add(TJava.Box(itemInterface_.getCustoms()));
                vector.add(TJava.Box(itemInterface_.getDownloads()));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(EMPTY_STRING));
                vector.add(TJava.Box(ZERO_STRING));
                vector.add(TJava.Box(ZERO_STRING));
                vector.add(TJava.Box(ZERO_STRING));
                vector.add(TJava.Box(ZERO_STRING));
                Self.insert(vector);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF('Command Success Added: ' + IntToStr(items.size()), TJava.Box(Self), INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put('Command Failed: ' + vector.toString(), TJava.Box(Self), INSERT, TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TOrderItemsEntity.setStatus(orderId: string; groupId: string; status: string);
var
  whereHashMap: TJavaHashMap<TObject, TObject>;
  updateHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            whereHashMap := TStdUtil.getInstance().createHashMap();
            updateHashMap := TStdUtil.getInstance().createHashMap();
            whereHashMap.put(TJava.Box(TOrderData.ID), TJava.Box(orderId));
            whereHashMap.put(TJava.Box(TShippingMethodData.GROUP), TJava.Box(groupId));
            updateHashMap.put(TJava.Box(TOrderHistoryData.STATUS), TJava.Box(status));
            inherited updateWhere(whereHashMap, updateHashMap);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'setStatus', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TOrderItemsEntity.isEverythingShipped(orderId: string): Boolean;
var
  itemStatusVector: TBasicArrayList;
  size: Integer;
  status: string;
  index: Integer;
begin
        try
            itemStatusVector := inherited getColumnWhere(TOrderHistoryData.STATUS, TOrderData.ID, orderId);
            size := itemStatusVector.size();
            for index := 0 to size - 1 do begin
                status := TJava.UnboxString(TJava.ToObject(itemStatusVector.get(index)));
                if (CompareStr(status, TOrderHistoryData.SHIPPED)) <> (0) then begin
                    Exit(False);
                end;
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'isEverythingShipped', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TOrderItemsEntity.getBasketReview(orderId: string): TBasketReview;
var
  basketReview_: TBasketReview;
  keyValues: TJavaHashMap<TObject, TObject>;
  items: TBasicArrayList;
  entryData_: TEntryData;
  EMPTY_STRING: string;
  itemsArray: TArray<TObject>;
  itemsSize: Integer;
  itemHashMap: TJavaHashMap<TObject, TObject>;
  item_: TItem;
  i: Integer;
begin
        try
            basketReview_ := TBasketReview.Create();
            keyValues := TStdUtil.getInstance().createHashMap();
            keyValues.put(TJava.Box(TOrderData.ID), TJava.Box(orderId));
            items := inherited getRows(keyValues);
            entryData_ := TEntryData.getInstance();
            if ((items) <> (nil)) and ((items.size()) > (0)) then begin
                EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
                itemsArray := items.toArray();
                itemsSize := System.Length(itemsArray);
                for i := 0 to itemsSize - 1 do begin
                    itemHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(itemsArray[i]));
                    itemHashMap.put(TJava.Box(Self.basicItemData.INBASKETS), TJava.Box(EMPTY_STRING));
                    itemHashMap.put(TJava.Box(entryData_.ENABLE), TJava.Box(EMPTY_STRING));
                    itemHashMap.put(TJava.Box(entryData_.TIMECREATED), TJava.Box(EMPTY_STRING));
                    itemHashMap.put(TJava.Box(entryData_.LASTMODIFIED), TJava.Box(EMPTY_STRING));
                    itemHashMap.put(TJava.Box(Self.basicItemData.GROUPS), TJava.Box(EMPTY_STRING));
                    itemHashMap.put(TJava.Box(Self.basicItemData.OPTIONS), TJava.Box(EMPTY_STRING));
                    itemHashMap.put(TJava.Box(Self.basicItemData.PERMISSIONS), TJava.Box(EMPTY_STRING));
                    itemHashMap.put(TJava.Box(Self.basicItemData.SPECIALS), TJava.Box(EMPTY_STRING));
                    item_ := TItem.Create(itemHashMap);
                    basketReview_.addItem(item_);
                end;
                Exit(basketReview_);
            end else begin
                Exit(nil);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'getBasketReview', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TOrderItemsEntity.createTableStatement: string;
var
  entryData_: TEntryData;
  stringBuffer: TStringMaker;
begin
        entryData_ := TEntryData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('CREATE TABLE ');
        stringBuffer.append(Self.tableName);
        stringBuffer.append(' (');
        stringBuffer.append(entryData_.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TOrderData.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TShippingMethodData.GROUP);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TUserData.USERNAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TStoreFrontData.getInstance().NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.ID);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.NUMBER);
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
        stringBuffer.append(Self.basicItemData.WEIGHT);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.basicItemData.PRICE);
        stringBuffer.append(' VARCHAR(20) NOT NULL,');
        stringBuffer.append(Self.basicItemData.COMMENT);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(Self.basicItemData.CUSTOMS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.basicItemData.DOWNLOADS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TShippingMethodData.COST);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TAX);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.STREET);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.CITY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.STATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.CODE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingAddressData.COUNTRY);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TShippingMethodData.NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(entryData_.SPECIAL);
        stringBuffer.append(' VARCHAR(255) ,');
        stringBuffer.append(TOrderHistoryData.STATUS);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.CANCELINFO);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.CANCELTYPE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.SHIPPEDDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.ORDERDATE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TOrderHistoryData.TRANSDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append(TOrderHistoryData.CANCELDATE);
        stringBuffer.append(' BIGINT(19) UNSIGNED ,');
        stringBuffer.append('PRIMARY KEY(');
        stringBuffer.append(entryData_.ID);
        stringBuffer.append(') )');
        Exit(stringBuffer.toString());
end;
    

function TOrderItemsEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TOrderItemsEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TOrderItemsEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


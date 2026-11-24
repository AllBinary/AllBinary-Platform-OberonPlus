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
// package org.allbinary.data.tables.user.commerce.inventory.item.options
unit BasicOptionItemsEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicItemData, LogUtil, AbSqlBean, BasicOptionItemsEntityInterface;

type
  {AB:TYPES}
  TBasicOptionItemsEntity = class(TAbSqlBean, IBasicOptionItemsEntityInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(values: TBasicArrayList); virtual;
        procedure delete_(value: string); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, InventoryDbInitInfo, BasicOptionItemData, StringMaker;


{AB:CODE}

procedure TBasicOptionItemsEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  Self.tableName := 'basicoptionitems';
end;

function TBasicOptionItemsEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicOptionItemsEntity.Create;
begin
        inherited Create(TInventoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TBasicOptionItemsEntity.insert(values: TBasicArrayList);
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
    

procedure TBasicOptionItemsEntity.delete_(value: string);
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
    

function TBasicOptionItemsEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(Self.basicItemData.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TBasicOptionItemData.OPTION_ONE_TITLE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.DEFAULT_OPTION_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.DEFAULT_OPTION_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TBasicOptionItemData.OPTION_ONE_ONE_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_ONE_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_TWO_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_TWO_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_THREE_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_THREE_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_FOUR_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_FOUR_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_FIVE_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_FIVE_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_SIX_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_SIX_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_SEVEN_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_SEVEN_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_EIGHT_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_EIGHT_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_NINE_ITEM).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TBasicOptionItemData.OPTION_ONE_NINE_VALUE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(Self.basicItemData.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TBasicOptionItemsEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

procedure TBasicOptionItemsEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(Self.basicItemData.ID, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(Self.basicItemData.ID)))), updatedValues);
end;
    

function TBasicOptionItemsEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


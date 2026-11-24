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
// package org.allbinary.data.tables.user.commerce.inventory.item.permissions
unit PermissionItemsEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicItemData, LogUtil, AbSqlBean, PermissionItemsEntityInterface;

type
  {AB:TYPES}
  TPermissionItemsEntity = class(TAbSqlBean, IPermissionItemsEntityInterface)
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
  BasicArrayListD, EntryData, InventoryDbInitInfo, PermissionItemData, StringMaker;


{AB:CODE}

procedure TPermissionItemsEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  Self.tableName := 'permissionitems';
end;

function TPermissionItemsEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPermissionItemsEntity.Create;
begin
        inherited Create(TInventoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TPermissionItemsEntity.insert(values: TBasicArrayList);
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
    

procedure TPermissionItemsEntity.delete_(value: string);
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
    

function TPermissionItemsEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(Self.basicItemData.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.basicItemData.NUMBER).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().ENABLE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TPermissionItemData.WHO).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPermissionItemData.WHAT).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPermissionItemData.TYPE_).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPermissionItemData.REMOTE_ADDR).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPermissionItemData.START_TIME).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TPermissionItemData.END_TIME).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.basicItemData.PRICE).append(' DECIMAL (11,2) NOT NULL,').append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(Self.basicItemData.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TPermissionItemsEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

procedure TPermissionItemsEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(Self.basicItemData.ID, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(Self.basicItemData.ID)))), updatedValues);
end;
    

function TPermissionItemsEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


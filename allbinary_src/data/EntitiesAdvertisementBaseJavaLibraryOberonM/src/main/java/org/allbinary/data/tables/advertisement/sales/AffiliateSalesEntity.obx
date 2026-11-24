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
// package org.allbinary.data.tables.advertisement.sales
unit AffiliateSalesEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbSqlBean, BasicArrayList, AffiliateSalesEntityInterface;

type
  {AB:TYPES}
  TAffiliateSalesEntity = class(TAbSqlBean, IAffiliateSalesEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure delete_(value: string); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTable: string; virtual;
        procedure insert(values: TBasicArrayList); virtual;
  end;

implementation
uses
  DynamicObjectData, StoreFrontData, EntryData, UserDbInitInfo, GroupData, StringMaker;


{AB:CODE}

procedure TAffiliateSalesEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'affiliate';
end;

function TAffiliateSalesEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAffiliateSalesEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TAffiliateSalesEntity.delete_(value: string);
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
    

function TAffiliateSalesEntity.createTableStatement: string;
var
  entryData_: TEntryData;
  stringBuffer: TStringMaker;
begin
        entryData_ := TEntryData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(entryData_.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TStoreFrontData.getInstance().NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TGroupData.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TDynamicObjectData.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData_.TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData_.LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(entryData_.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TAffiliateSalesEntity.createTable: string;
var
  returnStr: string;
begin
        returnStr := inherited createTable(Self.createTableStatement());
        Exit(returnStr);
end;
    

procedure TAffiliateSalesEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TEntryData.getInstance().ID, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TEntryData.getInstance().ID)))), updatedValues);
end;
    

function TAffiliateSalesEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TAffiliateSalesEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


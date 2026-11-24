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
// package org.allbinary.data.tables.log
unit LogTableEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbSqlBean, BasicArrayList, LogTableEntityInterface;

type
  {AB:TYPES}
  TLogTableEntity = class(TAbSqlBean, ILogTableEntityInterface)
  public
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure deleteWhere(key: string; value: string); virtual;
        procedure insert(values: TBasicArrayList); virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  EntryData, LogDbInitInfo, AbeHttpRequestInfoData, StringMaker;


{AB:CODE}

procedure TLogTableEntity.InitFields;
begin
  Self.tableName := 'log';
end;

function TLogTableEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLogTableEntity.Create;
begin
        inherited Create(TLogDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

function TLogTableEntity.createTableStatement: string;
var
  abeHttpRequestInfoData_: TAbeHttpRequestInfoData;
  stringBuffer: TStringMaker;
begin
        abeHttpRequestInfoData_ := TAbeHttpRequestInfoData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(Self.sqlStrings.ID).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData_.HTTP_USER_AGENT).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData_.REMOTE_HOST).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(abeHttpRequestInfoData_.REMOTE_ADDRESS).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData_.REQUEST_FILE_PATH).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData_.REMOTE_PORT).append(Self.sqlTypeStrings.MAX_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(Self.sqlStrings.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TLogTableEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

procedure TLogTableEntity.deleteWhere(key: string; value: string);
begin
        inherited deleteWhere(key, value);
end;
    

procedure TLogTableEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;
    

function TLogTableEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


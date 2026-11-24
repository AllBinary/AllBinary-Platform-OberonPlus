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
// package org.allbinary.logic.communication.sql
unit AbSqlTable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DbConnectionInfo, LogUtil, AbSqlBasic;

type
  {AB:TYPES}
  TAbSqlTable = class(TAbSqlBasic)
  public
    logUtil: TLogUtil;
    tableName: string;
    METHOD_CREATED_TABLE: string;
    METHOD_DROP_TABLE: string;
    TABLE_CREATION_SUCCESS: string;
    DROPPED_SUCCESS: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface: TDbConnectionInfo);
        procedure setTableName(tableName: string); virtual;
        function getTableName: string; virtual;
        function createTable(data: string): string; virtual;
        function dropTable: string; virtual;
  end;

implementation

{AB:CODE}

procedure TAbSqlTable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.METHOD_CREATED_TABLE := 'createTable()';
  Self.METHOD_DROP_TABLE := 'dropTable()';
  Self.TABLE_CREATION_SUCCESS := 'Table Creation Successful: ';
  Self.DROPPED_SUCCESS := ' Dropped Successfully';
end;
    

constructor TAbSqlTable.Create(databaseConnectionInfoInterface: TDbConnectionInfo);
begin
        inherited Create(databaseConnectionInfoInterface);
        InitFields;
end;
    

procedure TAbSqlTable.setTableName(tableName: string);
begin
        Self.tableName := tableName;
end;
    

function TAbSqlTable.getTableName: string;
begin
        Exit(Self.tableName);
end;
    

function TAbSqlTable.createTable(data: string): string;
begin
    TJava.MonitorEnter(Self);
    try
        try
            Self.executeSQLStatement(data);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.TABLE_CREATION_SUCCESS + Self.tableName + ' with statement: ' + data, TJava.Box(Self), Self.METHOD_CREATED_TABLE);
            end;
            Exit(Self.tableName + TJava.ToString(Self.sqlStrings.CREATE_RETURN));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put('Table Creation Failed: ' + Self.tableName + ' with statement: ' + data, TJava.Box(Self), Self.METHOD_CREATED_TABLE, TJava.Box(e));
            end;
            Exit('Failed to Create ' + Self.tableName + ' table.');
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTable.dropTable: string;
var
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        sqlStatement := TJava.ToString(Self.sqlStrings.DROP_TABLE) + Self.tableName;
        try
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_DROP_TABLE);
            end;
            Exit(Self.tableName + Self.DROPPED_SUCCESS);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_DROP_TABLE, TJava.Box(e));
            end;
            Exit('Failed to Drop ' + Self.tableName + ' table.');
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


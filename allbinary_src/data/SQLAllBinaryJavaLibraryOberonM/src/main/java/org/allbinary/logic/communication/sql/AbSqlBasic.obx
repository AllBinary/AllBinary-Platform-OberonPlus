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
unit AbSqlBasic;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DatabaseConnectionInfoInterface, DbConnectionInfo, StdUtil, LogUtil, SqlConnectionPool, StringUtil, CommonSeps, CommonStrings, SqlTypeStrings, SqlStrings;

type
  {AB:TYPES}
  TAbSqlBasic = class(TObject)
  public
    logUtil: TLogUtil;
    sqlConnectionPool: TSqlConnectionPool;
    databaseConnectionInfoInterface: TDbConnectionInfo;
    connectAttemptCounter: Integer;
    conn: IConnection;
    stringUtil: TStringUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    stdUtil: TStdUtil;
    sqlTypeStrings: TSqlTypeStrings;
    sqlStrings: TSqlStrings;
    INSERT: string;
    UPDATE: string;
    FAILED_SQL_STATEMENT: string;
    SUCCESS_SQL_STATEMENT: string;
    METHOD_EXECUTED_SQL_STATEMENT: string;
    METHOD_CREATE: string;
    DATABASE_CREATED_LABEL: string;
    DATABASE_CREATION_FAILED_LABEL: string;
    SQL_CONNECTION_FAILED: string;
    SQL_CONNECTION_RETRYING: string;
    SQL_CONNECTION_RETRY: string;
    METHOD_CREATE_CONNECTION: string;
    METHOD_INITIALIZE: string;
    LOAD_JDBC_DRIVER_FAILED_LABEL: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface_: TDbConnectionInfo);
        function executeSQLStatement(statement_: string): TResultSet; virtual;
        function create_(databaseName: string): string; virtual;
        procedure createConnection;
        procedure initialize;
        function getDatabaseConnectionInfoInterface: IDatabaseConnectionInfoInterface; virtual;
        procedure setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface_: TDbConnectionInfo); virtual;
  end;

implementation

{AB:CODE}

procedure TAbSqlBasic.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.sqlConnectionPool := TSqlConnectionPool.getInstance();
  
  
  
  Self.stringUtil := TStringUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.stdUtil := TStdUtil.getInstance();
  Self.sqlTypeStrings := TSqlTypeStrings.getInstance();
  Self.sqlStrings := TSqlStrings.getInstance();
  Self.INSERT := 'insert';
  Self.UPDATE := 'update';
  Self.FAILED_SQL_STATEMENT := 'Failed'#10'SQL Statement: ';
  Self.SUCCESS_SQL_STATEMENT := 'Success'#10'SQL Statement: ';
  Self.METHOD_EXECUTED_SQL_STATEMENT := 'executedSQLStatement';
  Self.METHOD_CREATE := 'create';
  Self.DATABASE_CREATED_LABEL := 'Database Created: ';
  Self.DATABASE_CREATION_FAILED_LABEL := 'Database Creation Failed: ';
  Self.SQL_CONNECTION_FAILED := 'SQL Connection Failed';
  Self.SQL_CONNECTION_RETRYING := 'SQL Connection Retrying';
  Self.SQL_CONNECTION_RETRY := 'SQL Connection Retry';
  Self.METHOD_CREATE_CONNECTION := 'createConnection()';
  Self.METHOD_INITIALIZE := 'initialize';
  Self.LOAD_JDBC_DRIVER_FAILED_LABEL := 'Load JDBC Driver Failed: ';
end;
    

constructor TAbSqlBasic.Create(databaseConnectionInfoInterface_: TDbConnectionInfo);
begin
    inherited Create;
    InitFields;
        Self.databaseConnectionInfoInterface := databaseConnectionInfoInterface_;
        Self.connectAttemptCounter := 0;
        Self.conn := nil;
end;
    

// throws SQLException
function TAbSqlBasic.executeSQLStatement(statement_: string): TResultSet;
var
  stmt: TStatement;
  rset: TResultSet;
  tempConnection: IConnection;
begin
        try
            Self.initialize();
            stmt := Self.conn.createStatement();
            stmt.execute(statement_);
            rset := stmt.getResultSet();
            stmt.close();
            tempConnection := Self.conn;
            Self.conn := nil;
            Self.sqlConnectionPool.add(Self.getDatabaseConnectionInfoInterface().getUrl(), TJava.ToObject(tempConnection));
            Exit(rset);
        except
            on e: TSQLException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(Self.FAILED_SQL_STATEMENT + statement_, TJava.Box(Self), Self.METHOD_EXECUTED_SQL_STATEMENT, TJava.Box(e));
            end;
            Self.conn.close();
            Self.conn := nil;
            raise e;
            end;
        end;
end;
    

function TAbSqlBasic.create_(databaseName: string): string;
begin
        try
            Self.executeSQLStatement(TJava.ToString(Self.sqlStrings.CREATE_DATABASE) + databaseName);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.DATABASE_CREATED_LABEL + databaseName, TJava.Box(Self), Self.METHOD_CREATE);
            end;
            Exit(databaseName + TJava.ToString(Self.sqlStrings.CREATE_RETURN));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(Self.DATABASE_CREATION_FAILED_LABEL + databaseName, TJava.Box(Self), Self.METHOD_CREATE, TJava.Box(e));
            end;
            Exit(Self.DATABASE_CREATION_FAILED_LABEL + databaseName);
            end;
        end;
end;
    

procedure TAbSqlBasic.createConnection;
begin
        try
            Self.conn := Self.sqlConnectionPool.get(Self.getDatabaseConnectionInfoInterface().getUrl());
        except
            on se: TSQLException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(Self.SQL_CONNECTION_RETRYING, TJava.Box(Self), Self.METHOD_CREATE_CONNECTION, TJava.Box(se));
            end;
            try
                TThread.CurrentThread.sleep(2000);
                if (Self.connectAttemptCounter) < (10) then begin
                    Inc(Self.connectAttemptCounter);
                    Self.initialize();
                end;
            except
                on e: SysUtils.Exception do begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                    Self.logUtil.put(Self.SQL_CONNECTION_RETRY + se.Message, TJava.Box(Self), Self.METHOD_CREATE_CONNECTION, TJava.Box(e));
                end;
                end;
            end;
            end;
        end;
end;
    

procedure TAbSqlBasic.initialize;
var
  loader: TClassLoader;
  jdbcDriverClass: TClass;
begin
        try
            begin
                try
                    loader := TClassLoader.getSystemClassLoader();
                    jdbcDriverClass := loader.loadClass(Self.getDatabaseConnectionInfoInterface().getJdbcDriver());
                    jdbcDriverClass.newInstance();
                except
                    on e: SysUtils.Exception do begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                        Self.logUtil.put(Self.LOAD_JDBC_DRIVER_FAILED_LABEL + TJava.ToString(Self.getDatabaseConnectionInfoInterface().getJdbcDriver()), TJava.Box(Self), Self.METHOD_INITIALIZE, TJava.Box(e));
                    end;
                    end;
                end;
            end;
            Self.createConnection();
        except
            on se: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(Self.SQL_CONNECTION_FAILED, TJava.Box(Self), Self.METHOD_INITIALIZE, TJava.Box(se));
            end;
            end;
        end;
end;
    

function TAbSqlBasic.getDatabaseConnectionInfoInterface: IDatabaseConnectionInfoInterface;
begin
        Exit(Self.databaseConnectionInfoInterface);
end;
    

procedure TAbSqlBasic.setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface_: TDbConnectionInfo);
begin
        Self.databaseConnectionInfoInterface := databaseConnectionInfoInterface_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


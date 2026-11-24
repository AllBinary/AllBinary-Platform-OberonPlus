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
// package org.allbinary.business.init
unit InitSql;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DatabaseConnectionInfoInterface, DbConnectionInfo, StdUtil, SqlStrings, SqlTypeStrings, StringUtil, CommonSeps, CommonStrings;

type
  {AB:TYPES}
  TInitSql = class(TObject)
  public
    stringUtil: TStringUtil;
    commonSeps: TCommonSeps;
    sqlTypeStrings: TSqlTypeStrings;
    sqlStrings: TSqlStrings;
    stdUtil: TStdUtil;
    INSERT_: string;
    UPDATE: string;
    databaseConnectionInfoInterface: TDbConnectionInfo;
    userid: string;
    password: string;
    tableName: string;
    conn: IConnection;
    useridAndPassword: Boolean;
    SUCCESS_SQL_STATEMENT: string;
    FAILED_SQL_STATEMENT: string;
    INIT_SQL: string;
    commonStrings: TCommonStrings;
    EQUAL_QUOTE: string;
    METHOD_GET_ROW: string;
    METHOD_UPDATE_WHERE: string;
    ROW_VALUE_LABEL: string;
    NO_RESULTS_IN_RESULT_SET: string;
    INSERT_END: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface_: TDbConnectionInfo);
        procedure setTable(tableName: string); virtual;
        procedure setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface_: TDbConnectionInfo); virtual;
        function createTable(tableData: string): Boolean; virtual;
        function dropTable: Boolean; virtual;
        function getRow(keysAndValues: TJavaHashMap<TObject, TObject>): TJavaHashMap<TObject, TObject>; virtual;
        procedure updateWhere(key: string; value: string; updatedKeyValuePairs: TJavaHashMap<TObject, TObject>); virtual;
        procedure insert(values: TBasicArrayList); virtual;
        function getValue(value: string): string;
        function executeSQLStatement(statement_: string): TResultSet; virtual;
        procedure createConnection;
        procedure initialize;
        function getDatabaseConnectionInfoInterface: IDatabaseConnectionInfoInterface; virtual;
  end;

implementation
uses
  BasicArrayListD, PreLogUtil, LogConfigTypeFactory, LogConfigTypes, StringMaker;


{AB:CODE}

procedure TInitSql.InitFields;
begin
  Self.stringUtil := TStringUtil.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.sqlTypeStrings := TSqlTypeStrings.getInstance();
  Self.sqlStrings := TSqlStrings.getInstance();
  Self.stdUtil := TStdUtil.getInstance();
  Self.INSERT_ := 'insert';
  Self.UPDATE := 'update';
  
  
  
  
  
  
  Self.SUCCESS_SQL_STATEMENT := 'Success'#10'SQL Statement: ';
  Self.FAILED_SQL_STATEMENT := 'Failed'#10'SQL Statement: ';
  Self.INIT_SQL := 'InitSql';
  Self.commonStrings := TCommonStrings.getInstance();
  Self.EQUAL_QUOTE := '="';
  Self.METHOD_GET_ROW := 'getRow()';
  Self.METHOD_UPDATE_WHERE := 'updateWhere()';
  Self.ROW_VALUE_LABEL := 'Row Value: ';
  Self.NO_RESULTS_IN_RESULT_SET := 'No Results in ResultSet';
  Self.INSERT_END := ''')';
end;
    

constructor TInitSql.Create(databaseConnectionInfoInterface_: TDbConnectionInfo);
begin
    inherited Create;
    InitFields;
        Self.setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface_);
end;
    

procedure TInitSql.setTable(tableName: string);
begin
        Self.tableName := tableName;
end;
    

procedure TInitSql.setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface_: TDbConnectionInfo);
begin
        Self.databaseConnectionInfoInterface := databaseConnectionInfoInterface_;
end;
    

function TInitSql.createTable(tableData: string): Boolean;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Creating Table: ');
            stringBuffer.append(tableData);
            TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self.INIT_SQL), 'createTable()');
            Self.executeSQLStatement(tableData);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.INIT_SQL), 'createTable()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInitSql.dropTable: Boolean;
var
  sqlStatement: string;
begin
        sqlStatement := TJava.ToString(Self.sqlStrings.DROP_TABLE) + Self.tableName;
        try
            Self.executeSQLStatement(sqlStatement);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.INIT_SQL), 'dropTables()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInitSql.getRow(keysAndValues: TJavaHashMap<TObject, TObject>): TJavaHashMap<TObject, TObject>;
var
  stringBuffer: TStringMaker;
  result_: TJavaHashMap<TObject, TObject>;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  i: Integer;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData_: TResultSetMetaData;
  columnCount: Integer;
  columnName: string;
  field: string;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
            result_ := nil;
            set_ := keysAndValues.keySet();
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for i := 0 to size - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(keyArray[i]));
                value := TJava.NewString(TJava.UnboxString(TJava.ToObject(keysAndValues.get(TJava.Box(key)))));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then begin
                    stringBuffer.append(Self.sqlStrings.AND_);
                end;
            end;
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                TPreLogUtil.put(TJava.ToString(Self.sqlStrings.SQL_STATEMENT_LABEL) + sqlStatement, TJava.Box(Self.INIT_SQL), Self.METHOD_GET_ROW);
            end;
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData_ := rset.getMetaData();
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnCount := resultSetMetaData_.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData_.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(TJava.Box(columnName), TJava.Box(field));
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    TPreLogUtil.put(Self.ROW_VALUE_LABEL + result_.toString(), TJava.Box(Self.INIT_SQL), Self.METHOD_GET_ROW);
                end;
                Exit(result_);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.put(Self.NO_RESULTS_IN_RESULT_SET, TJava.Box(Self.INIT_SQL), Self.METHOD_GET_ROW);
            end;
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.FAILED_SQL_STATEMENT + TJava.ToString(stringBuffer), TJava.Box(Self.INIT_SQL), Self.METHOD_GET_ROW, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TInitSql.updateWhere(key: string; value: string; updatedKeyValuePairs: TJavaHashMap<TObject, TObject>);
var
  stringBuffer: TStringMaker;
  columnArray: TArray<TObject>;
  size: Integer;
  columnName: string;
  columnValue: string;
  i: Integer;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.UPDATE);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.SET_);
        try
            columnArray := updatedKeyValuePairs.keySet().toArray();
            size := System.Length(columnArray);
            for i := 0 to size - 1 do begin
                columnName := columnArray[i].toString();
                stringBuffer.append(Self.commonSeps.SPACE);
                stringBuffer.append(columnName);
                stringBuffer.append(Self.EQUAL_QUOTE);
                columnValue := TJava.UnboxString(TJava.ToObject(updatedKeyValuePairs.get(TJava.Box(columnName))));
                if (columnValue) = ('') then begin
                    columnValue := Self.stringUtil.EMPTY_STRING;
                end else begin
                end;
                stringBuffer.append(Self.getValue(columnValue));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then begin
                    stringBuffer.append(Self.commonSeps.COMMA);
                end;
            end;
            stringBuffer.append(Self.sqlStrings.WHERE);
            stringBuffer.append(key);
            stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
            stringBuffer.append(Self.getValue(value));
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                TPreLogUtil.put(Self.SUCCESS_SQL_STATEMENT + sqlStatement, TJava.Box(Self.INIT_SQL), Self.METHOD_UPDATE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.FAILED_SQL_STATEMENT + TJava.ToString(stringBuffer), TJava.Box(Self.INIT_SQL), Self.METHOD_UPDATE_WHERE, TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TInitSql.insert(values: TBasicArrayList);
var
  stringBuffer: TStringMaker;
  size: Integer;
  value: string;
  i: Integer;
  sqlStatement: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.INSERT_INTO);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.VALUES);
        try
            size := values.size();
            for i := 0 to (size) - (1) - 1 do begin
                value := Self.getValue(TJava.UnboxString(TJava.ToObject(values.get(i))));
                stringBuffer.append(value);
                stringBuffer.append(Self.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
            end;
            value := Self.getValue(TJava.UnboxString(TJava.ToObject(values.get((values.size()) - (1)))));
            stringBuffer.append(value);
            stringBuffer.append(Self.INSERT_END);
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                TPreLogUtil.put(Self.SUCCESS_SQL_STATEMENT + sqlStatement, TJava.Box(Self.INIT_SQL), Self.INSERT_);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.FAILED_SQL_STATEMENT + stringBuffer.toString(), TJava.Box(Self.INIT_SQL), Self.INSERT_, TJava.Box(e));
            end;
            end;
        end;
end;
    

function TInitSql.getValue(value: string): string;
begin
    TJava.MonitorEnter(Self);
    try
        if (value = '') then begin
            Exit(Self.stringUtil.EMPTY_STRING);
        end else begin
            Exit(value);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception, SQLException
function TInitSql.executeSQLStatement(statement_: string): TResultSet;
var
  stmt: TStatement;
  rset: TResultSet;
begin
        try
            if (Self.conn) = (nil) then begin
                Self.initialize();
            end;
            stmt := Self.conn.createStatement();
            stmt.execute(statement_);
            rset := stmt.getResultSet();
            stmt.close();
            Exit(rset);
        except
            on e: TSQLException do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.INIT_SQL), 'executeSQLStatement()', TJava.Box(e));
            end;
            raise e;
            end;
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.INIT_SQL), 'executeSQLStatement()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws SQLException
procedure TInitSql.createConnection;
begin
        try
            if (Self.useridAndPassword) = (True) then begin
                Self.conn := TDriverManager.getConnection(Self.databaseConnectionInfoInterface.getUrl(), Self.userid, Self.password);
            end else begin
                Self.conn := TDriverManager.getConnection(Self.databaseConnectionInfoInterface.getUrl());
            end;
        except
            on se: TSQLException do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.INIT_SQL), 'createConnection()', TJava.Box(se));
            raise se;
            end;
        end;
end;
    

// throws Exception
procedure TInitSql.initialize;
var
  jdbcDriver: string;
begin
        try
            try
                jdbcDriver := Self.databaseConnectionInfoInterface.getJdbcDriver();
                TPreLogUtil.put(TStringMaker.Create().append('Loading DbConnnectionInfo: ').append(TJava.ToObject(Self.databaseConnectionInfoInterface).ClassType.ClassName).append(' Driver: ').append(jdbcDriver).toString(), TJava.Box(Self.INIT_SQL), 'initialize()');
                TClass.forName(jdbcDriver).newInstance();
            except
                on e: SysUtils.Exception do begin
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                    TPreLogUtil.putOE('LoadDriver Failed: ' + TJava.ToString(Self.databaseConnectionInfoInterface.getJdbcDriver()), TJava.Box(Self.INIT_SQL), 'initialize()', TJava.Box(e));
                end;
                raise e;
                end;
            end;
            if ((Self.userid) = ('')) and ((Self.password) = ('')) then begin
                Self.useridAndPassword := True;
            end;
            Self.createConnection();
        except
            on se: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.INIT_SQL), 'initialize()', TJava.Box(se));
            end;
            raise se;
            end;
        end;
end;
    

function TInitSql.getDatabaseConnectionInfoInterface: IDatabaseConnectionInfoInterface;
begin
        Exit(Self.databaseConnectionInfoInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


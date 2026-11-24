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
unit AbSqlRow;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DbConnectionInfo, LogUtil, AbSqlColumn;

type
  {AB:TYPES}
  TAbSqlRow = class(TAbSqlColumn)
  public
    logUtil: TLogUtil;
    EQUAL_QUOTE: string;
    ESCAPE_QUOTES: string;
    GET_ROW: string;
    METHOD_GET_ROW: string;
    METHOD_GET_ROWS: string;
    METHOD_GET_ALL_ROWS: string;
    METHOD_UPDATE_WHERE: string;
    METHOD_GET_ROWS_WHERE_BETWEEN: string;
    METHOD_DELETE_WHERE: string;
    ROW_VALUE_LABEL: string;
    ROW_VALUES_LABEL: string;
    NO_RESULTS_IN_RESULT_SET: string;
    COLUMN_NAME_LABEL: string;
    INSERT_END: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface: TDbConnectionInfo);
        function getValue(value: string): string;
        procedure updateWhere(key: string; value: string; updatedKeyValuePairs: TJavaHashMap<TObject, TObject>); overload; virtual;
        procedure updateWhere(whereKeyValuePairs: TJavaHashMap<TObject, TObject>; updatedKeyValuePairs: TJavaHashMap<TObject, TObject>); overload; virtual;
        procedure deleteWhere(key: string; value: string); overload; virtual;
        procedure deleteWhere(keysAndValues: TJavaHashMap<TObject, TObject>); overload; virtual;
        procedure insert(values: TBasicArrayList); virtual;
        function getRow(keysAndValues: TJavaHashMap<TObject, TObject>): TJavaHashMap<TObject, TObject>; virtual;
        function getRows(keysAndValues: TJavaHashMap<TObject, TObject>): TBasicArrayList; overload; virtual;
        function getRows(keysAndValues: TJavaHashMap<TObject, TObject>; more: string): TBasicArrayList; overload; virtual;
        function getAllRows: TBasicArrayList; virtual;
        function getRowsWhereBetween(whereKeyValuePairs: TJavaHashMap<TObject, TObject>; betweenColumn: string; smallest: string; largest: string): TBasicArrayList; overload; virtual;
        function getRowsWhereBetween(betweenColumn: string; smallest: string; largest: string): TBasicArrayList; overload; virtual;
  end;

implementation
uses
  BasicArrayListD, StringMaker, StringUtil, Replace;


{AB:CODE}

procedure TAbSqlRow.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.EQUAL_QUOTE := '="';
  Self.ESCAPE_QUOTES := '\"';
  Self.GET_ROW := 'Row Value: ';
  Self.METHOD_GET_ROW := 'getRow()';
  Self.METHOD_GET_ROWS := 'getRows()';
  Self.METHOD_GET_ALL_ROWS := 'getAllRows()';
  Self.METHOD_UPDATE_WHERE := 'updateWhere()';
  Self.METHOD_GET_ROWS_WHERE_BETWEEN := 'getRowsWhereBetween()';
  Self.METHOD_DELETE_WHERE := 'deleteWhere()';
  Self.ROW_VALUE_LABEL := 'Row Value: ';
  Self.ROW_VALUES_LABEL := 'Row Values: ';
  Self.NO_RESULTS_IN_RESULT_SET := 'No Results in ResultSet';
  Self.COLUMN_NAME_LABEL := 'columnName: ';
  Self.INSERT_END := ''')';
end;
    

constructor TAbSqlRow.Create(databaseConnectionInfoInterface: TDbConnectionInfo);
begin
        inherited Create(databaseConnectionInfoInterface);
        InitFields;
end;
    

function TAbSqlRow.getValue(value: string): string;
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
    

procedure TAbSqlRow.updateWhere(key: string; value: string; updatedKeyValuePairs: TJavaHashMap<TObject, TObject>);
var
  stringBuffer: TStringMaker;
  keyArray: TArray<TObject>;
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
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.SET_);
        try
            keyArray := updatedKeyValuePairs.keySet().toArray();
            size := System.Length(keyArray);
            for i := 0 to size - 1 do begin
                columnName := keyArray[i].toString();
                stringBuffer.append(Self.commonSeps.SPACE);
                stringBuffer.append(columnName);
                stringBuffer.append(Self.EQUAL_QUOTE);
                columnValue := TJava.UnboxString(TJava.ToObject(updatedKeyValuePairs.get(TJava.Box(columnName))));
                if (columnValue) = ('') then begin
                    columnValue := Self.stringUtil.EMPTY_STRING;
                end else begin
                    columnValue := TReplace.Create(Self.sqlStrings.CLOSE_QUOTE, Self.ESCAPE_QUOTES).all(columnValue);
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
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_UPDATE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), TJava.Box(Self), Self.METHOD_UPDATE_WHERE, TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAbSqlRow.updateWhere(whereKeyValuePairs: TJavaHashMap<TObject, TObject>; updatedKeyValuePairs: TJavaHashMap<TObject, TObject>);
var
  stringBuffer: TStringMaker;
  keyArray: TArray<TObject>;
  size: Integer;
  columnName: string;
  columnValue: string;
  i: Integer;
  set_: ISet;
  keyArray2: TArray<TObject>;
  size2: Integer;
  key: string;
  value: string;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.UPDATE);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.SET_);
        try
            keyArray := updatedKeyValuePairs.keySet().toArray();
            size := System.Length(keyArray);
            for i := 0 to size - 1 do begin
                columnName := keyArray[i].toString();
                stringBuffer.append(Self.commonSeps.SPACE);
                stringBuffer.append(columnName);
                stringBuffer.append(Self.EQUAL_QUOTE);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.COLUMN_NAME_LABEL + columnName, TJava.Box(Self), Self.METHOD_UPDATE_WHERE);
                end;
                columnValue := TJava.UnboxString(TJava.ToObject(updatedKeyValuePairs.get(TJava.Box(columnName))));
                if (columnValue) = ('') then begin
                    columnValue := Self.stringUtil.EMPTY_STRING;
                end else begin
                    columnValue := TReplace.Create(Self.sqlStrings.CLOSE_QUOTE, Self.ESCAPE_QUOTES).all(columnValue);
                end;
                stringBuffer.append(Self.getValue(columnValue));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then begin
                    stringBuffer.append(Self.commonSeps.COMMA);
                end;
            end;
            stringBuffer.append(Self.sqlStrings.WHERE);
            set_ := whereKeyValuePairs.keySet();
            keyArray2 := set_.toArray();
            size2 := System.Length(keyArray2);
            for i := 0 to size2 - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(keyArray2[i]));
                value := TJava.UnboxString(TJava.ToObject(whereKeyValuePairs.get(TJava.Box(key))));
                begin
                    stringBuffer.append(key);
                    stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                    stringBuffer.append(Self.getValue(value));
                    stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                    if (i) < ((size2) - (1)) then begin
                        stringBuffer.append(Self.sqlStrings.AND_);
                    end;
                end;
            end;
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_UPDATE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), TJava.Box(Self), Self.METHOD_UPDATE_WHERE, TJava.Box(e));
            end;
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbSqlRow.deleteWhere(key: string; value: string);
var
  stringBuffer: TStringMaker;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.DELETE_);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        stringBuffer.append(key);
        stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append(value);
        stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
        try
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_DELETE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + stringBuffer.toString(), TJava.Box(Self), Self.METHOD_DELETE_WHERE, TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbSqlRow.deleteWhere(keysAndValues: TJavaHashMap<TObject, TObject>);
var
  stringBuffer: TStringMaker;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  i: Integer;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.DELETE_);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
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
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_DELETE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + stringBuffer.toString(), TJava.Box(Self), Self.METHOD_DELETE_WHERE, TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbSqlRow.insert(values: TBasicArrayList);
var
  stringBuffer: TStringMaker;
  value: string;
  i: Integer;
  sqlStatement: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.INSERT_INTO);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.VALUES);
        try
            for i := 0 to (values.size()) - (1) - 1 do begin
                value := Self.getValue(TJava.UnboxString(TJava.ToObject(values.get(i))));
                value := TReplace.Create(Self.sqlStrings.ESCAPE, Self.sqlStrings.DOUBLE_ESCAPE).all(value);
                stringBuffer.append(value);
                stringBuffer.append(Self.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
            end;
            value := Self.getValue(TJava.UnboxString(TJava.ToObject(values.get((values.size()) - (1)))));
            value := TReplace.Create(Self.sqlStrings.ESCAPE, Self.sqlStrings.DOUBLE_ESCAPE).all(value);
            stringBuffer.append(value);
            stringBuffer.append(Self.INSERT_END);
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + stringBuffer.toString(), TJava.Box(Self), INSERT, TJava.Box(e));
            end;
            end;
        end;
end;
    

function TAbSqlRow.getRow(keysAndValues: TJavaHashMap<TObject, TObject>): TJavaHashMap<TObject, TObject>;
var
  stringBuffer: TStringMaker;
  result_: TJavaHashMap<TObject, TObject>;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  index: Integer;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData_: TResultSetMetaData;
  columnCount: Integer;
  columnName: string;
  field: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
            result_ := nil;
            set_ := keysAndValues.keySet();
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for index := 0 to size - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(keyArray[index]));
                value := TJava.NewString(TJava.UnboxString(TJava.ToObject(keysAndValues.get(TJava.Box(key)))));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (index) < ((size) - (1)) then begin
                    stringBuffer.append(Self.sqlStrings.AND_);
                end;
            end;
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.sqlStrings.SQL_STATEMENT_LABEL) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_ROW);
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
                    Self.logUtil.putF(Self.ROW_VALUE_LABEL + result_.toString(), TJava.Box(Self), Self.METHOD_GET_ROW);
                end;
                Exit(result_);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.putF(Self.NO_RESULTS_IN_RESULT_SET, TJava.Box(Self), Self.METHOD_GET_ROW);
            end;
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), TJava.Box(Self), Self.METHOD_GET_ROW, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getRows(keysAndValues: TJavaHashMap<TObject, TObject>): TBasicArrayList;
begin
        Exit(Self.getRows(keysAndValues, TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TAbSqlRow.getRows(keysAndValues: TJavaHashMap<TObject, TObject>; more: string): TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  index: Integer;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData_: TResultSetMetaData;
  result_: TJavaHashMap<TObject, TObject>;
  columnCount: Integer;
  columnName: string;
  field: string;
  resultAsString: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
            rows := TBasicArrayListD.Create();
            set_ := keysAndValues.keySet();
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for index := 0 to size - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(keyArray[index]));
                value := TJava.NewString(TJava.UnboxString(TJava.ToObject(keysAndValues.get(TJava.Box(key)))));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (index) < ((size) - (1)) then begin
                    stringBuffer.append(Self.sqlStrings.AND_);
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF((Self.sqlStrings.SQL_STATEMENT_LABEL) + (stringBuffer), TJava.Box(Self), Self.METHOD_GET_ROWS);
            end;
            stringBuffer.append(more);
            sqlStatement := stringBuffer.toString();
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
                resultAsString := result_.toString();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.GET_ROW + resultAsString, TJava.Box(Self), Self.METHOD_GET_ROWS);
                end;
                rows.add(TJava.Box(result_));
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), TJava.Box(Self), Self.METHOD_GET_ROWS, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getAllRows: TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData_: TResultSetMetaData;
  result_: TJavaHashMap<TObject, TObject>;
  columnCount: Integer;
  columnName: string;
  field: string;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF((Self.sqlStrings.SQL_STATEMENT_LABEL) + (stringBuffer), TJava.Box(Self), Self.METHOD_GET_ALL_ROWS);
            end;
            rows := TBasicArrayListD.Create();
            sqlStatement := stringBuffer.toString();
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
                    Self.logUtil.putF(Self.ROW_VALUES_LABEL + result_.toString(), TJava.Box(Self), Self.METHOD_GET_ALL_ROWS);
                end;
                rows.add(TJava.Box(result_));
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), TJava.Box(Self), Self.METHOD_GET_ALL_ROWS, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getRowsWhereBetween(whereKeyValuePairs: TJavaHashMap<TObject, TObject>; betweenColumn: string; smallest: string; largest: string): TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  set_: ISet;
  key: string;
  value: string;
  keyArray: TArray<TObject>;
  size: Integer;
  index: Integer;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData_: TResultSetMetaData;
  result_: TJavaHashMap<TObject, TObject>;
  columnNames: TBasicArrayList;
  columnCount: Integer;
  columnName: string;
  field: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        try
            rows := TBasicArrayListD.Create();
            stringBuffer.append(Self.sqlStrings.WHERE);
            set_ := whereKeyValuePairs.keySet();
            
            
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for index := 0 to size - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(keyArray[index]));
                value := TJava.UnboxString(TJava.ToObject(whereKeyValuePairs.get(TJava.Box(key))));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                stringBuffer.append(Self.sqlStrings.AND_);
            end;
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.MORE_THAN_QUOTE);
            stringBuffer.append(smallest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            stringBuffer.append(Self.sqlStrings.AND_);
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.LESS_THAN_QUOTE);
            stringBuffer.append(largest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.sqlStrings.SQL_STATEMENT_LABEL) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_ROWS_WHERE_BETWEEN);
            end;
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData_ := rset.getMetaData();
            
            
            
            
            
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnNames := TBasicArrayListD.Create();
                columnCount := resultSetMetaData_.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData_.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(TJava.Box(columnName), TJava.Box(field));
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ROW_VALUE_LABEL + result_.toString(), TJava.Box(Self), Self.METHOD_GET_ROWS_WHERE_BETWEEN);
                end;
                rows.add(TJava.Box(result_));
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), TJava.Box(Self), Self.METHOD_GET_ROWS_WHERE_BETWEEN, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getRowsWhereBetween(betweenColumn: string; smallest: string; largest: string): TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData_: TResultSetMetaData;
  columnName: string;
  field: string;
  result_: TJavaHashMap<TObject, TObject>;
  columnNames: TBasicArrayList;
  columnCount: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        try
            rows := TBasicArrayListD.Create();
            stringBuffer.append(Self.sqlStrings.WHERE);
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.MORE_THAN_QUOTE);
            stringBuffer.append(smallest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            stringBuffer.append(Self.sqlStrings.AND_);
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.LESS_THAN_QUOTE);
            stringBuffer.append(largest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.sqlStrings.SQL_STATEMENT_LABEL) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_ROWS_WHERE_BETWEEN);
            end;
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData_ := rset.getMetaData();
            
            
            
            
            
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnNames := TBasicArrayListD.Create();
                columnCount := resultSetMetaData_.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData_.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(TJava.Box(columnName), TJava.Box(field));
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ROW_VALUE_LABEL + result_.toString(), TJava.Box(Self), Self.METHOD_GET_ROWS_WHERE_BETWEEN);
                end;
                rows.add(TJava.Box(result_));
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), TJava.Box(Self), Self.METHOD_GET_ROWS_WHERE_BETWEEN, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


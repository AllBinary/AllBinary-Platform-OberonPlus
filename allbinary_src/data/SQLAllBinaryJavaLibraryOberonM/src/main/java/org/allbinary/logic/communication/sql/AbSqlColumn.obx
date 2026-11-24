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
unit AbSqlColumn;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DbConnectionInfo, LogUtil, AbSqlTable;

type
  {AB:TYPES}
  TAbSqlColumn = class(TAbSqlTable)
  public
    logUtil: TLogUtil;
    LARGEST_INT_VALUE_IN_COLUMN: string;
    METHOD_GET_LARGETS_INTEGER_IN_COLUMN: string;
    METHOD_GET_COLUMN: string;
    METHOD_GET_COLUMN_WHERE: string;
    INVALID_RESULT: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface: TDbConnectionInfo);
        function getLargestIntegerInColumnWhere(columnName: string; key: string; value: string): string; virtual;
        function getColumn(columnName: string): TBasicArrayList; virtual;
        function getColumnWhere(columnName: string; key: string; value: string): TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD, StringMaker;


{AB:CODE}

procedure TAbSqlColumn.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.LARGEST_INT_VALUE_IN_COLUMN := ''#10'Largest Int Value in column: ';
  Self.METHOD_GET_LARGETS_INTEGER_IN_COLUMN := 'getLargestIntegerInColumn';
  Self.METHOD_GET_COLUMN := 'getColumn';
  Self.METHOD_GET_COLUMN_WHERE := 'getColumnWhere';
  Self.INVALID_RESULT := '-1';
end;
    

constructor TAbSqlColumn.Create(databaseConnectionInfoInterface: TDbConnectionInfo);
begin
        inherited Create(databaseConnectionInfoInterface);
        InitFields;
end;
    

function TAbSqlColumn.getLargestIntegerInColumnWhere(columnName: string; key: string; value: string): string;
var
  stringBuffer: TStringMaker;
  sqlStatement: string;
  largest: Integer;
  rset: TResultSet;
  intValue: Integer;
  largestAsString: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT);
        stringBuffer.append(columnName);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        stringBuffer.append(key);
        stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append(value);
        stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString();
        try
            largest := 0;
            rset := Self.executeSQLStatement(sqlStatement);
            while rset.next() do begin
                intValue := rset.getInt(columnName);
                if (intValue) > (largest) then begin
                    largest := intValue;
                end;
            end;
            largestAsString := largest.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.sqlStrings.SQL_STATEMENT_LABEL);
                stringBuffer.append(sqlStatement);
                stringBuffer.append(Self.LARGEST_INT_VALUE_IN_COLUMN);
                stringBuffer.append(largestAsString);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET_LARGETS_INTEGER_IN_COLUMN);
            end;
            Exit(largestAsString);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_LARGETS_INTEGER_IN_COLUMN, TJava.Box(e));
            end;
            Exit(Self.INVALID_RESULT);
            end;
        end;
end;
    

function TAbSqlColumn.getColumn(columnName: string): TBasicArrayList;
var
  column: TBasicArrayList;
  stringBuffer: TStringMaker;
  sqlStatement: string;
  rset: TResultSet;
  field: string;
begin
        column := TBasicArrayListD.Create();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT);
        stringBuffer.append(columnName);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        sqlStatement := stringBuffer.toString();
        try
            rset := Self.executeSQLStatement(sqlStatement);
            while rset.next() do begin
                field := rset.getObject(columnName).toString();
                column.add(TJava.Box(field));
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.sqlStrings.SQL_STATEMENT_LABEL);
                stringBuffer.append(sqlStatement);
                stringBuffer.append(Self.sqlStrings.COLUMN_VALUE);
                stringBuffer.append(column.toString());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET_COLUMN);
            end;
            Exit(column);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_COLUMN, TJava.Box(e));
            end;
            Exit(column);
            end;
        end;
end;
    

function TAbSqlColumn.getColumnWhere(columnName: string; key: string; value: string): TBasicArrayList;
var
  stringBuffer: TStringMaker;
  sqlStatement: string;
  column: TBasicArrayList;
  rset: TResultSet;
  field: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT);
        stringBuffer.append(columnName);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        stringBuffer.append(key);
        stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append(value);
        stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString();
        column := TBasicArrayListD.Create();
        
        
        try
            rset := Self.executeSQLStatement(sqlStatement);
            while rset.next() do begin
                field := rset.getObject(columnName).toString();
                column.add(TJava.Box(field));
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.sqlStrings.SQL_STATEMENT_LABEL);
                stringBuffer.append(sqlStatement);
                stringBuffer.append(Self.sqlStrings.COLUMN_VALUE);
                stringBuffer.append(column.toString());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET_COLUMN_WHERE);
            end;
            Exit(column);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_COLUMN_WHERE, TJava.Box(e));
            end;
            Exit(column);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit AbSqlBean;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DbConnectionInfo, LogUtil, AbSqlRow;

type
  {AB:TYPES}
  TAbSqlBean = class(TAbSqlRow)
  public
    logUtil: TLogUtil;
    METHOD_GET_FIELD: string;
    METHOD_IS_SUBSET_OF_ENTRY: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface: TDbConnectionInfo);
        function getField(key: string; value: string; requestedField: string): string; overload; virtual;
        function getField(keysAndValues: TJavaHashMap<TObject, TObject>; requestedField: string): string; overload; virtual;
        function isSubsetOfEntry(key: string; value: string; columnsAndValues: TJavaHashMap<TObject, TObject>): string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TAbSqlBean.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.METHOD_GET_FIELD := 'getField';
  Self.METHOD_IS_SUBSET_OF_ENTRY := 'isSubsetOfEntry';
end;
    

constructor TAbSqlBean.Create(databaseConnectionInfoInterface: TDbConnectionInfo);
begin
        inherited Create(databaseConnectionInfoInterface);
        InitFields;
end;
    

function TAbSqlBean.getField(key: string; value: string; requestedField: string): string;
var
  stringBuffer: TStringMaker;
  sqlStatement: string;
  field: string;
  rset: TResultSet;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT);
        stringBuffer.append(requestedField);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        stringBuffer.append(key);
        stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append(value);
        stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
        sqlStatement := stringBuffer.toString();
        try
            field := Self.stringUtil.EMPTY_STRING;
            rset := Self.executeSQLStatement(sqlStatement);
            while rset.next() do begin
                field := rset.getString(requestedField);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append(Self.sqlStrings.SQL_STATEMENT_LABEL);
                    stringBuffer.append(sqlStatement);
                    stringBuffer.append(Self.sqlStrings.FIELD_VALUE);
                    stringBuffer.append(field);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET_FIELD);
                end;
                Exit(field);
            end;
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_FIELD, TJava.Box(e));
            end;
            Exit(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement);
            end;
        end;
end;
    

function TAbSqlBean.getField(keysAndValues: TJavaHashMap<TObject, TObject>; requestedField: string): string;
var
  stringBuffer: TStringMaker;
  field: string;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  i: Integer;
  sqlStatement: string;
  rset: TResultSet;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT);
        stringBuffer.append(requestedField);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
            field := Self.stringUtil.EMPTY_STRING;
            set_ := keysAndValues.keySet();
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            
            
            for i := 0 to size - 1 do begin
                key := TJava.UnboxString(TJava.ToObject(keyArray[i]));
                value := TJava.NewString(TJava.UnboxString(TJava.ToObject(keysAndValues.get(TJava.Box(key)))));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(value);
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then begin
                    stringBuffer.append(Self.sqlStrings.AND_);
                end;
            end;
            sqlStatement := stringBuffer.toString();
            rset := Self.executeSQLStatement(sqlStatement);
            while rset.next() do begin
                field := rset.getString(requestedField);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append(Self.sqlStrings.SQL_STATEMENT_LABEL);
                    stringBuffer.append(sqlStatement);
                    stringBuffer.append(Self.sqlStrings.FIELD_VALUE);
                    stringBuffer.append(field);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET_FIELD);
                end;
                Exit(field);
            end;
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_GET_FIELD, TJava.Box(e));
            end;
            Exit(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement);
            end;
        end;
end;
    

function TAbSqlBean.isSubsetOfEntry(key: string; value: string; columnsAndValues: TJavaHashMap<TObject, TObject>): string;
var
  stringBuffer: TStringMaker;
  keyArray: TArray<TObject>;
  size: Integer;
  i: Integer;
  sqlStatement: string;
  rset: TResultSet;
  columnName: string;
  field: string;
  keyArray2: TArray<TObject>;
  size2: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT);
        try
            keyArray := columnsAndValues.keySet().toArray();
            size := System.Length(keyArray);
            stringBuffer.append(Self.commonSeps.SPACE);
            stringBuffer.append(key);
            for i := 0 to size - 1 do begin
                stringBuffer.append(Self.commonSeps.SPACE);
                stringBuffer.append(keyArray[i].toString());
            end;
            stringBuffer.append(Self.sqlStrings.FROM);
            stringBuffer.append(Self.getTableName());
            stringBuffer.append(Self.sqlStrings.WHERE);
            stringBuffer.append(key);
            stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
            stringBuffer.append(value);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString();
            rset := Self.executeSQLStatement(sqlStatement);
            
            
            while rset.next() do begin
                keyArray2 := columnsAndValues.keySet().toArray();
                size2 := System.Length(keyArray2);
                for i := 0 to size2 - 1 do begin
                    columnName := keyArray2[i].toString();
                    field := rset.getObject(columnName).toString();
                    if (CompareStr(field, TJava.UnboxString(TJava.ToObject(columnsAndValues.get(TJava.Box(columnName)))))) <> (0) then begin
                        Exit(Torg.allbinary.globals.GLOBALS2.NOTASUBSET);
                    end;
                end;
            end;
            if (rset.getRow()) <> (1) then begin
                Exit(Torg.allbinary.globals.GLOBALS2.NOTASUBSET);
            end else begin
                Exit(Torg.allbinary.globals.GLOBALS2.ISASUBSET);
            end;
        except
            on e: SysUtils.Exception do begin
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement, TJava.Box(Self), Self.METHOD_IS_SUBSET_OF_ENTRY, TJava.Box(e));
            end;
            Exit(TJava.ToString(Self.FAILED_SQL_STATEMENT) + sqlStatement);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


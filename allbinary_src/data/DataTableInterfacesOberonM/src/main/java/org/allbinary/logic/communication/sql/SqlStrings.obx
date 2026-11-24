// Generated Code Do Not Modify
// package org.allbinary.logic.communication.sql
unit SqlStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSqlStrings = class(TObject)
  public
    CREATE_DATABASE: string;
    DROP_TABLE: string;
    CREATE_TABLE: string;
    START: string;
    SELECT: string;
    FROM: string;
    SELECT_ALL: string;
    WHERE: string;
    AND_: string;
    UPDATE: string;
    SET_: string;
    SELECT_ALL_FROM: string;
    DELETE_: string;
    LIKE_QUOTE: string;
    INSERT_INTO: string;
    VALUES: string;
    ORDER_BY: string;
    COUNT: string;
    ASC: string;
    DESC: string;
    PRIMARY_KEY: string;
    END_: string;
    EQUAL_QUOTE: string;
    CLOSE_QUOTE: string;
    EQUAL_QUOTE_NO_SPACE: string;
    ESCAPE: string;
    DOUBLE_ESCAPE: string;
    MORE_THAN_QUOTE: string;
    LESS_THAN_QUOTE: string;
    SINGLE_QUOTE_COMMA_SEP: string;
    ID: string;
    SQL_STATEMENT_LABEL: string;
    COLUMN_VALUE: string;
    CREATE_RETURN: string;
    FIELD_VALUE: string;
    class var instance: TSqlStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TSqlStrings; static;
  end;

implementation
uses
  CommonSeps;


{AB:CODE}

procedure TSqlStrings.InitFields;
begin
  Self.CREATE_DATABASE := 'CREATE DATABASE ';
  Self.DROP_TABLE := 'DROP TABLE ';
  Self.CREATE_TABLE := 'CREATE TABLE ';
  Self.START := ' (';
  Self.SELECT := 'SELECT ';
  Self.FROM := ' FROM ';
  Self.SELECT_ALL := 'SELECT *';
  Self.WHERE := ' WHERE ';
  Self.AND_ := ' AND ';
  Self.UPDATE := 'UPDATE ';
  Self.SET_ := ' SET ';
  Self.SELECT_ALL_FROM := Self.SELECT_ALL + Self.FROM;
  Self.DELETE_ := 'DELETE';
  Self.LIKE_QUOTE := ' LIKE "';
  Self.INSERT_INTO := 'INSERT INTO ';
  Self.VALUES := ' VALUES (''';
  Self.ORDER_BY := 'ORDER BY';
  Self.COUNT := 'COUNT(';
  Self.ASC := 'ASC';
  Self.DESC := 'DESC';
  Self.PRIMARY_KEY := 'PRIMARY KEY(';
  Self.END_ := ') )';
  Self.EQUAL_QUOTE := ' = "';
  Self.CLOSE_QUOTE := TCommonSeps.getInstance().QUOTE;
  Self.EQUAL_QUOTE_NO_SPACE := '="';
  Self.ESCAPE := '\';
  Self.DOUBLE_ESCAPE := '\\';
  Self.MORE_THAN_QUOTE := ' > "';
  Self.LESS_THAN_QUOTE := ' < "';
  Self.SINGLE_QUOTE_COMMA_SEP := ''',''';
  Self.ID := 'ID';
  Self.SQL_STATEMENT_LABEL := 'SQL Statement: ';
  Self.COLUMN_VALUE := ''#10'Column Value: ';
  Self.CREATE_RETURN := ' Created Successfully';
  Self.FIELD_VALUE := ''#10'Field Value: ';
end;

constructor TSqlStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSqlStrings.getInstance: TSqlStrings;
begin
        Exit(TSqlStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TSqlStrings.instance := TSqlStrings.Create();
  {AB:END}

end.


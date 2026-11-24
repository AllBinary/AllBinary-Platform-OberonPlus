{
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
}
// Generated Code Do Not Modify
// package org.allbinary.logic.communication.sql
unit AbDatabaseManagement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DatabaseConnectionInfoInterface, DbConnectionInfo, LogUtil, StringMaker, CommonStrings, AbSqlBean;

type
  {AB:TYPES}
  TAbDatabaseManagement = class(TAbSqlBean)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    sqlCommandLog: TStringMaker;
    GRANT_ALL: string;
    DOT_STAR: string;
    TO_: string;
    AT_LOCALHOST: string;
    IDENTIFIED_BY: string;
    WITH_GRANT_OPTION: string;
    FAILED: string;
    GET_HOST_NAME: string;
    METHOD_ADD_USER: string;
    METHOD_ADD_USERS: string;
    METHOD_ADD_DB: string;
    METHOD_ADD_DATABASES: string;
    METHOD_ADD_TABLES: string;
    UNABLE_TO_CREATE_USER: string;
    UNABLE_TO_CREATE_DATABASE: string;
    UNABLE_TO_CREATE_TABLES: string;
    ADD_TABLES_RESULTS_LABEL: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface); overload;
        constructor Create(connectionInfo: TDbConnectionInfo); overload;
        function getHostName: string;
        function addDbUser(hostName: string; db: string; userName: string; password: string): Boolean; overload; virtual;
        function addDbUser(db: string; userName: string; password: string): Boolean; overload; virtual;
        function addDb(db: string): Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TAbDatabaseManagement.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.sqlCommandLog := TStringMaker.Create();
  Self.GRANT_ALL := 'GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON ';
  Self.DOT_STAR := '.*';
  Self.TO_ := ' TO ';
  Self.AT_LOCALHOST := '@localhost';
  Self.IDENTIFIED_BY := ' IDENTIFIED BY ''';
  Self.WITH_GRANT_OPTION := ''' WITH GRANT OPTION';
  Self.FAILED := 'Failed';
  Self.GET_HOST_NAME := 'getHostName()';
  Self.METHOD_ADD_USER := 'addUser()';
  Self.METHOD_ADD_USERS := 'addUsers()';
  Self.METHOD_ADD_DB := 'addDb()';
  Self.METHOD_ADD_DATABASES := 'addDatabases()';
  Self.METHOD_ADD_TABLES := 'addTables()';
  Self.UNABLE_TO_CREATE_USER := 'Unable to Create User: ';
  Self.UNABLE_TO_CREATE_DATABASE := 'Unable to Create Database: ';
  Self.UNABLE_TO_CREATE_TABLES := 'Unable to Create Tables';
  Self.ADD_TABLES_RESULTS_LABEL := 'Add Table Results: ';
end;
    

constructor TAbDatabaseManagement.Create(databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface);
begin
        inherited Create(TDbConnectionInfo(TJava.ToObject(databaseConnectionInfoInterface_)));
        InitFields;
end;
    

constructor TAbDatabaseManagement.Create(connectionInfo: TDbConnectionInfo);
begin
        inherited Create(connectionInfo);
        InitFields;
end;
    

function TAbDatabaseManagement.getHostName: string;
var
  addr: TInetAddress;
begin
        try
            addr := TInetAddress.getLocalHost();
            Exit(addr.getHostName());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.FAILED, TJava.Box(Self), Self.GET_HOST_NAME, TJava.Box(e));
            Exit(nil);
            end;
        end;
end;
    

// throws Exception
function TAbDatabaseManagement.addDbUser(hostName: string; db: string; userName: string; password: string): Boolean;
var
  stringBuffer: TStringMaker;
  sqlStatement: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.GRANT_ALL);
        stringBuffer.append(db);
        stringBuffer.append(Self.DOT_STAR);
        stringBuffer.append(Self.TO_);
        stringBuffer.append(userName);
        stringBuffer.append(hostName);
        stringBuffer.append(Self.IDENTIFIED_BY);
        stringBuffer.append(password);
        stringBuffer.append(Self.WITH_GRANT_OPTION);
        sqlStatement := stringBuffer.toString();
        Self.sqlCommandLog.append(sqlStatement);
        Self.sqlCommandLog.append(Self.commonSeps.NEW_LINE);
        inherited executeSQLStatement(sqlStatement);
        Exit(True);
end;
    

function TAbDatabaseManagement.addDbUser(db: string; userName: string; password: string): Boolean;
var
  hostName: string;
begin
        try
            Self.addDbUser(Self.AT_LOCALHOST, db, userName, password);
            hostName := Self.getHostName();
            if (hostName) <> ('') then begin
                Self.addDbUser(hostName, db, userName, password);
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.UNABLE_TO_CREATE_USER + userName, TJava.Box(Self), Self.METHOD_ADD_USER, TJava.Box(e));
            Exit(False);
            end;
        end;
end;
    

function TAbDatabaseManagement.addDb(db: string): Boolean;
var
  sqlStatement: string;
begin
        try
            sqlStatement := TJava.ToString(Self.sqlStrings.CREATE_DATABASE) + db;
            Self.sqlCommandLog.append(sqlStatement);
            Self.sqlCommandLog.append(Self.commonSeps.NEW_LINE);
            inherited executeSQLStatement(sqlStatement);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.UNABLE_TO_CREATE_DATABASE + db, TJava.Box(Self), Self.METHOD_ADD_DB, TJava.Box(e));
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


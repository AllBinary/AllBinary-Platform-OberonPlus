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
// package org.allbinary.logic.communication.sql.connection.pool
unit SqlConnectionPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StdUtil, LogUtil;

type
  {AB:TYPES}
  TSqlConnectionPool = class(TObject)
  public
    logUtil: TLogUtil;
    stdUtil: TStdUtil;
    connectionHashMap: TJavaHashMap<TObject, TObject>;
    FIRST_NEW_CONNECTION_CREATED: string;
    FIRST: string;
    NEW_CONNECTION_FOR: string;
    CREATED: string;
    NUMBER_OF_SQL_CONNECTIONS_FOR: string;
    NUMBER_OF_SQL_CONNECTION_VECTORS: string;
    IS_: string;
    CONNECTION_ALLREADY_CLOSED: string;
    METHOD_GET: string;
    METHOD_ADD: string;
    class var instance: TSqlConnectionPool;
    procedure InitFields;
        class function getInstance: TSqlConnectionPool; static;
        constructor Create;
        function get(url: string): IConnection; virtual;
        procedure add(url: string; sqlConnection: IConnection); virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StringMaker, Connection;


{AB:CODE}

procedure TSqlConnectionPool.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stdUtil := TStdUtil.getInstance();
  Self.connectionHashMap := nil;
  Self.FIRST_NEW_CONNECTION_CREATED := 'First New Connection Created: ';
  Self.FIRST := 'First ';
  Self.NEW_CONNECTION_FOR := 'New Connection For ';
  Self.CREATED := ' Created';
  Self.NUMBER_OF_SQL_CONNECTIONS_FOR := 'Number Of Sql Connections for: ';
  Self.NUMBER_OF_SQL_CONNECTION_VECTORS := 'Number Of Sql Connection Vectors: ';
  Self.IS_ := ' is ';
  Self.CONNECTION_ALLREADY_CLOSED := 'Connection AllReady Closed';
  Self.METHOD_GET := 'get()';
  Self.METHOD_ADD := 'add()';
end;
    

class function TSqlConnectionPool.getInstance: TSqlConnectionPool;
begin
        Exit(TSqlConnectionPool.instance);
end;
    

constructor TSqlConnectionPool.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws SQLException
function TSqlConnectionPool.get(url: string): IConnection;
var
  connectionVector: TBasicArrayList;
  stringBuffer: TStringMaker;
  size: Integer;
  sqlConnection: IConnection;
  i: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        if (Self.connectionHashMap) = (nil) then begin
            Self.connectionHashMap := Self.stdUtil.createHashMap();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL) then begin
                Self.logUtil.putF(Self.FIRST_NEW_CONNECTION_CREATED + url, TJava.Box(Self), Self.METHOD_GET);
            end;
            Exit(TDriverManager.getConnection(url));
        end else begin
            connectionVector := TBasicArrayList(TJava.ToObject(Self.connectionHashMap.get(TJava.Box(url))));
            if (connectionVector) = (nil) then begin
                connectionVector := TBasicArrayListD.Create();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(Self.FIRST);
                    stringBuffer.append(Self.NEW_CONNECTION_FOR);
                    stringBuffer.append(url);
                    stringBuffer.append(Self.CREATED);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET);
                end;
                Exit(TDriverManager.getConnection(url));
            end else if (connectionVector.size()) = (0) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL) then begin
                    Self.logUtil.putF(TStringMaker.Create().append(Self.NEW_CONNECTION_FOR).append(url).append(Self.CREATED).toString(), TJava.Box(Self), Self.METHOD_GET);
                end;
                Exit(TDriverManager.getConnection(url));
            end else begin
                stringBuffer := TStringMaker.Create();
                size := connectionVector.size();
                for i := 0 to size - 1 do begin
                    sqlConnection := (TJava.ToObject(connectionVector.get(i)) as IConnection);
                    if not (sqlConnection.isClosed()) then begin
                        connectionVector.remove(TJava.ToObject(sqlConnection));
                        Self.connectionHashMap.put(TJava.Box(url), TJava.Box(connectionVector));
                        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL) then begin
                            stringBuffer.delete_(0, stringBuffer.length());
                            stringBuffer.append(Self.NUMBER_OF_SQL_CONNECTIONS_FOR);
                            stringBuffer.append(url);
                            stringBuffer.append(Self.IS_);
                            stringBuffer.appendint(connectionVector.size());
                            Self.logUtil.putF(Self.NUMBER_OF_SQL_CONNECTION_VECTORS + IntToStr(Self.connectionHashMap.size()), TJava.Box(Self), Self.METHOD_GET);
                            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET);
                        end;
                        Exit((TJava.ToObject(sqlConnection) as IConnection));
                    end;
                end;
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.NEW_CONNECTION_FOR);
            stringBuffer.append(url);
            stringBuffer.append(Self.CREATED);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_GET);
        end;
        Exit(TDriverManager.getConnection(url));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws SQLException
procedure TSqlConnectionPool.add(url: string; sqlConnection: IConnection);
var
  connectionVector: TBasicArrayList;
  stringBuffer: TStringMaker;
begin
    TJava.MonitorEnter(Self);
    try
        if not (sqlConnection.isClosed()) then begin
            
            if (Self.connectionHashMap) = (nil) then begin
                Self.connectionHashMap := Self.stdUtil.createHashMap();
                connectionVector := TBasicArrayListD.Create();
                connectionVector.add(TJava.Box(sqlConnection));
            end else begin
                connectionVector := TBasicArrayList(TJava.ToObject(Self.connectionHashMap.get(TJava.Box(url))));
                if (connectionVector) = (nil) then begin
                    connectionVector := TBasicArrayListD.Create();
                end;
                connectionVector.add(TJava.Box(sqlConnection));
                Self.connectionHashMap.put(TJava.Box(url), TJava.Box(connectionVector));
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append(Self.NUMBER_OF_SQL_CONNECTIONS_FOR);
                stringBuffer.append(url);
                stringBuffer.append(Self.IS_);
                stringBuffer.appendint(connectionVector.size());
                Self.logUtil.putF(Self.NUMBER_OF_SQL_CONNECTION_VECTORS + IntToStr(Self.connectionHashMap.size()), TJava.Box(Self), Self.METHOD_ADD);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_ADD);
            end;
        end;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL) then begin
            Self.logUtil.putF(Self.CONNECTION_ALLREADY_CLOSED, TJava.Box(Self), Self.METHOD_ADD);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TSqlConnectionPool.instance := TSqlConnectionPool.Create();
  {AB:END}

end.


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
// package org.allbinary.business.installer
unit InitDbCrypted;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DatabaseConnectionInfoInterface, HistoryDbInitInfo, InventoryDbInitInfo, LogDbInitInfo, StaticPagesDbInitInfo, UserDbInitInfo, LogUtil, AbDatabaseManagement;

type
  {AB:TYPES}
  // Warning you must have sql root access
  TInitDbCrypted = class(TAbDatabaseManagement)
  public
    logUtil: TLogUtil;
    userDbInitInfo: TUserDbInitInfo;
    inventoryDbInitInfo: TInventoryDbInitInfo;
    historyDbInitInfo: THistoryDbInitInfo;
    staticpagesDbInitInfo: TStaticPagesDbInitInfo;
    logDbInitInfo: TLogDbInitInfo;
    SQL_FILE: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface);
        function addUsers: Boolean; virtual;
        function addDatabases: Boolean; virtual;
        function addTables: Boolean; virtual;
  end;

implementation
uses
  InitInfoEntity, DbConnectionInfo, StoreFrontsEntityFactory, LogTableEntityFactory, StaticPagesEntityFactory, TransformInfoEntityBuilder, UserEntityFactory, BillingAddressesEntityFactory, ShippingAddressesEntityFactory, InventoryEntityFactory, OrderHistoryEntityFactory, OrderItemsEntityFactory, PaymentEntityFactory, PaymentGatewayEntityFactory, TransactionEntityFactory, TransactionResultEntityFactory, QuoteRequestEntityFactory, AbDataOutputStream, DataOutputStreamFactory, AbFile, FileFactory, StringMaker;


{AB:CODE}

procedure TInitDbCrypted.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  Self.SQL_FILE := 'initWeblisket.sql';
end;
    

constructor TInitDbCrypted.Create(databaseConnectionInfoInterface_: IDatabaseConnectionInfoInterface);
begin
        inherited Create(TDbConnectionInfo(TJava.ToObject(databaseConnectionInfoInterface_)));
        InitFields;
end;
    

function TInitDbCrypted.addUsers: Boolean;
var
  CUSTOMERDB: string;
  CUSTOMERDBUSER: string;
  CUSTOMERDBPASSWORD: string;
  INVENTORYDB: string;
  INVENTORYDBUSER: string;
  INVENTORYDBPASSWORD: string;
  HISTORYDB: string;
  HISTORYDBUSER: string;
  HISTORYDBPASSWORD: string;
  STATICPAGESDB: string;
  STATICPAGESDBUSER: string;
  STATICPAGESDBPASSWORD: string;
  LOGDB: string;
  LOGDBUSER: string;
  LOGDBPASSWORD: string;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.METHOD_ADD_USERS);
            Self.userDbInitInfo := TUserDbInitInfo.Create();
            Self.inventoryDbInitInfo := TInventoryDbInitInfo.Create();
            Self.historyDbInitInfo := THistoryDbInitInfo.Create();
            Self.staticpagesDbInitInfo := TStaticPagesDbInitInfo.Create();
            Self.logDbInitInfo := TLogDbInitInfo.Create();
            CUSTOMERDB := Self.userDbInitInfo.getName();
            CUSTOMERDBUSER := Self.userDbInitInfo.getUserName();
            CUSTOMERDBPASSWORD := Self.userDbInitInfo.getPassword();
            if not (Self.addDbUser(CUSTOMERDB, CUSTOMERDBUSER, CUSTOMERDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + CUSTOMERDBUSER, TJava.Box(Self), Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            INVENTORYDB := Self.inventoryDbInitInfo.getName();
            INVENTORYDBUSER := Self.inventoryDbInitInfo.getUserName();
            INVENTORYDBPASSWORD := Self.inventoryDbInitInfo.getPassword();
            if not (Self.addDbUser(INVENTORYDB, INVENTORYDBUSER, INVENTORYDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + INVENTORYDBUSER, TJava.Box(Self), Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            HISTORYDB := Self.historyDbInitInfo.getName();
            HISTORYDBUSER := Self.historyDbInitInfo.getUserName();
            HISTORYDBPASSWORD := Self.historyDbInitInfo.getPassword();
            if not (Self.addDbUser(HISTORYDB, HISTORYDBUSER, HISTORYDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + HISTORYDBUSER, TJava.Box(Self), Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            STATICPAGESDB := Self.staticpagesDbInitInfo.getName();
            STATICPAGESDBUSER := Self.staticpagesDbInitInfo.getUserName();
            STATICPAGESDBPASSWORD := Self.staticpagesDbInitInfo.getPassword();
            if not (Self.addDbUser(STATICPAGESDB, STATICPAGESDBUSER, STATICPAGESDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + STATICPAGESDBUSER, TJava.Box(Self), Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            LOGDB := Self.logDbInitInfo.getName();
            LOGDBUSER := Self.logDbInitInfo.getUserName();
            LOGDBPASSWORD := Self.logDbInitInfo.getPassword();
            if not (Self.addDbUser(LOGDB, LOGDBUSER, LOGDBPASSWORD)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_USER) + LOGDBUSER, TJava.Box(Self), Self.METHOD_ADD_USERS);
                Exit(False);
            end;
            Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), Self.METHOD_ADD_USERS);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.METHOD_ADD_USERS, TJava.Box(e));
            Exit(True);
            end;
        end;
end;
    

function TInitDbCrypted.addDatabases: Boolean;
var
  CUSTOMERDB: string;
  INVENTORYDB: string;
  HISTORYDB: string;
  STATICPAGESDB: string;
  LOGDB: string;
  file_: TAbFile;
  idOutData: TAbDataOutputStream;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.METHOD_ADD_DATABASES);
            Self.userDbInitInfo := TUserDbInitInfo.Create();
            Self.inventoryDbInitInfo := TInventoryDbInitInfo.Create();
            Self.historyDbInitInfo := THistoryDbInitInfo.Create();
            Self.staticpagesDbInitInfo := TStaticPagesDbInitInfo.Create();
            Self.logDbInitInfo := TLogDbInitInfo.Create();
            CUSTOMERDB := Self.userDbInitInfo.getName();
            if not (Self.addDb(CUSTOMERDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + CUSTOMERDB, TJava.Box(Self), Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            INVENTORYDB := Self.inventoryDbInitInfo.getName();
            if not (Self.addDb(INVENTORYDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + INVENTORYDB, TJava.Box(Self), Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            HISTORYDB := Self.historyDbInitInfo.getName();
            if not (Self.addDb(HISTORYDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + HISTORYDB, TJava.Box(Self), Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            STATICPAGESDB := Self.staticpagesDbInitInfo.getName();
            if not (Self.addDb(STATICPAGESDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + STATICPAGESDB, TJava.Box(Self), Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            LOGDB := Self.logDbInitInfo.getName();
            if not (Self.addDb(LOGDB)) then begin
                Self.logUtil.putF(TJava.ToString(Self.UNABLE_TO_CREATE_DATABASE) + LOGDB, TJava.Box(Self), Self.METHOD_ADD_DATABASES);
                Exit(False);
            end;
            file_ := TFileFactory.getInstance().getInstance(Self.SQL_FILE);
            file_.createNewFile();
            idOutData := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(file_);
            idOutData.writeBytes(Self.sqlCommandLog.toString());
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.METHOD_ADD_DATABASES, TJava.Box(e));
            Exit(True);
            end;
        end;
end;
    

function TInitDbCrypted.addTables: Boolean;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.METHOD_ADD_TABLES);
            stringBuffer.append(TUserEntityFactory.getInstance().createTable());
            stringBuffer.append(TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance().createTable());
            stringBuffer.append(TBillingAddressesEntityFactory.getInstance().getInstance(Self.stringUtil.EMPTY_STRING).createTable());
            stringBuffer.append(TShippingAddressesEntityFactory.getInstance().getInstance(Self.stringUtil.EMPTY_STRING).createTable());
            stringBuffer.append(TPaymentEntityFactory.getInstance().getPaymentEntityInstance().createTable());
            stringBuffer.append(TQuoteRequestEntityFactory.getInstance().getQuoteRequestEntityInstance().createTable());
            stringBuffer.append(TOrderHistoryEntityFactory.getInstance().createTable());
            stringBuffer.append(TOrderItemsEntityFactory.getInstance().createTable());
            stringBuffer.append(TTransactionEntityFactory.getInstance().getTransactionEntityInstance().createTable());
            stringBuffer.append(TTransactionResultEntityFactory.getInstance().getTransactionResultEntityInstance().createTable());
            stringBuffer.append(TPaymentGatewayEntityFactory.getInstance().createTable());
            stringBuffer.append(TInventoryEntityFactory.getInstance().getInventoryEntityInstance().createTable());
            stringBuffer.append(TInitInfoEntity.Create().createTable());
            stringBuffer.append(TLogTableEntityFactory.getInstance().getLogTableEntityInstance().createTable());
            stringBuffer.append(TStaticPagesEntityFactory.getInstance().getStaticPagesEntityInstance().createTable());
            stringBuffer.append(TTransformInfoEntityBuilder.getInstance().createTable());
            Self.logUtil.putF(TJava.ToString(ADD_TABLES_RESULTS_LABEL) + stringBuffer.toString(), TJava.Box(Self), Self.METHOD_ADD_TABLES);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.METHOD_ADD_TABLES, TJava.Box(e));
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


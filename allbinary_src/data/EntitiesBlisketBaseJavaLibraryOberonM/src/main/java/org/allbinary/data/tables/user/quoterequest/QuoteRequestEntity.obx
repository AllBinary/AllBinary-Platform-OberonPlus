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
// package org.allbinary.data.tables.user.quoterequest
unit QuoteRequestEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, QuoteRequest, LogUtil, AbSqlBean, QuoteRequestEntityInterface;

type
  {AB:TYPES}
  TQuoteRequestEntity = class(TAbSqlBean, IQuoteRequestEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(values: TBasicArrayList); virtual;
        function get(userName: string; id: Integer): TQuoteRequest; virtual;
        function getIds(userName: string): TBasicArrayList; virtual;
        procedure deleteWhere(key: string; value: string); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
        procedure update(userName: string; updatedValues: TJavaHashMap<TObject, TObject>); virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, UserDbInitInfo, QuoteRequestData, UserData, StdUtil, StringMaker;


{AB:CODE}

procedure TQuoteRequestEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'quoterequest';
end;

function TQuoteRequestEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TQuoteRequestEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TQuoteRequestEntity.insert(values: TBasicArrayList);
begin
        try
            inherited insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), INSERT, TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
function TQuoteRequestEntity.get(userName: string; id: Integer): TQuoteRequest;
var
  row: TJavaHashMap<TObject, TObject>;
  quoteRequestHashMap: TJavaHashMap<TObject, TObject>;
begin
        row := TStdUtil.getInstance().createHashMap();
        row.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
        row.put(TJava.Box(TQuoteRequestData.getInstance().ID), TJava.Box(IntToStr(id)));
        quoteRequestHashMap := inherited getRow(row);
        if (quoteRequestHashMap) <> (nil) then begin
            Exit(TQuoteRequest.Create(quoteRequestHashMap));
        end else begin
            Exit(nil);
        end;
end;
    

function TQuoteRequestEntity.getIds(userName: string): TBasicArrayList;
begin
        Exit(inherited getColumnWhere(TQuoteRequestData.getInstance().ID, TUserData.USERNAME, userName));
end;
    

procedure TQuoteRequestEntity.deleteWhere(key: string; value: string);
begin
        try
            inherited deleteWhere(key, value);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'deleteWhere');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'deleteWhere', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TQuoteRequestEntity.createTableStatement: string;
var
  quoteRequestData_: TQuoteRequestData;
  stringBuffer: TStringMaker;
begin
        quoteRequestData_ := TQuoteRequestData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START);
        stringBuffer.append(quoteRequestData_.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TUserData.USERNAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(quoteRequestData_.PROJECT_INFO);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(quoteRequestData_.CUSTOMER_COMMENTS);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(quoteRequestData_.BUDGET);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(quoteRequestData_.TIMEFRAME);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(quoteRequestData_.COMMENTS);
        stringBuffer.append(Self.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().TIMECREATED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().LASTMODIFIED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.sqlStrings.PRIMARY_KEY);
        stringBuffer.append(quoteRequestData_.ID);
        stringBuffer.append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TQuoteRequestEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TQuoteRequestEntity.dropTable: string;
var
  result_: string;
begin
        result_ := TJava.NewString(inherited dropTable());
        Exit(result_);
end;
    

procedure TQuoteRequestEntity.update(userName: string; updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TUserData.USERNAME, userName, updatedValues);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.data.tables.user.commerce.money.payment.transaction
unit TransactionResultEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransactionResultInterface, LogUtil, AbSqlBean, TransactionResultEntityInterface;

type
  {AB:TYPES}
  TTransactionResultEntity = class(TAbSqlBean, ITransactionResultEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure remove(userName: string; orderNumber: string); virtual;
        procedure add(userName: string; orderNumber: string; transactionResultInterface_: ITransactionResultInterface); virtual;
        function getTransactionResultInterface(orderNumber: string): ITransactionResultInterface; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, EntryData, UserDbInitInfo, UserData, OrderData, PaymentTransactionKeysFactory, TransactionResult, StdUtil, StringMaker;


{AB:CODE}

procedure TTransactionResultEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'vresults';
end;

function TTransactionResultEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransactionResultEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TTransactionResultEntity.remove(userName: string; orderNumber: string);
var
  whereHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            whereHashMap := TStdUtil.getInstance().createHashMap();
            whereHashMap.put(TJava.Box(TOrderData.ID), TJava.Box(TJava.UnboxString(TJava.ToObject(orderNumber))));
            whereHashMap.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
            inherited deleteWhere(whereHashMap);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'remove');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'remove', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TTransactionResultEntity.add(userName: string; orderNumber: string; transactionResultInterface_: ITransactionResultInterface);
var
  values: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        try
            values := TBasicArrayListD.Create();
            values.add(TJava.Box(orderNumber));
            values.add(TJava.Box(userName));
            values.addAllList(transactionResultInterface_.getValues());
            calendar := TCalendar.getInstance();
            time := calendar.getTimeInMillis().toString();
            values.add(TJava.Box(time));
            values.add(TJava.Box(time));
            inherited insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'add');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'add', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TTransactionResultEntity.getTransactionResultInterface(orderNumber: string): ITransactionResultInterface;
var
  resultHashMap: TJavaHashMap<TObject, TObject>;
  updateKeyAndValue: TJavaHashMap<TObject, TObject>;
  transactionResult_: TTransactionResult;
begin
        try
            resultHashMap := TStdUtil.getInstance().createHashMap();
            updateKeyAndValue := TStdUtil.getInstance().createHashMap();
            updateKeyAndValue.put(TJava.Box(TOrderData.ID), TJava.Box(orderNumber));
            resultHashMap := inherited getRow(updateKeyAndValue);
            if (resultHashMap) <> (nil) then begin
                transactionResult_ := TTransactionResult.Create(resultHashMap);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'getTransactionResultInterface');
                end;
                Exit((TJava.ToObject(transactionResult_) as ITransactionResultInterface));
            end else begin
                Exit(nil);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'getTransactionResultInterface', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TTransactionResultEntity.createTableStatement: string;
var
  paymentTransactionKeysFactory_: TPaymentTransactionKeysFactory;
  stringBuffer: TStringMaker;
begin
        paymentTransactionKeysFactory_ := TPaymentTransactionKeysFactory.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(TOrderData.ID).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TUserData.USERNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.RESULT_.toString()).append(Self.sqlTypeStrings.MAX_INT_NOT_NULL).append(paymentTransactionKeysFactory_.PNREF.toString()).append(Self.sqlTypeStrings.TWELVE_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.RESPMSG.toString()).append(Self.sqlTypeStrings.BLOB_NOT_NULL).append(paymentTransactionKeysFactory_.AUTHCODE.toString()).append(Self.sqlTypeStrings.SIX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.AVSADDR.toString()).append(Self.sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.AVSZIP.toString()).append(Self.sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.ORIGRESULT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.STATUS.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.FRAUDCODE.toString()).append(Self.sqlTypeStrings.TWO_INT_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.FRAUDMSG.toString()).append(Self.sqlTypeStrings.MAX_INT_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.ERRCODE.toString()).append(Self.sqlTypeStrings.MAX_INT_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.SCORE.toString()).append(Self.sqlTypeStrings.THREE_INT_NOT_NULL);
        stringBuffer.append(paymentTransactionKeysFactory_.REASON1.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.REASON2.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.REASON3.toString());
        stringBuffer.append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.EXCEPTION1.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.EXCEPTION2.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.EXCEPTION3.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.EXCEPTION4.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.EXCEPTION5.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.EXCEPTION6.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory_.EXCEPTION7.toString()).append(Self.sqlTypeStrings.FOUR_INT_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(TOrderData.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TTransactionResultEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TTransactionResultEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


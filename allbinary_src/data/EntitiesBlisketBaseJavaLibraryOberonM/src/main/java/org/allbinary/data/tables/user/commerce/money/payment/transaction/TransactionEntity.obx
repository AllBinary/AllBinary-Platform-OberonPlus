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
unit TransactionEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PaymentTransactionInterface, LogUtil, AbSqlBean, TransactionEntityInterface;

type
  {AB:TYPES}
  TTransactionEntity = class(TAbSqlBean, ITransactionEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure remove(userName: string; orderNumber: string); virtual;
        procedure add(userName: string; orderNumber: string; paymentTransactionInterface_: IPaymentTransactionInterface); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, EntryData, UserDbInitInfo, UserData, OrderData, PaymentTransactionKeysFactory, StdUtil, StringMaker;


{AB:CODE}

procedure TTransactionEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'vtrans';
end;

function TTransactionEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransactionEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TTransactionEntity.remove(userName: string; orderNumber: string);
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
    

procedure TTransactionEntity.add(userName: string; orderNumber: string; paymentTransactionInterface_: IPaymentTransactionInterface);
var
  values: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        try
            values := TBasicArrayListD.Create();
            values.add(TJava.Box(orderNumber));
            values.add(TJava.Box(userName));
            values.addAllList(paymentTransactionInterface_.toVector());
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
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
    

function TTransactionEntity.createTableStatement: string;
var
  paymentTransactionKeysFactory_: TPaymentTransactionKeysFactory;
  stringBuffer: TStringMaker;
begin
        paymentTransactionKeysFactory_ := TPaymentTransactionKeysFactory.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(TOrderData.ID).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TUserData.USERNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.TRXTYPE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.TENDER.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.ACCT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.EXPDATE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.AMT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.AUTHCODE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.MICR.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.CHECKNUM.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.NAME.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.STREET.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.CITY.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.STATE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.ZIP.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.DL.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.EMAIL.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.COMMENT1.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.COMMENT2.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.ORIGID.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.PONUM.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.DESC.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.DESC1TO4.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.INVNUM.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SHIPTOZIP.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SWIPE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.TAXAMT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.COMMCARD.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.DUTYAMT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.FREIGHTAMT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.ORDERDATE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.TAXEXEMPT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.COUNTRYCODE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.CUSTCODE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.CVV2.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.ABA.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.ACCTTYPE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.DISCOUNT.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.FIRSTNAME.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.LASTNAME.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SHIPFROMZIP.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.PRENOTE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.CHKTYPE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.DOB.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.PHONENUM.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SS.toString()).append(' VARCHAR(30) NOT NULL,').append(paymentTransactionKeysFactory_.COMPANYNAME.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.COUNTRY.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SHIPTOCITY.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SHIPTOFIRSTNAME.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SHIPTOLASTNAME.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SHIPTOSTATE.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SHIPTOSTREET.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SPECIAL1.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SPECIAL2.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory_.SPECIAL3.toString()).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TEntryData.getInstance().LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(TOrderData.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TTransactionEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TTransactionEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


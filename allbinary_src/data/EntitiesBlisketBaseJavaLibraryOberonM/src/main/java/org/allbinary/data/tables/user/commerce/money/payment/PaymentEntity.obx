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
// package org.allbinary.data.tables.user.commerce.money.payment
unit PaymentEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, PaymentInterface, LogUtil, AbSqlBean, PaymentEntityInterface;

type
  {AB:TYPES}
  TPaymentEntity = class(TAbSqlBean, IPaymentEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getLastId(userName: string): string; virtual;
        procedure setDefault(userName: string; index: Integer); virtual;
        function get(userName: string): TBasicArrayList; virtual;
        function getDefault(userName: string): IPaymentInterface; virtual;
        procedure remove(userName: string; index: Integer); virtual;
        procedure add(userName: string; paymentInterface_: IPaymentInterface); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function drop: string; virtual;
        procedure insert(values: TBasicArrayList); virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, UserDbInitInfo, UserData, Payment, PaymentData, PaymentIdGenerator, StdUtil, SuperCrypt, StringMaker, StringUtil;


{AB:CODE}

procedure TPaymentEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'payment';
end;

function TPaymentEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPaymentEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

function TPaymentEntity.getLastId(userName: string): string;
begin
        Exit(inherited getLargestIntegerInColumnWhere(TPaymentData.ID, TUserData.USERNAME, userName));
end;
    

procedure TPaymentEntity.setDefault(userName: string; index: Integer);
var
  updateKeyAndValue: TJavaHashMap<TObject, TObject>;
  whereKeyAndValue: TJavaHashMap<TObject, TObject>;
  paymentInterface_: IPaymentInterface;
begin
        try
            updateKeyAndValue := TStdUtil.getInstance().createHashMap();
            whereKeyAndValue := TStdUtil.getInstance().createHashMap();
            whereKeyAndValue.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
            paymentInterface_ := Self.getDefault(userName);
            if (paymentInterface_) <> (nil) then begin
                updateKeyAndValue.put(TJava.Box(TEntryData.getInstance().DEFAULT), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
                whereKeyAndValue.put(TJava.Box(TPaymentData.ID), TJava.Box(paymentInterface_.getId()));
                inherited updateWhere(whereKeyAndValue, updateKeyAndValue);
            end;
            updateKeyAndValue.put(TJava.Box(TEntryData.getInstance().DEFAULT), TJava.Box(TEntryData.getInstance().DEFAULT));
            whereKeyAndValue.put(TJava.Box(TPaymentData.ID), TJava.Box(index.toString()));
            inherited updateWhere(whereKeyAndValue, updateKeyAndValue);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'setDefault');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'setDefault', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TPaymentEntity.get(userName: string): TBasicArrayList;
var
  paymentVector: TBasicArrayList;
  keyAndValue: TJavaHashMap<TObject, TObject>;
  paymentList: TBasicArrayList;
  size: Integer;
  paymentHashMap: TJavaHashMap<TObject, TObject>;
  payment_: TPayment;
  index: Integer;
begin
        try
            paymentVector := TBasicArrayListD.Create();
            keyAndValue := TStdUtil.getInstance().createHashMap();
            keyAndValue.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
            paymentList := inherited getRows(keyAndValue);
            size := paymentList.size();
            for index := 0 to size - 1 do begin
                paymentHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(paymentList.get(index)));
                payment_ := TPayment.Create(paymentHashMap);
                if (payment_) <> (nil) then begin
                    paymentVector.add(TJava.Box(payment_));
                end;
            end;
            Exit(paymentVector);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TPaymentEntity.getDefault(userName: string): IPaymentInterface;
var
  paymentHashMap: TJavaHashMap<TObject, TObject>;
  updateKeyAndValue: TJavaHashMap<TObject, TObject>;
  payment_: TPayment;
begin
        try
            paymentHashMap := TStdUtil.getInstance().createHashMap();
            updateKeyAndValue := TStdUtil.getInstance().createHashMap();
            updateKeyAndValue.put(TJava.Box(TEntryData.getInstance().DEFAULT), TJava.Box(TEntryData.getInstance().DEFAULT));
            updateKeyAndValue.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
            paymentHashMap := inherited getRow(updateKeyAndValue);
            if (paymentHashMap) <> (nil) then begin
                payment_ := TPayment.Create(paymentHashMap);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'getDefault');
                end;
                Exit((TJava.ToObject(payment_) as IPaymentInterface));
            end else begin
                Exit(nil);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'getDefault', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TPaymentEntity.remove(userName: string; index: Integer);
var
  whereHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            whereHashMap := TStdUtil.getInstance().createHashMap();
            whereHashMap.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
            whereHashMap.put(TJava.Box(TPaymentData.ID), TJava.Box(TJava.UnboxString(TJava.ToObject(index.toString()))));
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
    

procedure TPaymentEntity.add(userName: string; paymentInterface_: IPaymentInterface);
var
  vector: TBasicArrayList;
  random_: Integer;
  calendar: TCalendar;
  time: string;
begin
        try
            vector := TBasicArrayListD.Create();
            vector.add(TJava.Box(TPaymentIdGenerator.Create().getNext()));
            vector.add(TJava.Box(userName));
            vector.add(TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
            vector.add(TJava.Box(paymentInterface_.getName()));
            vector.add(TJava.Box(paymentInterface_.getType()));
            vector.add(TJava.Box(paymentInterface_.getExpiration()));
            random_ := TJavaRandom.Create().nextInt(TSuperCrypt.KEYMAX);
            vector.add(TJava.Box(TSuperCrypt.Create(random_).encrypt(paymentInterface_.getNumber())));
            vector.add(TJava.Box(random_.toString()));
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            vector.add(TJava.Box(time));
            inherited insert(vector);
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
    

function TPaymentEntity.createTableStatement: string;
var
  entryData_: TEntryData;
  stringBuffer: TStringMaker;
begin
        entryData_ := TEntryData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(TPaymentData.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append(TUserData.USERNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData_.DEFAULT).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPaymentData.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPaymentData.TYPE_).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPaymentData.EXPIRATION).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TPaymentData.NUMBER).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData_.ENCRYPTION).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData_.TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(TPaymentData.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TPaymentEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TPaymentEntity.drop: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TPaymentEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;
    

function TPaymentEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


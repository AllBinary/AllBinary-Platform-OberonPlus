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
// package org.allbinary.data.tables.user.commerce.money.payment.gateway
unit PaymentGatewayEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, PaymentGatewayInterface, BasicPaymentType, LogUtil, AbSqlBean, PaymentGatewayEntityInterface;

type
  {AB:TYPES}
  TPaymentGatewayEntity = class(TAbSqlBean, IPaymentGatewayEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure add(paymentGatewayInterface_: IPaymentGatewayInterface); virtual;
        procedure update(paymentGatewayInterface_: IPaymentGatewayInterface); virtual;
        function getPaymentGatewayInterface(storeName: string; paymentType: TBasicPaymentType): IPaymentGatewayInterface; virtual;
        function findPaymentTypeVectorByStore(storeName: string): TBasicArrayList; virtual;
        procedure remove(storeName: string; paymentType: TBasicPaymentType); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, EntryData, UserDbInitInfo, UserData, PaymentData, PaymentGatewayData, PaymentGatewayEncryptedMapping, PaymentGatewayInterfaceFactory, BasicPaymentTypeUtil, PaymentGatewayIdGenerator, StdUtil, SuperCrypt, StringMaker;


{AB:CODE}

procedure TPaymentGatewayEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'paymentgateways';
end;

function TPaymentGatewayEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPaymentGatewayEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

procedure TPaymentGatewayEntity.add(paymentGatewayInterface_: IPaymentGatewayInterface);
var
  vector: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'add');
            end;
            vector := TBasicArrayListD.Create();
            vector.add(TJava.Box(TPaymentGatewayIdGenerator.Create().getNext()));
            vector.addAllList(TPaymentGatewayEncryptedMapping.Create(paymentGatewayInterface_).toVector());
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            vector.add(TJava.Box(time));
            vector.add(TJava.Box(time));
            inherited insert(vector);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), 'add');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'add', TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TPaymentGatewayEntity.update(paymentGatewayInterface_: IPaymentGatewayInterface);
var
  calendar: TCalendar;
  time: string;
  whereKeyValuePairs: TJavaHashMap<TObject, TObject>;
  updateHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            paymentGatewayInterface_.setLastModified(time);
            whereKeyValuePairs := TStdUtil.getInstance().createHashMap();
            whereKeyValuePairs.put(TJava.Box(TStoreFrontData.getInstance().NAME.toString()), TJava.Box(paymentGatewayInterface_.getStoreName()));
            whereKeyValuePairs.put(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)), TJava.Box(paymentGatewayInterface_.getName()));
            if not TJava.IsNull(whereKeyValuePairs.get(TJava.Box(TEntryData.getInstance().TIMECREATED))) then begin
                raise SysUtils.Exception.Create('Don''t update TimeCreated for update');
            end;
            updateHashMap := TPaymentGatewayEncryptedMapping.Create(paymentGatewayInterface_).toHashMap();
            inherited updateWhere(whereKeyValuePairs, updateHashMap);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'update');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'update', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TPaymentGatewayEntity.getPaymentGatewayInterface(storeName: string; paymentType: TBasicPaymentType): IPaymentGatewayInterface;
var
  paymentGatewayHashMap: TJavaHashMap<TObject, TObject>;
  whereKeyAndValue: TJavaHashMap<TObject, TObject>;
  userName: string;
  password: string;
  special1: string;
  special2: string;
  special3: string;
  special4: string;
  special5: string;
  special6: string;
  special7: string;
  special8: string;
  special9: string;
  superCrypt_: TSuperCrypt;
  paymentGatewayInterface_: IPaymentGatewayInterface;
begin
        try
            paymentGatewayHashMap := TStdUtil.getInstance().createHashMap();
            whereKeyAndValue := TStdUtil.getInstance().createHashMap();
            whereKeyAndValue.put(TJava.Box(TStoreFrontData.getInstance().NAME.toString()), TJava.Box(storeName));
            whereKeyAndValue.put(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)), TJava.Box(paymentType.getName()));
            paymentGatewayHashMap := inherited getRow(whereKeyAndValue);
            if (paymentGatewayHashMap) <> (nil) then begin
                userName := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TUserData.USERNAME)))));
                password := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TUserData.PASSWORD)))));
                special1 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL1)))));
                special2 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL2)))));
                special3 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL3)))));
                special4 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL4)))));
                special5 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL5)))));
                special6 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL6)))));
                special7 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL7)))));
                special8 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL8)))));
                special9 := TJava.UnboxString(TJava.ToObject(paymentGatewayHashMap.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL9)))));
                superCrypt_ := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TUserData.USERNAME)), TJava.Box(superCrypt_.decrypt(userName)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TUserData.PASSWORD)), TJava.Box(superCrypt_.decrypt(password)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL1)), TJava.Box(superCrypt_.decrypt(special1)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL2)), TJava.Box(superCrypt_.decrypt(special2)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL3)), TJava.Box(superCrypt_.decrypt(special3)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL4)), TJava.Box(superCrypt_.decrypt(special4)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL5)), TJava.Box(superCrypt_.decrypt(special5)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL6)), TJava.Box(superCrypt_.decrypt(special6)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL7)), TJava.Box(superCrypt_.decrypt(special7)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL8)), TJava.Box(superCrypt_.decrypt(special8)));
                paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL9)), TJava.Box(superCrypt_.decrypt(special9)));
                paymentGatewayInterface_ := TPaymentGatewayInterfaceFactory.Create().getInstance(paymentGatewayHashMap);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'getPaymentGatewayInterface()');
                end;
                Exit(paymentGatewayInterface_);
            end else begin
                Exit(TPaymentGatewayInterfaceFactory.Create().getInstance(paymentType));
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put('Command Failed for paymentType: ' + paymentType.getName(), TJava.Box(Self), 'getPaymentGatewayInterface', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TPaymentGatewayEntity.findPaymentTypeVectorByStore(storeName: string): TBasicArrayList;
var
  paymentGatewayNameVector: TBasicArrayList;
  paymentGatewayVector: TBasicArrayList;
  size: Integer;
  paymentTypeString: string;
  paymentType: TBasicPaymentType;
  i: Integer;
begin
        try
            paymentGatewayNameVector := TBasicArrayListD.Create();
            paymentGatewayNameVector := inherited getColumnWhere(TJava.ToString(TPaymentGatewayData.NAME), TStoreFrontData.getInstance().NAME.toString(), storeName);
            if (paymentGatewayNameVector) <> (nil) then begin
                paymentGatewayVector := TBasicArrayListD.Create();
                size := paymentGatewayNameVector.size();
                for i := 0 to size - 1 do begin
                    paymentTypeString := TJava.UnboxString(TJava.ToObject(paymentGatewayNameVector.get(i)));
                    paymentType := TBasicPaymentTypeUtil.getInstance().get(paymentTypeString);
                    paymentGatewayVector.add(TJava.Box(paymentType));
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'findPaymentTypeVectorByStore()');
                end;
                Exit(paymentGatewayVector);
            end else begin
                Exit(TBasicArrayListD.Create());
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'findPaymentTypeVectorByStore', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TPaymentGatewayEntity.remove(storeName: string; paymentType: TBasicPaymentType);
var
  whereHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            whereHashMap := TStdUtil.getInstance().createHashMap();
            whereHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME.toString()), TJava.Box(storeName));
            whereHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)), TJava.Box(paymentType.getName()));
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
    

function TPaymentGatewayEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.ID));
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().ENABLE);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TStoreFrontData.getInstance().NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.NAME));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TPaymentData.METHOD);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.MODE));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.TESTPROTOCOL));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.TESTSERVER));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.TESTPORT));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.TESTPATH));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SERVERPROTOCOL));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SERVER));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SERVERPORT));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SERVERPATH));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TUserData.USERNAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TUserData.PASSWORD);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.TIMEOUT));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.PROXYPROTOCOL));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.PROXYSERVER));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.PROXYPORT));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.PROXYPATH));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.PROXYUSERNAME));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.PROXYPASSWORD));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.PROXYTIMEOUT));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL1));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL2));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL3));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL4));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL5));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL6));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL7));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL8));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.SPECIAL9));
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().LASTMODIFIED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(TEntryData.getInstance().TIMECREATED);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.sqlStrings.PRIMARY_KEY);
        stringBuffer.append(TJava.ToString(TPaymentGatewayData.ID));
        stringBuffer.append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TPaymentGatewayEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TPaymentGatewayEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


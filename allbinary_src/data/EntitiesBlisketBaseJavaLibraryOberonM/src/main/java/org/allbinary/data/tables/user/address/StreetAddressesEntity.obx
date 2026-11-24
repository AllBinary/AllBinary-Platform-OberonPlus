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
// package org.allbinary.data.tables.user.address
unit StreetAddressesEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StreetAddress, LogUtil, AbSqlBean, StreetAddressesEntityInterface;

type
  {AB:TYPES}
  TStreetAddressesEntity = class(TAbSqlBean, IStreetAddressesEntityInterface)
  public
    logUtil: TLogUtil;
    userName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(userName: string); overload;
        procedure remove(index: Integer); virtual;
        procedure add(address: TStreetAddress); overload; virtual;
        procedure add(address: TStreetAddress; index: string); overload;
        procedure update(address: TStreetAddress); virtual;
        function getLastId: string; virtual;
        function get: TBasicArrayList; overload; virtual;
        function get(index: Integer): TStreetAddress; overload; virtual;
        function getDefault: TStreetAddress; virtual;
        procedure setDefault(value: string); virtual;
        function getUserName: string; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function drop: string; virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, EntryData, UserDbInitInfo, UserData, StreetAddressData, TableDataFactory, StdUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TStreetAddressesEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TStreetAddressesEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStreetAddressesEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
end;
    

constructor TStreetAddressesEntity.Create(userName: string);
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.userName := userName;
end;
    

procedure TStreetAddressesEntity.remove(index: Integer);
var
  whereHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            whereHashMap := TStdUtil.getInstance().createHashMap();
            whereHashMap.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
            whereHashMap.put(TJava.Box(TStreetAddressData.ID), TJava.Box(TJava.UnboxString(TJava.ToObject(index.toString()))));
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
    

procedure TStreetAddressesEntity.add(address: TStreetAddress);
begin
        Self.add(address, TTableDataFactory.getInstance().INTEGER_MAX_VALUE_STRING);
end;
    

procedure TStreetAddressesEntity.add(address: TStreetAddress; index: string);
var
  values: TBasicArrayList;
  calendar: TCalendar;
  time: string;
begin
        try
            values := TBasicArrayListD.Create();
            values.add(TJava.Box(index));
            values.add(TJava.Box(Self.userName));
            values.add(TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
            values.add(TJava.Box(address.getName()));
            values.add(TJava.Box(address.getStreet()));
            values.add(TJava.Box(address.getCity()));
            values.add(TJava.Box(address.getState()));
            values.add(TJava.Box(address.getCode()));
            values.add(TJava.Box(address.getCountry()));
            calendar := TCalendar.getInstance();
            time := TJava.NewString(calendar.getTimeInMillis().toString());
            values.add(TJava.Box(time));
            inherited insert(values);
            Self.setDefault(Self.getLastId());
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
    

procedure TStreetAddressesEntity.update(address: TStreetAddress);
var
  addressHashMap: TJavaHashMap<TObject, TObject>;
  whereKeyValuePairs: TJavaHashMap<TObject, TObject>;
begin
        try
            addressHashMap := address.toHashMap();
            whereKeyValuePairs := TStdUtil.getInstance().createHashMap();
            whereKeyValuePairs.put(TJava.Box(TStreetAddressData.ID), TJava.Box(address.getId()));
            whereKeyValuePairs.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
            inherited updateWhere(whereKeyValuePairs, addressHashMap);
            Self.setDefault(address.getId());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'update');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'add', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TStreetAddressesEntity.getLastId: string;
begin
        Exit(inherited getLargestIntegerInColumnWhere(TStreetAddressData.ID, TUserData.USERNAME, Self.userName));
end;
    

function TStreetAddressesEntity.get: TBasicArrayList;
var
  streetAddressVector: TBasicArrayList;
  keyAndValue: TJavaHashMap<TObject, TObject>;
  addressList: TBasicArrayList;
  size: Integer;
  addressHashMap: TJavaHashMap<TObject, TObject>;
  streetAddress_: TStreetAddress;
  index: Integer;
begin
        try
            streetAddressVector := TBasicArrayListD.Create();
            keyAndValue := TStdUtil.getInstance().createHashMap();
            keyAndValue.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
            addressList := inherited getRows(keyAndValue);
            size := addressList.size();
            for index := 0 to size - 1 do begin
                addressHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(addressList.get(index)));
                streetAddress_ := TStreetAddress.Create(addressHashMap);
                if (streetAddress_) <> (nil) then begin
                    streetAddressVector.add(TJava.Box(streetAddress_));
                end;
            end;
            Exit(streetAddressVector);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStreetAddressesEntity.get(index: Integer): TStreetAddress;
var
  keyAndValue: TJavaHashMap<TObject, TObject>;
  addressHashMap: TJavaHashMap<TObject, TObject>;
begin
        try
            keyAndValue := TStdUtil.getInstance().createHashMap();
            keyAndValue.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
            keyAndValue.put(TJava.Box(TStreetAddressData.ID), TJava.Box(index.toString()));
            addressHashMap := inherited getRow(keyAndValue);
            if (addressHashMap) <> (nil) then begin
                Exit(TStreetAddress.Create(addressHashMap));
            end else begin
                Exit(nil);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

function TStreetAddressesEntity.getDefault: TStreetAddress;
var
  addressHashMap: TJavaHashMap<TObject, TObject>;
  updateKeyAndValue: TJavaHashMap<TObject, TObject>;
  streetAddress_: TStreetAddress;
begin
        try
            addressHashMap := TStdUtil.getInstance().createHashMap();
            updateKeyAndValue := TStdUtil.getInstance().createHashMap();
            updateKeyAndValue.put(TJava.Box(TStreetAddressData.DEFAULT), TJava.Box(TStreetAddressData.DEFAULT));
            updateKeyAndValue.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
            addressHashMap := inherited getRow(updateKeyAndValue);
            if (addressHashMap) <> (nil) then begin
                streetAddress_ := TStreetAddress.Create(addressHashMap);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'getDefault');
                end;
                Exit(streetAddress_);
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF('No Default Address Found', TJava.Box(Self), 'getDefault');
                end;
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
    

procedure TStreetAddressesEntity.setDefault(value: string);
var
  updateKeyAndValue: TJavaHashMap<TObject, TObject>;
  whereKeyAndValue: TJavaHashMap<TObject, TObject>;
  streetAddress_: TStreetAddress;
begin
        try
            updateKeyAndValue := TStdUtil.getInstance().createHashMap();
            whereKeyAndValue := TStdUtil.getInstance().createHashMap();
            whereKeyAndValue.put(TJava.Box(TUserData.USERNAME), TJava.Box(Self.userName));
            streetAddress_ := Self.getDefault();
            if (streetAddress_) <> (nil) then begin
                updateKeyAndValue.put(TJava.Box(TStreetAddressData.DEFAULT), TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
                whereKeyAndValue.put(TJava.Box(TStreetAddressData.ID), TJava.Box(streetAddress_.getId()));
                inherited updateWhere(whereKeyAndValue, updateKeyAndValue);
            end;
            whereKeyAndValue.put(TJava.Box(TStreetAddressData.ID), TJava.Box(value));
            updateKeyAndValue.put(TJava.Box(TStreetAddressData.DEFAULT), TJava.Box(TStreetAddressData.DEFAULT));
            inherited updateWhere(whereKeyAndValue, updateKeyAndValue);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), 'setDefault');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'setShippingAddress', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TStreetAddressesEntity.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TStreetAddressesEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.getTableName()).append(Self.sqlStrings.START).append(TStreetAddressData.ID).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append(TUserData.USERNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TStreetAddressData.DEFAULT).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TStreetAddressData.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TStreetAddressData.STREET).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TStreetAddressData.CITY).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TStreetAddressData.STATE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TStreetAddressData.CODE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TStreetAddressData.COUNTRY).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TEntryData.getInstance().TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(TStreetAddressData.ID).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TStreetAddressesEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TStreetAddressesEntity.drop: string;
begin
        Exit(inherited dropTable());
end;
    

function TStreetAddressesEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.data.tables.user
unit UserEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, UserInterface, UserRole, LogUtil, AbSqlBean, UserEntityInterface;

type
  {AB:TYPES}
  TUserEntity = class(TAbSqlBean, IUserEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    COMMAND_SUCCESS_FOR_USER: string;
    PASSWORD_LABEL: string;
    EQUALS: string;
    COMMAND_SUCCESS_BUT_LOGIN_FAILED: string;
    INVALID_PASSWORD_LABEL: string;
    NOT_EQUAL: string;
    END_QUOTES: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(values: TBasicArrayList); virtual;
        function getAdministrators: TBasicArrayList; virtual;
        function getStoreManagers(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList; virtual;
        function getCustomers: TBasicArrayList; virtual;
        function getUsersWithRole(userRole_: TUserRole): TBasicArrayList; virtual;
        function getUsers(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList; virtual;
        function getUser(userName: string): IUserInterface; virtual;
        procedure deleteWhere(key: string; value: string); virtual;
        function login(userName: string; password: string): string; virtual;
        procedure update(userName: string; updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTables: string; virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        function dropTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, EntryData, UserDbInitInfo, CreateUserFactory, UserData, User, UserRoleData, UserRoleFactory, GLOBALS2, StdUtil, SuperCrypt, StringMaker, CommonSeps;


{AB:CODE}

procedure TUserEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'user';
  Self.COMMAND_SUCCESS_FOR_USER := 'Command Success for user: ';
  Self.PASSWORD_LABEL := ' Password: ';
  Self.EQUALS := '==';
  Self.COMMAND_SUCCESS_BUT_LOGIN_FAILED := 'Command Success but login failed for user: ';
  Self.INVALID_PASSWORD_LABEL := ' Password: '#10'"';
  Self.NOT_EQUAL := '"!="';
  Self.END_QUOTES := TCommonSeps.getInstance().QUOTE;
end;

function TUserEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUserEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TUserEntity.insert(values: TBasicArrayList);
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
function TUserEntity.getAdministrators: TBasicArrayList;
begin
        Exit(Self.getUsersWithRole(TUserRoleFactory.getInstance().ADMINISTRATOR));
end;
    

// throws Exception
function TUserEntity.getStoreManagers(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  usersVector: TBasicArrayList;
  usersHashMapVector: TBasicArrayList;
  size: Integer;
  userHashMap: TJavaHashMap<TObject, TObject>;
  i: Integer;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        usersVector := TBasicArrayListD.Create();
        keysAndValues.put(TJava.Box(TJava.ToString(TUserRoleData.NAME)), TJava.Box(TUserRoleFactory.getInstance().STOREMANAGER.toString()));
        keysAndValues.put(TJava.Box(TUserData.PERMISSIONS), TJava.Box(storeFrontInterface_.getName()));
        usersHashMapVector := inherited getRows(keysAndValues);
        size := usersHashMapVector.size();
        for i := 0 to size - 1 do begin
            userHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(usersHashMapVector.get(i)));
            if (userHashMap) <> (nil) then begin
                usersVector.add(TJava.Box(TUser.Create(userHashMap)));
            end;
        end;
        Exit(usersVector);
end;
    

// throws Exception
function TUserEntity.getCustomers: TBasicArrayList;
begin
        Exit(Self.getUsersWithRole(TUserRoleFactory.getInstance().CUSTOMER));
end;
    

// throws Exception
function TUserEntity.getUsersWithRole(userRole_: TUserRole): TBasicArrayList;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  usersVector: TBasicArrayList;
  usersHashMapVector: TBasicArrayList;
  size: Integer;
  userHashMap: TJavaHashMap<TObject, TObject>;
  index: Integer;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        usersVector := TBasicArrayListD.Create();
        keysAndValues.put(TJava.Box(TJava.ToString(TUserRoleData.NAME)), TJava.Box(userRole_.toString()));
        usersHashMapVector := inherited getRows(keysAndValues);
        size := usersHashMapVector.size();
        for index := 0 to size - 1 do begin
            userHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(usersHashMapVector.get(index)));
            if (userHashMap) <> (nil) then begin
                usersVector.add(TJava.Box(TUser.Create(userHashMap)));
            end;
        end;
        Exit(usersVector);
end;
    

// throws Exception
function TUserEntity.getUsers(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  usersVector: TBasicArrayList;
  usersHashMapVector: TBasicArrayList;
  size: Integer;
  userHashMap: TJavaHashMap<TObject, TObject>;
  index: Integer;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        usersVector := TBasicArrayListD.Create();
        keysAndValues.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(storeFrontInterface_.getName()));
        usersHashMapVector := inherited getRows(keysAndValues);
        size := usersHashMapVector.size();
        for index := 0 to size - 1 do begin
            userHashMap := TJavaHashMap<TObject, TObject>(TJava.ToObject(usersHashMapVector.get(index)));
            if (userHashMap) <> (nil) then begin
                usersVector.add(TJava.Box(TUser.Create(userHashMap)));
            end;
        end;
        Exit(usersVector);
end;
    

// throws Exception
function TUserEntity.getUser(userName: string): IUserInterface;
var
  row: TJavaHashMap<TObject, TObject>;
  userHashMap: TJavaHashMap<TObject, TObject>;
begin
        row := TStdUtil.getInstance().createHashMap();
        row.put(TJava.Box(TUserData.USERNAME), TJava.Box(userName));
        userHashMap := inherited getRow(row);
        if (userHashMap) <> (nil) then begin
            Exit(TCreateUserFactory.getInstance(userHashMap));
        end else begin
            Exit(nil);
        end;
end;
    

procedure TUserEntity.deleteWhere(key: string; value: string);
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
    

function TUserEntity.login(userName: string; password: string): string;
var
  isUserNameAndPasswordCorrect: Integer;
  result_: string;
  encryption: string;
  stringBuffer: TStringMaker;
begin
        try
            isUserNameAndPasswordCorrect := 0;
            result_ := inherited getField(TUserData.USERNAME, userName, TUserData.PASSWORD);
            encryption := inherited getField(TUserData.USERNAME, userName, TEntryData.getInstance().ENCRYPTION);
            if ((encryption) <> ('')) and ((CompareStr(encryption, Self.stringUtil.EMPTY_STRING)) <> (0)) then begin
                isUserNameAndPasswordCorrect := CompareStr(result_, TSuperCrypt.Create(StrToInt(encryption)).encrypt(password));
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF('Command Success but login failed for user: ' + userName + ' because user did not exist', TJava.Box(Self), 'login');
                end;
                Exit(GLOBALS2.LOGINFAILED);
            end;
            if (isUserNameAndPasswordCorrect) = (0) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(Self.COMMAND_SUCCESS_FOR_USER);
                    stringBuffer.append(userName);
                    stringBuffer.append(Self.PASSWORD_LABEL);
                    stringBuffer.append(password);
                    stringBuffer.append(Self.EQUALS);
                    stringBuffer.append(result_);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'login');
                end;
                Exit(GLOBALS2.LOGINSUCCESS);
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append(Self.COMMAND_SUCCESS_BUT_LOGIN_FAILED);
                    stringBuffer.append(userName);
                    stringBuffer.append(Self.INVALID_PASSWORD_LABEL);
                    stringBuffer.append(TSuperCrypt.Create(StrToInt(encryption)).encrypt(password));
                    stringBuffer.append(Self.NOT_EQUAL);
                    stringBuffer.append(result_);
                    stringBuffer.append(Self.END_QUOTES);
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'login');
                end;
                Exit(GLOBALS2.LOGINFAILED);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'login', TJava.Box(e));
            end;
            Exit('Error');
            end;
        end;
end;
    

procedure TUserEntity.update(userName: string; updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TUserData.USERNAME, userName, updatedValues);
end;
    

function TUserEntity.dropTables: string;
begin
        Exit(inherited dropTable());
end;
    

function TUserEntity.createTableStatement: string;
var
  entryData_: TEntryData;
  stringBuffer: TStringMaker;
begin
        entryData_ := TEntryData.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(TUserData.USERNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TUserData.PREFIXNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.FIRSTNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.LASTNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.MIDDLENAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.SUFFIXNAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.COMPANY).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.POSITIONATCOMPANY).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.MAINEMAIL).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TUserData.SECONDARYEMAIL).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.HOMEPHONE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.CELLPHONE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.WORKPHONE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.OTHERCONTACT).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.ELECTRONICDEVICE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.FAX).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TJava.ToString(TUserRoleData.NAME)).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TUserData.CONFIGURATION).append(Self.sqlTypeStrings.BLOB_NOT_NULL).append(TUserData.PERMISSIONS).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(entryData_.ENCRYPTION).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(TUserData.SECRET).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(TUserData.PASSWORD).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData_.ENABLE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN).append(entryData_.TIMECREATED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData_.LASTMODIFIED).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(TUserData.USERNAME).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TUserEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

function TUserEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


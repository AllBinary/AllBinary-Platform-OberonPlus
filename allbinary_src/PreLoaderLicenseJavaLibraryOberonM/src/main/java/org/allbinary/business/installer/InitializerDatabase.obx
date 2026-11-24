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
unit InitializerDatabase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, DynamicInitDb;

type
  {AB:TYPES}
  TInitializerDatabase = class(TObject)
  public
    logUtil: TLogUtil;
    adminDbUserName: string;
    adminDbPassword: string;
    adminJdbcDriver: string;
    adminSchema: string;
    adminServer: string;
    adminPort: string;
    initDb: TDynamicInitDb;
    class var MAXDB: Integer;
    class var MAX: Integer;
    class var MIN: Integer;
    class var MINPASSWORD: Integer;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; map: IMap); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; initHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure getFormData(abeClientInformation: IAbeClientInformationInterface; hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function isJdbcDriverValid(jdbcDriverClassPathString: string): Boolean;
        function isValid: Boolean; virtual;
        function getJdbcDriverValidationInfo(jdbcDriver: string): string;
        function getInvalidInfo: string; virtual;
        function createUsers: Boolean; virtual;
        function createDatabases: Boolean; virtual;
        function createTables: Boolean; virtual;
        function getAdminDbUserName: string; virtual;
        procedure setAdminDbUserName(adminDbUserName: string); virtual;
        function getAdminDbPassword: string; virtual;
        procedure setAdminDbPassword(adminDbPassword: string); virtual;
        function getAdminJdbcDriver: string; virtual;
        procedure setAdminJdbcDriver(adminJdbcDriver: string); virtual;
        function getAdminSchema: string; virtual;
        procedure setAdminSchema(adminSchema: string); virtual;
        function getAdminServer: string; virtual;
        procedure setAdminServer(adminServer: string); virtual;
        function getAdminPort: string; virtual;
        procedure setAdminPort(adminPort: string); virtual;
  end;

implementation
uses
  InitializerData, DatabaseConnectionInfoInterface, DbConnectionInfo, StdUtil, StringMaker, StringUtil, CommonStrings;


{AB:CODE}

procedure TInitializerDatabase.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
end;
    

constructor TInitializerDatabase.Create(abeClientInformation: IAbeClientInformationInterface; map: IMap);
var
  stringBuffer: TStringMaker;
  hashMap_: TJavaHashMap<TObject, TObject>;
  keys: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  values: TArray<string>;
  index: Integer;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        hashMap_ := TStdUtil.getInstance().createHashMap();
        keys := map.keySet();
        keyArray := keys.toArray();
        size := System.Length(keyArray);
        for index := 0 to size - 1 do begin
            key := TJava.UnboxString(TJava.ToObject(keyArray[index]));
            values := TJava.UnboxArray<string>(TJava.ToObject(map.get(TJava.Box(key))));
            hashMap_.put(TJava.Box(TJava.NewString(key)), TJava.Box(TJava.NewString(values[0])));
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('key: ');
            stringBuffer.append(key);
            stringBuffer.append(' Value: ');
            stringBuffer.append(values[0]);
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'getFormData()');
        end;
        Self.getFormData(abeClientInformation, hashMap_);
end;
    

constructor TInitializerDatabase.Create(abeClientInformation: IAbeClientInformationInterface; initHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(abeClientInformation, initHashMap);
end;
    

procedure TInitializerDatabase.getFormData(abeClientInformation: IAbeClientInformationInterface; hashMap_: TJavaHashMap<TObject, TObject>);
var
  initializerData_: TInitializerData;
  dbConnectionInfo_: TDbConnectionInfo;
  adminDbName: string;
begin
        try
            initializerData_ := TInitializerData.getInstance();
            Self.setAdminDbUserName(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.DBUSER)))));
            Self.setAdminDbPassword(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.DBPASSWORD)))));
            Self.setAdminJdbcDriver(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.ADMINJDBCDRIVER)))));
            Self.setAdminSchema(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.ADMINSCHEMA)))));
            Self.setAdminServer(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.ADMINSERVER)))));
            Self.setAdminPort(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.ADMINPORT)))));
            dbConnectionInfo_ := TDbConnectionInfo.Create();
            adminDbName := TStringUtil.getInstance().EMPTY_STRING;
            dbConnectionInfo_.setJdbcDriver(Self.getAdminJdbcDriver());
            dbConnectionInfo_.setName(adminDbName);
            dbConnectionInfo_.setUserName(Self.getAdminDbUserName());
            dbConnectionInfo_.setPassword(Self.getAdminDbPassword());
            dbConnectionInfo_.setSchema(Self.getAdminSchema());
            dbConnectionInfo_.setServer(Self.getAdminServer());
            dbConnectionInfo_.setPort(Self.getAdminPort());
            Self.initDb := TDynamicInitDb.Create(abeClientInformation, (TJava.ToObject(dbConnectionInfo_) as IDatabaseConnectionInfoInterface));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to get form data', TJava.Box(Self), 'getFormData()', TJava.Box(e));
            end;
        end;
end;
    

function TInitializerDatabase.isJdbcDriverValid(jdbcDriverClassPathString: string): Boolean;
var
  commonStrings_: TCommonStrings;
begin
        try
            TClass.forName(jdbcDriverClassPathString).newInstance();
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInitializerDatabase.isValid: Boolean;
var
  isValid: Boolean;
  stringValidationUtil_: TObject;
begin
        isValid := True;
        if not (Self.isJdbcDriverValid(Self.adminJdbcDriver)) then begin
            isValid := False;
        end;
        stringValidationUtil_ := nil;
        if not (stringValidationUtil_.isValidRequired(Self.adminDbUserName, TInitializerDatabase.MIN, TInitializerDatabase.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.adminDbPassword, TInitializerDatabase.MINPASSWORD, TInitializerDatabase.MAX)) then begin
            isValid := False;
        end;
        Exit(isValid);
end;
    

function TInitializerDatabase.getJdbcDriverValidationInfo(jdbcDriver: string): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('The JDBC driver (');
        stringBuffer.append(jdbcDriver);
        stringBuffer.append(') you have provided is not valid.<br/>');
        Exit(stringBuffer.toString());
end;
    

function TInitializerDatabase.getInvalidInfo: string;
var
  isValid: Boolean;
  isJdbcDriversValid: Boolean;
  stringBuffer: TStringMaker;
  stringValidationUtil_: TObject;
begin
        isValid := True;
        isJdbcDriversValid := True;
        stringBuffer := TStringMaker.Create();
        if not (Self.isJdbcDriverValid(Self.adminJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.getAdminJdbcDriver()));
        end;
        stringValidationUtil_ := nil;
        if not (stringValidationUtil_.isValidRequired(Self.adminDbUserName, TInitializerDatabase.MIN, TInitializerDatabase.MAX)) then begin
            stringBuffer.append('Admin username should be < ' + IntToStr(TInitializerDatabase.MAX) + ' and > ' + IntToStr(TInitializerDatabase.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.adminDbPassword, TInitializerDatabase.MINPASSWORD, TInitializerDatabase.MAX)) then begin
            stringBuffer.append('Admin password should be < ' + IntToStr(TInitializerDatabase.MAX) + ' and > ' + IntToStr(TInitializerDatabase.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (isJdbcDriversValid) then begin
            stringBuffer.append(TInitializerData.getInstance().getJdbcDriverSolutionInfo());
        end;
        Exit(stringBuffer.toString());
end;
    

function TInitializerDatabase.createUsers: Boolean;
begin
        try
            Self.initDb.addUsers();
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to Create Users', TJava.Box(Self), 'createUsers()', TJava.Box(e));
            Exit(False);
            end;
        end;
end;
    

function TInitializerDatabase.createDatabases: Boolean;
begin
        try
            Self.initDb.addDatabases();
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to Create Databases', TJava.Box(Self), 'createDatabases()', TJava.Box(e));
            Exit(False);
            end;
        end;
end;
    

function TInitializerDatabase.createTables: Boolean;
begin
        try
            Self.initDb.addTables();
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to Create Tables', TJava.Box(Self), 'createTables()', TJava.Box(e));
            Exit(False);
            end;
        end;
end;
    

function TInitializerDatabase.getAdminDbUserName: string;
begin
        Exit(Self.adminDbUserName);
end;
    

procedure TInitializerDatabase.setAdminDbUserName(adminDbUserName: string);
begin
        Self.adminDbUserName := adminDbUserName;
end;
    

function TInitializerDatabase.getAdminDbPassword: string;
begin
        Exit(Self.adminDbPassword);
end;
    

procedure TInitializerDatabase.setAdminDbPassword(adminDbPassword: string);
begin
        Self.adminDbPassword := adminDbPassword;
end;
    

function TInitializerDatabase.getAdminJdbcDriver: string;
begin
        Exit(Self.adminJdbcDriver);
end;
    

procedure TInitializerDatabase.setAdminJdbcDriver(adminJdbcDriver: string);
begin
        Self.adminJdbcDriver := adminJdbcDriver;
end;
    

function TInitializerDatabase.getAdminSchema: string;
begin
        Exit(Self.adminSchema);
end;
    

procedure TInitializerDatabase.setAdminSchema(adminSchema: string);
begin
        Self.adminSchema := adminSchema;
end;
    

function TInitializerDatabase.getAdminServer: string;
begin
        Exit(Self.adminServer);
end;
    

procedure TInitializerDatabase.setAdminServer(adminServer: string);
begin
        Self.adminServer := adminServer;
end;
    

function TInitializerDatabase.getAdminPort: string;
begin
        Exit(Self.adminPort);
end;
    

procedure TInitializerDatabase.setAdminPort(adminPort: string);
begin
        Self.adminPort := adminPort;
end;

initialization
  {AB:INITIALIZATION}
  TInitializerDatabase.MAXDB := 30;
  TInitializerDatabase.MAX := 16;
  TInitializerDatabase.MIN := 4;
  TInitializerDatabase.MINPASSWORD := 0;
  {AB:END}

end.


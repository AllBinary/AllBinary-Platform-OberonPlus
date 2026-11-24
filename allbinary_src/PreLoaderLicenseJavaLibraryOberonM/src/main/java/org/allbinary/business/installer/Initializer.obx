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
unit Initializer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TInitializer = class(TObject)
  public
    logUtil: TLogUtil;
    userJdbcDriver: string;
    userName: string;
    userUserName: string;
    userPassword: string;
    userSchema: string;
    userServer: string;
    userPort: string;
    historyJdbcDriver: string;
    historyName: string;
    historyUserName: string;
    historyPassword: string;
    historySchema: string;
    historyServer: string;
    historyPort: string;
    logJdbcDriver: string;
    logName: string;
    logUserName: string;
    logPassword: string;
    logSchema: string;
    logServer: string;
    logPort: string;
    inventoryJdbcDriver: string;
    inventoryName: string;
    inventoryUserName: string;
    inventoryPassword: string;
    inventorySchema: string;
    inventoryServer: string;
    inventoryPort: string;
    staticPagesJdbcDriver: string;
    staticPagesName: string;
    staticPagesUserName: string;
    staticPagesPassword: string;
    staticPagesSchema: string;
    staticPagesServer: string;
    staticPagesPort: string;
    class var MAXDB: Integer;
    class var MAX: Integer;
    class var MIN: Integer;
    class var MINPASSWORD: Integer;
    procedure InitFields;
        constructor Create(map: IMap); overload;
        constructor Create(initHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure getFormData(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function isJdbcDriverValid(jdbcDriverClassPathString: string): Boolean;
        function isValid: Boolean; virtual;
        function getJdbcDriverValidationInfo(jdbcDriver: string): string;
        function getJdbcDriverSolutionInfo: string;
        function getInvalidInfo: string; virtual;
        procedure set_; virtual;
  end;

implementation
uses
  InitializerData, HistoryDbInitInfo, InventoryDbInitInfo, LogDbInitInfo, StaticPagesDbInitInfo, UserDbInitInfo, StdUtil, StringMaker, CommonStrings;


{AB:CODE}

procedure TInitializer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TInitializer.Create(map: IMap);
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
        Self.getFormData(hashMap_);
end;
    

constructor TInitializer.Create(initHashMap: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(initHashMap);
end;
    

procedure TInitializer.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
var
  initializerData_: TInitializerData;
begin
        try
            initializerData_ := TInitializerData.getInstance();
            Self.userJdbcDriver := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.CUSTOMERJDBCDRIVER))));
            Self.userName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.CUSTOMERNAME))));
            Self.userUserName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.CUSTOMERUSERNAME))));
            Self.userPassword := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.CUSTOMERPASSWORD))));
            Self.userSchema := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.CUSTOMERSCHEMA))));
            Self.userServer := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.CUSTOMERSERVER))));
            Self.userPort := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.CUSTOMERPORT))));
            Self.historyJdbcDriver := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.HISTORYJDBCDRIVER))));
            Self.historyName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.HISTORYNAME))));
            Self.historyUserName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.HISTORYUSERNAME))));
            Self.historyPassword := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.HISTORYPASSWORD))));
            Self.historySchema := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.HISTORYSCHEMA))));
            Self.historyServer := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.HISTORYSERVER))));
            Self.historyPort := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.HISTORYPORT))));
            Self.logJdbcDriver := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.LOGJDBCDRIVER))));
            Self.logName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.LOGNAME))));
            Self.logUserName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.LOGUSERNAME))));
            Self.logPassword := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.LOGPASSWORD))));
            Self.logSchema := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.LOGSCHEMA))));
            Self.logServer := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.LOGSERVER))));
            Self.logPort := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.LOGPORT))));
            Self.inventoryJdbcDriver := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.INVENTORYJDBCDRIVER))));
            Self.inventoryName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.INVENTORYNAME))));
            Self.inventoryUserName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.INVENTORYUSERNAME))));
            Self.inventoryPassword := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.INVENTORYPASSWORD))));
            Self.inventorySchema := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.INVENTORYSCHEMA))));
            Self.inventoryServer := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.INVENTORYSERVER))));
            Self.inventoryPort := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.INVENTORYPORT))));
            Self.staticPagesJdbcDriver := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.STATICPAGESJDBCDRIVER))));
            Self.staticPagesName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.STATICPAGESNAME))));
            Self.staticPagesUserName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.STATICPAGESUSERNAME))));
            Self.staticPagesPassword := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.STATICPAGESPASSWORD))));
            Self.staticPagesSchema := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.STATICPAGESSCHEMA))));
            Self.staticPagesServer := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.STATICPAGESSERVER))));
            Self.staticPagesPort := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(initializerData_.STATICPAGESPORT))));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Unable to get form data', TJava.Box(Self), 'getFormData()', TJava.Box(e));
            end;
        end;
end;
    

function TInitializer.isJdbcDriverValid(jdbcDriverClassPathString: string): Boolean;
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
    

function TInitializer.isValid: Boolean;
var
  isValid: Boolean;
  stringValidationUtil_: TObject;
begin
        isValid := True;
        if not (Self.isJdbcDriverValid(Self.userJdbcDriver)) then begin
            isValid := False;
        end;
        stringValidationUtil_ := nil;
        if not (stringValidationUtil_.isValidRequired(Self.userName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.userUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.userPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.historyJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.historyName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.historyUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.historyPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.logJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.logName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.logUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.logPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.inventoryJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.inventoryName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.inventoryUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.inventoryPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (Self.isJdbcDriverValid(Self.staticPagesJdbcDriver)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.staticPagesName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidRequired(Self.staticPagesUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            isValid := False;
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.staticPagesPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            isValid := False;
        end;
        Exit(isValid);
end;
    

function TInitializer.getJdbcDriverValidationInfo(jdbcDriver: string): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('The JDBC driver (');
        stringBuffer.append(jdbcDriver);
        stringBuffer.append(') you have provided is not valid.<br/>');
        Exit(stringBuffer.toString());
end;
    

function TInitializer.getJdbcDriverSolutionInfo: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>');
        stringBuffer.append('1. A JDBC driver you specified is not in your classpath.<br/>');
        stringBuffer.append('Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>');
        stringBuffer.append('Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>');
        stringBuffer.append('Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>');
        stringBuffer.append('2. The JDBC driver you specified does not exit.<br/>');
        stringBuffer.append('Solution: Get a JDBC driver. <br/>');
        stringBuffer.append('3. The JDBC driver you specified is not valid.<br/>');
        stringBuffer.append('Solution: Use a valid JDBC driver.<p/>');
        Exit(stringBuffer.toString());
end;
    

function TInitializer.getInvalidInfo: string;
var
  isJdbcDriversValid: Boolean;
  stringBuffer: TStringMaker;
  stringValidationUtil_: TObject;
begin
        isJdbcDriversValid := True;
        stringBuffer := TStringMaker.Create();
        if not (Self.isJdbcDriverValid(Self.userJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.userJdbcDriver));
        end;
        stringValidationUtil_ := nil;
        if not (stringValidationUtil_.isValidRequired(Self.userName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('User db name should be < ' + IntToStr(TInitializer.MAXDB) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.userUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('User db username should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.userPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('User DB password should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.historyJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.historyJdbcDriver));
        end;
        if not (stringValidationUtil_.isValidRequired(Self.historyName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('History db should be < ' + IntToStr(TInitializer.MAXDB) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.historyUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('History db username should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.historyPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('History db password should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.logJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.logJdbcDriver));
        end;
        if not (stringValidationUtil_.isValidRequired(Self.logName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('Log db should be < ' + IntToStr(TInitializer.MAXDB) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.logUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('Log db username should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.logPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('Log db password should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.inventoryJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.inventoryJdbcDriver));
        end;
        if not (stringValidationUtil_.isValidRequired(Self.inventoryName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('Inventory db should be < ' + IntToStr(TInitializer.MAXDB) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.inventoryUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('Inventory db username should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.inventoryPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('Inventory DB password should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (Self.isJdbcDriverValid(Self.staticPagesJdbcDriver)) then begin
            isJdbcDriversValid := False;
            stringBuffer.append(Self.getJdbcDriverValidationInfo(Self.staticPagesJdbcDriver));
        end;
        if not (stringValidationUtil_.isValidRequired(Self.staticPagesName, TInitializer.MIN, TInitializer.MAXDB)) then begin
            stringBuffer.append('Static Pages db should be < ' + IntToStr(TInitializer.MAXDB) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidRequired(Self.staticPagesUserName, TInitializer.MIN, TInitializer.MAX)) then begin
            stringBuffer.append('Static Pages db username should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MIN) + ' characters in length.<br />');
        end;
        if not (stringValidationUtil_.isValidNotRequired(Self.staticPagesPassword, TInitializer.MINPASSWORD, TInitializer.MAX)) then begin
            stringBuffer.append('Static Pages DB password should be < ' + IntToStr(TInitializer.MAX) + ' and > ' + IntToStr(TInitializer.MINPASSWORD) + ' characters in length.<br />');
        end;
        if not (isJdbcDriversValid) then begin
            stringBuffer.append(Self.getJdbcDriverSolutionInfo());
        end;
        Exit(stringBuffer.toString());
end;
    

// throws Exception
procedure TInitializer.set_;
var
  userDbInitInfo_: TUserDbInitInfo;
  historyDbInitInfo_: THistoryDbInitInfo;
  logDbInitInfo_: TLogDbInitInfo;
  staticPagesDbInitInfo_: TStaticPagesDbInitInfo;
  inventoryDbInitInfo_: TInventoryDbInitInfo;
begin
        Self.logUtil.putF('Creating DB connection files', TJava.Box(Self), 'set()');
        userDbInitInfo_ := TUserDbInitInfo.Create(False);
        userDbInitInfo_.setJdbcDriver(Self.userJdbcDriver);
        userDbInitInfo_.setName(Self.userName);
        userDbInitInfo_.setUserName(Self.userUserName);
        userDbInitInfo_.setPassword(Self.userPassword);
        userDbInitInfo_.setSchema(Self.userSchema);
        userDbInitInfo_.setServer(Self.userServer);
        userDbInitInfo_.setPort(Self.userPort);
        userDbInitInfo_.setHasRead(True);
        userDbInitInfo_.write();
        historyDbInitInfo_ := THistoryDbInitInfo.Create(False);
        historyDbInitInfo_.setJdbcDriver(Self.historyJdbcDriver);
        historyDbInitInfo_.setName(Self.historyName);
        historyDbInitInfo_.setUserName(Self.historyUserName);
        historyDbInitInfo_.setPassword(Self.historyPassword);
        historyDbInitInfo_.setSchema(Self.historySchema);
        historyDbInitInfo_.setServer(Self.historyServer);
        historyDbInitInfo_.setPort(Self.historyPort);
        historyDbInitInfo_.setHasRead(True);
        historyDbInitInfo_.write();
        logDbInitInfo_ := TLogDbInitInfo.Create(False);
        logDbInitInfo_.setJdbcDriver(Self.logJdbcDriver);
        logDbInitInfo_.setName(Self.logName);
        logDbInitInfo_.setUserName(Self.logUserName);
        logDbInitInfo_.setPassword(Self.logPassword);
        logDbInitInfo_.setSchema(Self.logSchema);
        logDbInitInfo_.setServer(Self.logServer);
        logDbInitInfo_.setPort(Self.logPort);
        logDbInitInfo_.setHasRead(True);
        logDbInitInfo_.write();
        staticPagesDbInitInfo_ := TStaticPagesDbInitInfo.Create(False);
        staticPagesDbInitInfo_.setJdbcDriver(Self.staticPagesJdbcDriver);
        staticPagesDbInitInfo_.setName(Self.staticPagesName);
        staticPagesDbInitInfo_.setUserName(Self.staticPagesUserName);
        staticPagesDbInitInfo_.setPassword(Self.staticPagesPassword);
        staticPagesDbInitInfo_.setSchema(Self.staticPagesSchema);
        staticPagesDbInitInfo_.setServer(Self.staticPagesServer);
        staticPagesDbInitInfo_.setPort(Self.staticPagesPort);
        staticPagesDbInitInfo_.setHasRead(True);
        staticPagesDbInitInfo_.write();
        inventoryDbInitInfo_ := TInventoryDbInitInfo.Create(False);
        inventoryDbInitInfo_.setJdbcDriver(Self.inventoryJdbcDriver);
        inventoryDbInitInfo_.setName(Self.inventoryName);
        inventoryDbInitInfo_.setUserName(Self.inventoryUserName);
        inventoryDbInitInfo_.setPassword(Self.inventoryPassword);
        inventoryDbInitInfo_.setSchema(Self.inventorySchema);
        inventoryDbInitInfo_.setServer(Self.inventoryServer);
        inventoryDbInitInfo_.setPort(Self.inventoryPort);
        inventoryDbInitInfo_.setHasRead(True);
        inventoryDbInitInfo_.write();
        Self.logUtil.putF('Created DB connection files', TJava.Box(Self), 'set()');
end;

initialization
  {AB:INITIALIZATION}
  TInitializer.MAXDB := 30;
  TInitializer.MAX := 16;
  TInitializer.MIN := 4;
  TInitializer.MINPASSWORD := 0;
  {AB:END}

end.


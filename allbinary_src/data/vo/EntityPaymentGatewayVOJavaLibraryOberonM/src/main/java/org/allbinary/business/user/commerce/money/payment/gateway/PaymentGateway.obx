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
// package org.allbinary.business.user.commerce.money.payment.gateway
unit PaymentGateway;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, PaymentGatewayInterface;

type
  {AB:TYPES}
  TPaymentGateway = class(TInterfacedObject, IPaymentGatewayInterface)
  public
    storeName: string;
    name: string;
    enable: string;
    paymentMethod: string;
    mode: string;
    testProtocol: string;
    testServer: string;
    testPort: string;
    testPath: string;
    serverProtocol: string;
    server: string;
    serverPort: string;
    serverPath: string;
    timeout: string;
    userName: string;
    password: string;
    proxyProtocol: string;
    proxyServer: string;
    proxyPort: string;
    proxyPath: string;
    proxyUserName: string;
    proxyPassword: string;
    proxyTimeout: string;
    special1: string;
    special2: string;
    special3: string;
    special4: string;
    special5: string;
    special6: string;
    special7: string;
    special8: string;
    special9: string;
    lastModified: string;
    timeEntered: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>);
        procedure getFormData(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
        function getStoreName: string; virtual;
        function getName: string; virtual;
        function getEnable: string; virtual;
        function getPaymentMethod: string; virtual;
        function getMode: string; virtual;
        function getTestProtocol: string; virtual;
        function getTestServer: string; virtual;
        function getTestPort: string; virtual;
        function getTestPath: string; virtual;
        function getServerProtocol: string; virtual;
        function getServer: string; virtual;
        function getServerPort: string; virtual;
        function getServerPath: string; virtual;
        function getUserName: string; virtual;
        function getPassword: string; virtual;
        function getProxyProtocol: string; virtual;
        function getProxyServer: string; virtual;
        function getProxyPath: string; virtual;
        function getProxyPort: string; virtual;
        function getProxyUserName: string; virtual;
        function getProxyPassword: string; virtual;
        function getTimeout: string; virtual;
        function getProxyTimeout: string; virtual;
        function getSpecial1: string; virtual;
        function getSpecial2: string; virtual;
        function getSpecial3: string; virtual;
        function getSpecial4: string; virtual;
        function getSpecial5: string; virtual;
        function getSpecial6: string; virtual;
        function getSpecial7: string; virtual;
        function getSpecial8: string; virtual;
        function getSpecial9: string; virtual;
        function getLastModified: string; virtual;
        function getTimeEntered: string; virtual;
        procedure setEnable(value: string); virtual;
        procedure setStoreName(value: string); virtual;
        procedure setName(value: string); virtual;
        procedure setPaymentMethod(value: string); virtual;
        procedure setMode(value: string); virtual;
        procedure setTestProtocol(value: string); virtual;
        procedure setTestServer(value: string); virtual;
        procedure setTestPort(value: string); virtual;
        procedure setTestPath(value: string); virtual;
        procedure setServerProtocol(value: string); virtual;
        procedure setServer(value: string); virtual;
        procedure setServerPort(value: string); virtual;
        procedure setServerPath(value: string); virtual;
        procedure setTimeout(value: string); virtual;
        procedure setUserName(value: string); virtual;
        procedure setPassword(value: string); virtual;
        procedure setProxyProtocol(value: string); virtual;
        procedure setProxyServer(value: string); virtual;
        procedure setProxyPort(value: string); virtual;
        procedure setProxyPath(value: string); virtual;
        procedure setProxyUserName(value: string); virtual;
        procedure setProxyPassword(value: string); virtual;
        procedure setProxyTimeout(value: string); virtual;
        procedure setSpecial1(value: string); virtual;
        procedure setSpecial2(value: string); virtual;
        procedure setSpecial3(value: string); virtual;
        procedure setSpecial4(value: string); virtual;
        procedure setSpecial5(value: string); virtual;
        procedure setSpecial6(value: string); virtual;
        procedure setSpecial7(value: string); virtual;
        procedure setSpecial8(value: string); virtual;
        procedure setSpecial9(value: string); virtual;
        procedure setLastModified(value: string); virtual;
        procedure setTimeEntered(value: string); virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; overload; virtual;
        function toHashMap(isEncrypted: Boolean): TJavaHashMap<TObject, TObject>; overload; virtual;
        function toVector: TBasicArrayList; overload; virtual;
        function toVector(isEncrypted: Boolean): TBasicArrayList; overload; virtual;
        function getKey: TObject; virtual;
  end;

implementation
uses
  PaymentGatewayData, PaymentGatewayPrimaryKey, BasicArrayListD, StoreFrontData, EntryData, UserData, PaymentData, StdUtil, SuperCrypt, StringUtil;


{AB:CODE}

procedure TPaymentGateway.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;

function TPaymentGateway.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPaymentGateway.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.getFormData(hashMap_);
end;
    

procedure TPaymentGateway.getFormData(hashMap_: TJavaHashMap<TObject, TObject>);
var
  stringUtil_: TStringUtil;
  empty: string;
begin
        stringUtil_ := TStringUtil.getInstance();
        empty := stringUtil_.EMPTY_STRING;
        Self.storeName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME.toString()))));
        Self.name := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)))));
        Self.enable := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEntryData.getInstance().ENABLE.toString())))));
        Self.paymentMethod := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentData.METHOD))))));
        Self.mode := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.MODE))))));
        Self.testProtocol := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTPROTOCOL))))));
        Self.testServer := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTSERVER))))));
        Self.testPort := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTPORT))))));
        Self.testPath := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTPATH)))));
        if (Self.testPath) = ('') then begin
            Self.testPath := empty;
        end;
        Self.serverProtocol := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVERPROTOCOL)))));
        if (Self.serverProtocol) = ('') then begin
            Self.serverProtocol := empty;
        end;
        Self.server := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVER)))));
        if (Self.server) = ('') then begin
            Self.server := empty;
        end;
        Self.serverPort := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVERPORT)))));
        if (Self.serverPort) = ('') then begin
            Self.serverPort := empty;
        end;
        Self.serverPath := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVERPATH)))));
        if (Self.serverPath) = ('') then begin
            Self.serverPath := empty;
        end;
        Self.userName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TUserData.USERNAME)))));
        if (Self.userName) = ('') then begin
            Self.userName := empty;
        end;
        Self.password := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TUserData.PASSWORD)))));
        if (Self.password) = ('') then begin
            Self.password := empty;
        end;
        Self.timeout := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.TIMEOUT)))));
        if (Self.timeout) = ('') then begin
            Self.timeout := empty;
        end;
        Self.proxyProtocol := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPROTOCOL)))));
        if (Self.proxyProtocol) = ('') then begin
            Self.proxyProtocol := empty;
        end;
        Self.proxyServer := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYSERVER)))));
        if (Self.proxyServer) = ('') then begin
            Self.proxyServer := empty;
        end;
        Self.proxyPort := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPORT)))));
        if (Self.proxyPort) = ('') then begin
            Self.proxyPort := empty;
        end;
        Self.proxyPath := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPATH)))));
        if (Self.proxyPath) = ('') then begin
            Self.proxyPath := empty;
        end;
        Self.proxyUserName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYUSERNAME)))));
        if (Self.proxyUserName) = ('') then begin
            Self.proxyUserName := empty;
        end;
        Self.proxyPassword := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPASSWORD)))));
        if (Self.proxyPassword) = ('') then begin
            Self.proxyPassword := empty;
        end;
        Self.proxyTimeout := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYTIMEOUT)))));
        if (Self.proxyTimeout) = ('') then begin
            Self.proxyTimeout := empty;
        end;
        Self.special1 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL1)))));
        if (Self.special1) = ('') then begin
            Self.special1 := empty;
        end;
        Self.special2 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL2)))));
        if (Self.special2) = ('') then begin
            Self.special2 := empty;
        end;
        Self.special3 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL3)))));
        if (Self.special3) = ('') then begin
            Self.special3 := empty;
        end;
        Self.special4 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL4)))));
        if (Self.special4) = ('') then begin
            Self.special4 := empty;
        end;
        Self.special5 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL5)))));
        if (Self.special5) = ('') then begin
            Self.special5 := empty;
        end;
        Self.special6 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL6)))));
        if (Self.special6) = ('') then begin
            Self.special6 := empty;
        end;
        Self.special7 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL7)))));
        if (Self.special7) = ('') then begin
            Self.special7 := empty;
        end;
        Self.special8 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL8)))));
        if (Self.special8) = ('') then begin
            Self.special8 := empty;
        end;
        Self.special9 := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL9)))));
        if (Self.special9) = ('') then begin
            Self.special9 := empty;
        end;
        Self.lastModified := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEntryData.getInstance().LASTMODIFIED.toString()))));
        if (Self.lastModified) = ('') then begin
            Self.lastModified := empty;
        end;
        Self.timeEntered := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TEntryData.getInstance().TIMECREATED.toString()))));
        if (Self.timeEntered) = ('') then begin
            Self.timeEntered := empty;
        end;
end;
    

function TPaymentGateway.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

function TPaymentGateway.getName: string;
begin
        Exit(Self.name);
end;
    

function TPaymentGateway.getEnable: string;
begin
        Exit(Self.enable);
end;
    

function TPaymentGateway.getPaymentMethod: string;
begin
        Exit(Self.paymentMethod);
end;
    

function TPaymentGateway.getMode: string;
begin
        Exit(Self.mode);
end;
    

function TPaymentGateway.getTestProtocol: string;
begin
        Exit(Self.testProtocol);
end;
    

function TPaymentGateway.getTestServer: string;
begin
        Exit(Self.testServer);
end;
    

function TPaymentGateway.getTestPort: string;
begin
        Exit(Self.testPort);
end;
    

function TPaymentGateway.getTestPath: string;
begin
        Exit(Self.testPath);
end;
    

function TPaymentGateway.getServerProtocol: string;
begin
        Exit(Self.serverProtocol);
end;
    

function TPaymentGateway.getServer: string;
begin
        Exit(Self.server);
end;
    

function TPaymentGateway.getServerPort: string;
begin
        Exit(Self.serverPort);
end;
    

function TPaymentGateway.getServerPath: string;
begin
        Exit(Self.serverPath);
end;
    

function TPaymentGateway.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TPaymentGateway.getPassword: string;
begin
        Exit(Self.password);
end;
    

function TPaymentGateway.getProxyProtocol: string;
begin
        Exit(Self.proxyProtocol);
end;
    

function TPaymentGateway.getProxyServer: string;
begin
        Exit(Self.proxyServer);
end;
    

function TPaymentGateway.getProxyPath: string;
begin
        Exit(Self.proxyPath);
end;
    

function TPaymentGateway.getProxyPort: string;
begin
        Exit(Self.proxyPort);
end;
    

function TPaymentGateway.getProxyUserName: string;
begin
        Exit(Self.proxyUserName);
end;
    

function TPaymentGateway.getProxyPassword: string;
begin
        Exit(Self.proxyPassword);
end;
    

function TPaymentGateway.getTimeout: string;
begin
        Exit(Self.timeout);
end;
    

function TPaymentGateway.getProxyTimeout: string;
begin
        Exit(Self.proxyTimeout);
end;
    

function TPaymentGateway.getSpecial1: string;
begin
        Exit(Self.special1);
end;
    

function TPaymentGateway.getSpecial2: string;
begin
        Exit(Self.special2);
end;
    

function TPaymentGateway.getSpecial3: string;
begin
        Exit(Self.special3);
end;
    

function TPaymentGateway.getSpecial4: string;
begin
        Exit(Self.special4);
end;
    

function TPaymentGateway.getSpecial5: string;
begin
        Exit(Self.special5);
end;
    

function TPaymentGateway.getSpecial6: string;
begin
        Exit(Self.special6);
end;
    

function TPaymentGateway.getSpecial7: string;
begin
        Exit(Self.special7);
end;
    

function TPaymentGateway.getSpecial8: string;
begin
        Exit(Self.special8);
end;
    

function TPaymentGateway.getSpecial9: string;
begin
        Exit(Self.special9);
end;
    

function TPaymentGateway.getLastModified: string;
begin
        Exit(Self.lastModified);
end;
    

function TPaymentGateway.getTimeEntered: string;
begin
        Exit(Self.timeEntered);
end;
    

procedure TPaymentGateway.setEnable(value: string);
begin
        Self.enable := value;
end;
    

procedure TPaymentGateway.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

procedure TPaymentGateway.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TPaymentGateway.setPaymentMethod(value: string);
begin
        Self.paymentMethod := value;
end;
    

procedure TPaymentGateway.setMode(value: string);
begin
        Self.mode := value;
end;
    

procedure TPaymentGateway.setTestProtocol(value: string);
begin
        Self.testProtocol := value;
end;
    

procedure TPaymentGateway.setTestServer(value: string);
begin
        Self.testServer := value;
end;
    

procedure TPaymentGateway.setTestPort(value: string);
begin
        Self.testPort := value;
end;
    

procedure TPaymentGateway.setTestPath(value: string);
begin
        Self.testPath := value;
end;
    

procedure TPaymentGateway.setServerProtocol(value: string);
begin
        Self.serverProtocol := value;
end;
    

procedure TPaymentGateway.setServer(value: string);
begin
        Self.server := value;
end;
    

procedure TPaymentGateway.setServerPort(value: string);
begin
        Self.serverPort := value;
end;
    

procedure TPaymentGateway.setServerPath(value: string);
begin
        Self.serverPath := value;
end;
    

procedure TPaymentGateway.setTimeout(value: string);
begin
        Self.timeout := value;
end;
    

procedure TPaymentGateway.setUserName(value: string);
begin
        Self.userName := value;
end;
    

procedure TPaymentGateway.setPassword(value: string);
begin
        Self.password := value;
end;
    

procedure TPaymentGateway.setProxyProtocol(value: string);
begin
        Self.proxyProtocol := value;
end;
    

procedure TPaymentGateway.setProxyServer(value: string);
begin
        Self.proxyServer := value;
end;
    

procedure TPaymentGateway.setProxyPort(value: string);
begin
        Self.proxyPort := value;
end;
    

procedure TPaymentGateway.setProxyPath(value: string);
begin
        Self.proxyPath := value;
end;
    

procedure TPaymentGateway.setProxyUserName(value: string);
begin
        Self.proxyUserName := value;
end;
    

procedure TPaymentGateway.setProxyPassword(value: string);
begin
        Self.proxyPassword := value;
end;
    

procedure TPaymentGateway.setProxyTimeout(value: string);
begin
        Self.proxyTimeout := value;
end;
    

procedure TPaymentGateway.setSpecial1(value: string);
begin
        Self.special1 := value;
end;
    

procedure TPaymentGateway.setSpecial2(value: string);
begin
        Self.special2 := value;
end;
    

procedure TPaymentGateway.setSpecial3(value: string);
begin
        Self.special3 := value;
end;
    

procedure TPaymentGateway.setSpecial4(value: string);
begin
        Self.special4 := value;
end;
    

procedure TPaymentGateway.setSpecial5(value: string);
begin
        Self.special5 := value;
end;
    

procedure TPaymentGateway.setSpecial6(value: string);
begin
        Self.special6 := value;
end;
    

procedure TPaymentGateway.setSpecial7(value: string);
begin
        Self.special7 := value;
end;
    

procedure TPaymentGateway.setSpecial8(value: string);
begin
        Self.special8 := value;
end;
    

procedure TPaymentGateway.setSpecial9(value: string);
begin
        Self.special9 := value;
end;
    

procedure TPaymentGateway.setLastModified(value: string);
begin
        Self.lastModified := value;
end;
    

procedure TPaymentGateway.setTimeEntered(value: string);
begin
        Self.timeEntered := value;
end;
    

// throws Exception
function TPaymentGateway.toHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.toHashMap(True));
end;
    

// throws Exception
function TPaymentGateway.toHashMap(isEncrypted: Boolean): TJavaHashMap<TObject, TObject>;
var
  paymentGatewayHashMap: TJavaHashMap<TObject, TObject>;
  superCrypt_: TSuperCrypt;
begin
        paymentGatewayHashMap := TStdUtil.getInstance().createHashMap();
        paymentGatewayHashMap.put(TJava.Box(TEntryData.getInstance().ENABLE), TJava.Box(Self.enable));
        paymentGatewayHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME.toString()), TJava.Box(Self.storeName));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.NAME)), TJava.Box(Self.getName()));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentData.METHOD)), TJava.Box(Self.paymentMethod));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.MODE)), TJava.Box(Self.mode));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTPROTOCOL)), TJava.Box(Self.testProtocol));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTSERVER)), TJava.Box(Self.testServer));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTPORT)), TJava.Box(Self.testPort));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.TESTPATH)), TJava.Box(Self.testPath));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVERPROTOCOL)), TJava.Box(Self.serverProtocol));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVER)), TJava.Box(Self.server));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVERPORT)), TJava.Box(Self.serverPort));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SERVERPATH)), TJava.Box(Self.serverPath));
        if isEncrypted then begin
            superCrypt_ := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TUserData.USERNAME)), TJava.Box(superCrypt_.encrypt(Self.userName)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TUserData.PASSWORD)), TJava.Box(superCrypt_.encrypt(Self.password)));
        end else begin
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TUserData.USERNAME)), TJava.Box(Self.userName));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TUserData.PASSWORD)), TJava.Box(Self.password));
        end;
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.TIMEOUT)), TJava.Box(Self.timeout));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPROTOCOL)), TJava.Box(Self.proxyProtocol));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYSERVER)), TJava.Box(Self.proxyServer));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPORT)), TJava.Box(Self.proxyPort));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPATH)), TJava.Box(Self.proxyPath));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYUSERNAME)), TJava.Box(Self.proxyUserName));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYPASSWORD)), TJava.Box(Self.proxyPassword));
        paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.PROXYTIMEOUT)), TJava.Box(Self.proxyTimeout));
        if isEncrypted then begin
            superCrypt_ := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL1)), TJava.Box(superCrypt_.encrypt(Self.special1)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL2)), TJava.Box(superCrypt_.encrypt(Self.special2)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL3)), TJava.Box(superCrypt_.encrypt(Self.special3)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL4)), TJava.Box(superCrypt_.encrypt(Self.special4)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL5)), TJava.Box(superCrypt_.encrypt(Self.special5)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL6)), TJava.Box(superCrypt_.encrypt(Self.special6)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL7)), TJava.Box(superCrypt_.encrypt(Self.special7)));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL8)), TJava.Box(superCrypt_.encrypt(Self.special8)));
        end else begin
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL1)), TJava.Box(Self.special1));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL2)), TJava.Box(Self.special2));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL3)), TJava.Box(Self.special3));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL4)), TJava.Box(Self.special4));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL5)), TJava.Box(Self.special5));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL6)), TJava.Box(Self.special6));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL7)), TJava.Box(Self.special7));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL8)), TJava.Box(Self.special8));
            paymentGatewayHashMap.put(TJava.Box(TJava.ToString(TPaymentGatewayData.SPECIAL9)), TJava.Box(Self.special9));
        end;
        paymentGatewayHashMap.put(TJava.Box(TEntryData.getInstance().LASTMODIFIED.toString()), TJava.Box(Self.lastModified));
        Exit(paymentGatewayHashMap);
end;
    

function TPaymentGateway.toVector: TBasicArrayList;
begin
        Exit(Self.toVector(True));
end;
    

function TPaymentGateway.toVector(isEncrypted: Boolean): TBasicArrayList;
var
  updateVector: TBasicArrayList;
  superCrypt_: TSuperCrypt;
begin
        updateVector := TBasicArrayListD.Create();
        updateVector.add(TJava.Box(Self.enable));
        updateVector.add(TJava.Box(Self.storeName));
        updateVector.add(TJava.Box(Self.getName()));
        updateVector.add(TJava.Box(Self.paymentMethod));
        updateVector.add(TJava.Box(Self.mode));
        updateVector.add(TJava.Box(Self.testProtocol));
        updateVector.add(TJava.Box(Self.testServer));
        updateVector.add(TJava.Box(Self.testPort));
        updateVector.add(TJava.Box(Self.testPath));
        updateVector.add(TJava.Box(Self.serverProtocol));
        updateVector.add(TJava.Box(Self.server));
        updateVector.add(TJava.Box(Self.serverPort));
        updateVector.add(TJava.Box(Self.serverPath));
        if isEncrypted then begin
            superCrypt_ := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.userName)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.password)));
        end else begin
            updateVector.add(TJava.Box(Self.userName));
            updateVector.add(TJava.Box(Self.password));
        end;
        updateVector.add(TJava.Box(Self.timeout));
        updateVector.add(TJava.Box(Self.proxyProtocol));
        updateVector.add(TJava.Box(Self.proxyServer));
        updateVector.add(TJava.Box(Self.proxyPort));
        updateVector.add(TJava.Box(Self.proxyPath));
        updateVector.add(TJava.Box(Self.proxyUserName));
        updateVector.add(TJava.Box(Self.proxyPassword));
        updateVector.add(TJava.Box(Self.proxyTimeout));
        if isEncrypted then begin
            superCrypt_ := TSuperCrypt.Create(TPaymentGatewayData.CRYPTNUM);
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special1)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special2)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special3)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special4)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special5)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special6)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special7)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special8)));
            updateVector.add(TJava.Box(superCrypt_.encrypt(Self.special9)));
        end else begin
            updateVector.add(TJava.Box(Self.special1));
            updateVector.add(TJava.Box(Self.special2));
            updateVector.add(TJava.Box(Self.special3));
            updateVector.add(TJava.Box(Self.special4));
            updateVector.add(TJava.Box(Self.special5));
            updateVector.add(TJava.Box(Self.special6));
            updateVector.add(TJava.Box(Self.special7));
            updateVector.add(TJava.Box(Self.special8));
            updateVector.add(TJava.Box(Self.special9));
        end;
        Exit(updateVector);
end;
    

// throws Exception
function TPaymentGateway.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(TPaymentGatewayPrimaryKey.Create(Self.getStoreName(), Self.getName()))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


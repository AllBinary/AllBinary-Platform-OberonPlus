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
// package org.allbinary.business.init.db
unit DbInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HttpData, Directory, CommonStrings, DbConnectionInfo;

type
  {AB:TYPES}
  TDbInitInfo = class(TDbConnectionInfo)
  public
    commonStrings: TCommonStrings;
    directory: TDirectory;
    httpData: THttpData;
    GET_URL: string;
    PACKAGE: string;
    initFileName: string;
    hasRead: Boolean;
    procedure InitFields;
        constructor Create(initFileName: string; read: Boolean);
        function getUrl: string; virtual;
        procedure write; virtual;
        procedure load;
        procedure setHasRead(value: Boolean); virtual;
        procedure updateIfNeeded;
        function getName: string; virtual;
        function getUserName: string; virtual;
        function getPassword: string; virtual;
        function getSchema: string; virtual;
        function getServer: string; virtual;
        function getPort: string; virtual;
  end;

implementation
uses
  FREEBLISKET_PATH_GLOBALS, URLGLOBALS, PreLogUtil, LogConfigTypeFactory, LogConfigTypes, AbDataInputStream, AbDataOutputStream, AbFileInputStream, DataOutputStreamFactory, StreamUtil, AbFile, AbPath, StringUtil, DatabaseEncoder, WeakCrypt;


{AB:CODE}

procedure TDbInitInfo.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.directory := TDirectory.getInstance();
  Self.httpData := THttpData.getInstance();
  Self.GET_URL := 'getUrl';
  Self.PACKAGE := FREEBLISKET_PATH_GLOBALS.getInstance().DBINITPATH;
  
  Self.hasRead := False;
end;
    

constructor TDbInitInfo.Create(initFileName: string; read: Boolean);
begin
        inherited Create();
        InitFields;
        Self.initFileName := initFileName;
        if read then begin
            Self.updateIfNeeded();
        end else begin
            Self.setHasRead(True);
        end;
end;
    

function TDbInitInfo.getUrl: string;
var
  url: string;
begin
        url := inherited getUrl();
        if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
            TPreLogUtil.put(TJava.ToString(Self.httpData.URL_LABEL) + url, TJava.Box(Self), Self.GET_URL);
        end;
        Exit(url);
end;
    

// throws Exception
procedure TDbInitInfo.write;
var
  PATH: TAbPath;
  FILEABPATH: TAbPath;
  newFile: TAbFile;
  dataOutputStream: TAbDataOutputStream;
  cryptedJdbcDriver: TArray<ShortInt>;
  cryptedName: TArray<ShortInt>;
  cryptedUserName: TArray<ShortInt>;
  cryptedPassword: TArray<ShortInt>;
  cryptedSchema: TArray<ShortInt>;
  cryptedServer: TArray<ShortInt>;
  cryptedPort: TArray<ShortInt>;
begin
        PATH := TAbPath.Create(TJava.ToString(TURLGLOBALS.getWebappPath()) + Self.PACKAGE, TStringUtil.getInstance().EMPTY_STRING);
        Self.directory.create_(PATH);
        FILEABPATH := TAbPath.Create(TJava.ToString(TURLGLOBALS.getWebappPath()) + Self.PACKAGE, Self.initFileName);
        try
            newFile := TAbFile.createAbFileFromAbPath(FILEABPATH);
            newFile.createNewFile();
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile);
            try
            begin
                cryptedJdbcDriver := TWeakCrypt.Create(1).encrypt(Self.getJdbcDriver()).getBytes();
                cryptedName := TWeakCrypt.Create(2).encrypt(Self.getName()).getBytes();
                cryptedUserName := TWeakCrypt.Create(3).encrypt(Self.getUserName()).getBytes();
                cryptedPassword := TWeakCrypt.Create(4).encrypt(Self.getPassword()).getBytes();
                cryptedSchema := TWeakCrypt.Create(5).encrypt(Self.getSchema()).getBytes();
                cryptedServer := TWeakCrypt.Create(6).encrypt(Self.getServer()).getBytes();
                cryptedPort := TWeakCrypt.Create(7).encrypt(Self.getPort()).getBytes();
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedJdbcDriver));
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedName));
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedUserName));
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedPassword));
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedSchema));
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedServer));
                dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedPort));
                Self.hasRead := False;
            end;
            finally
                TStreamUtil.getInstance().close(dataOutputStream);
            end;
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE('Failed Write: ' + FILEABPATH.toString(), TJava.Box(Self), 'write', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
procedure TDbInitInfo.load;
var
  FILEABPATH: TAbPath;
  file_: TAbFile;
  iFile: TAbFileInputStream;
  iData: TAbDataInputStream;
  decryptedJdbcDriver: string;
  decryptedName: string;
  decryptedUserName: string;
  decryptedPassword: string;
  decryptedSchema: string;
  decryptedServer: string;
  decryptedPort: string;
  stringUtil_: TStringUtil;
begin
        FILEABPATH := TAbPath.Create(TJava.ToString(TURLGLOBALS.getWebappPath()) + Self.PACKAGE, Self.initFileName);
        try
            file_ := TAbFile.createAbFileFromAbPath(FILEABPATH);
            if file_.isFile() then begin
                iFile := TAbFileInputStream.createFromAbFile(file_);
                iData := TAbDataInputStream.Create(iFile);
                try
                begin
                    decryptedJdbcDriver := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                    decryptedName := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                    decryptedUserName := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                    decryptedPassword := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                    decryptedSchema := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                    decryptedServer := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                    decryptedPort := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                    Self.setJdbcDriver(TWeakCrypt.Create(1).decrypt(decryptedJdbcDriver));
                    Self.setName(TWeakCrypt.Create(2).decrypt(decryptedName));
                    Self.setUserName(TWeakCrypt.Create(3).decrypt(decryptedUserName));
                    Self.setPassword(TWeakCrypt.Create(4).decrypt(decryptedPassword));
                    Self.setSchema(TWeakCrypt.Create(5).decrypt(decryptedSchema));
                    Self.setServer(TWeakCrypt.Create(6).decrypt(decryptedServer));
                    Self.setPort(TWeakCrypt.Create(7).decrypt(decryptedPort));
                    stringUtil_ := TStringUtil.getInstance();
                end;
                finally
                    TStreamUtil.getInstance().close(iData);
                end;
            end else begin
                Self.hasRead := False;
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
                    TPreLogUtil.put('Not a File - Failed Loading: ' + FILEABPATH.toString(), TJava.Box(Self), Self.commonStrings.LOAD);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE('Failed Loading: ' + FILEABPATH.toString(), TJava.Box(Self), Self.commonStrings.LOAD, TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TDbInitInfo.setHasRead(value: Boolean);
begin
        Self.hasRead := value;
end;
    

procedure TDbInitInfo.updateIfNeeded;
begin
        try
            if not (Self.hasRead) then begin
                Self.hasRead := True;
                Self.load();
            end;
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updateIfNeeded', TJava.Box(e));
            end;
            end;
        end;
end;
    

function TDbInitInfo.getName: string;
begin
        Self.updateIfNeeded();
        if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
            TPreLogUtil.put('Name: ' + inherited getName(), TJava.Box(Self), 'getName');
        end;
        Exit(inherited getName());
end;
    

function TDbInitInfo.getUserName: string;
begin
        Self.updateIfNeeded();
        if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
            TPreLogUtil.put('Name: ' + TJava.ToString(inherited getUserName()), TJava.Box(Self), 'getUserName');
        end;
        Exit(inherited getUserName());
end;
    

function TDbInitInfo.getPassword: string;
begin
        Self.updateIfNeeded();
        Exit(inherited getPassword());
end;
    

function TDbInitInfo.getSchema: string;
begin
        Self.updateIfNeeded();
        Exit(inherited getSchema());
end;
    

function TDbInitInfo.getServer: string;
begin
        Self.updateIfNeeded();
        Exit(inherited getServer());
end;
    

function TDbInitInfo.getPort: string;
begin
        Self.updateIfNeeded();
        Exit(inherited getPort());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


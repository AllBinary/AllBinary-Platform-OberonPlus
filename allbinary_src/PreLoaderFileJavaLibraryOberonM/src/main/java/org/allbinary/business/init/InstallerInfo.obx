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
// package org.allbinary.business.init
unit InstallerInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TInstallerInfo = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TInstallerInfo;
    class var INITFILENAME: string;
    class var PACKAGE: string;
    class var userName: string;
    class var password: string;
    class var hasRead: Boolean;
    procedure InitFields;
        constructor Create;
        procedure write; virtual;
        procedure read;
        class procedure setHasRead(value: Boolean); static;
        procedure setUserName(userName: string); virtual;
        procedure setPassword(password: string); virtual;
        procedure updateIfNeeded;
        function getUserName: string; virtual;
        function getPassword: string; virtual;
        function isValid(userName: string; password: string): Boolean; virtual;
  end;

implementation
uses
  PATH_GLOBALS, URLGLOBALS, AbDataInputStream, AbDataOutputStream, AbFileLocalInputStream, DataOutputStreamFactory, AbFile, AbPath, StringUtil, DatabaseEncoder, WeakCrypt;


{AB:CODE}

procedure TInstallerInfo.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TInstallerInfo.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TInstallerInfo.write;
var
  FILEABPATH: TAbPath;
  newFile: TAbFile;
  dataOutputStream: TAbDataOutputStream;
  cryptedUserName: TArray<ShortInt>;
  cryptedPassword: TArray<ShortInt>;
begin
    TJava.MonitorEnter(Self);
    try
        FILEABPATH := TAbPath.Create((TURLGLOBALS.getMainPath()) + (TInstallerInfo.PACKAGE), TInstallerInfo.INITFILENAME);
        try
            newFile := TAbFile.createAbFileFromAbPath(FILEABPATH);
            newFile.createNewFile();
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(newFile);
            cryptedUserName := TWeakCrypt.Create(1).encrypt(Self.getUserName()).getBytes();
            cryptedPassword := TWeakCrypt.Create(2).encrypt(Self.getPassword()).getBytes();
            dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedUserName));
            dataOutputStream.writeUTF(TDatabaseEncoder.encode(cryptedPassword));
            TInstallerInfo.hasRead := False;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                Self.logUtil.putF('Failed', TJava.Box(Self), 'write');
            end;
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TInstallerInfo.read;
var
  FILEABPATH: TAbPath;
  file_: TAbFile;
  iFile: TAbFileLocalInputStream;
  iData: TAbDataInputStream;
  decryptedUserName: string;
  decryptedPassword: string;
begin
    TJava.MonitorEnter(Self);
    try
        FILEABPATH := TAbPath.Create((TURLGLOBALS.getMainPath()) + (TInstallerInfo.PACKAGE), TInstallerInfo.INITFILENAME);
        try
            file_ := TAbFile.createAbFileFromAbPath(FILEABPATH);
            if file_.isFile() then begin
                iFile := TAbFileLocalInputStream.Create(file_);
                iData := TAbDataInputStream.Create(iFile);
                decryptedUserName := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                decryptedPassword := TJava.NewString(TDatabaseEncoder.decode(iData.readUTF()));
                Self.setUserName(TWeakCrypt.Create(1).decrypt(decryptedUserName));
                Self.setPassword(TWeakCrypt.Create(2).decrypt(decryptedPassword));
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRELOADER) then begin
                    Self.logUtil.putF('Not a File - Failed Loading: ' + FILEABPATH.toString(), TJava.Box(Self), 'read');
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                Self.logUtil.putF('Failed', TJava.Box(Self), 'read');
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

class procedure TInstallerInfo.setHasRead(value: Boolean);
begin
    TJava.MonitorEnter(nil);
    try
        TInstallerInfo.hasRead := value;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

procedure TInstallerInfo.setUserName(userName: string);
begin
        TInstallerInfo.userName := userName;
end;
    

procedure TInstallerInfo.setPassword(password: string);
begin
        TInstallerInfo.password := password;
end;
    

// throws Exception
procedure TInstallerInfo.updateIfNeeded;
begin
    TJava.MonitorEnter(Self);
    try
        if not (TInstallerInfo.hasRead) then begin
            TInstallerInfo.hasRead := True;
            Self.read();
            if ((TInstallerInfo.userName) = (nil)) or ((TInstallerInfo.password) = (nil)) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PRELOADER) then begin
                    Self.logUtil.putF('Failed', TJava.Box(Self), 'updateIfNeeded');
                end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TInstallerInfo.getUserName: string;
begin
        Self.updateIfNeeded();
        Exit(TInstallerInfo.userName);
end;
    

// throws Exception
function TInstallerInfo.getPassword: string;
begin
        Self.updateIfNeeded();
        Exit(TInstallerInfo.password);
end;
    

// throws Exception
function TInstallerInfo.isValid(userName: string; password: string): Boolean;
begin
        Self.updateIfNeeded();
        if ((((Self.userName) <> ('')) and ((CompareStr(Self.userName, userName)) = (0))) and ((Self.password) <> (''))) and ((CompareStr(Self.password, password)) = (0)) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TInstallerInfo.instance := TInstallerInfo.Create();
  TInstallerInfo.INITFILENAME := 'installerdata.dat';
  TInstallerInfo.PACKAGE := TPATH_GLOBALS.getInstance().INIT_PATH;
  TInstallerInfo.userName := TStringUtil.getInstance().EMPTY_STRING;
  TInstallerInfo.password := TStringUtil.getInstance().EMPTY_STRING;
  TInstallerInfo.hasRead := False;
  {AB:END}

end.


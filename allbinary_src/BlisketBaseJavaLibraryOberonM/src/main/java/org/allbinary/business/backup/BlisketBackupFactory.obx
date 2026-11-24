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
// package org.allbinary.business.backup
unit BlisketBackupFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Directory, StringUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TBlisketBackupFactory = class(TObject)
  public
    logUtil: TLogUtil;
    stringUtil: TStringUtil;
    commonStrings: TCommonStrings;
    directory: TDirectory;
    class var instance: TBlisketBackupFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBlisketBackupFactory; static;
        function getFileBasicArrayList(pathString: string): TBasicArrayList;
        procedure backup; overload; virtual;
        procedure backupViews; virtual;
        procedure backupResources; virtual;
        procedure backupJsps; virtual;
        procedure backup(fileBasicArrayList: TBasicArrayList; zipFile: string); overload; virtual;
  end;

implementation
uses
  StoreFrontInterface, StoreFrontsEntity, StoreFrontsEntityFactory, PATH_GLOBALS, URLGLOBALS, PreLogUtil, AbFile, ZipFileUtil, AbPath, StringMaker, BasicArrayListD;


{AB:CODE}

procedure TBlisketBackupFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.directory := TDirectory.getInstance();
end;

constructor TBlisketBackupFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBlisketBackupFactory.getInstance: TBlisketBackupFactory;
begin
        Exit(TBlisketBackupFactory.instance);
end;
    

// throws Exception
function TBlisketBackupFactory.getFileBasicArrayList(pathString: string): TBasicArrayList;
var
  path: TAbPath;
  file_: TAbFile;
begin
        path := TAbPath.Create(pathString, Self.stringUtil.EMPTY_STRING);
        file_ := TAbFile.createAbFileFromAbPath(path);
        Exit(Self.directory.search(file_, True));
end;
    

procedure TBlisketBackupFactory.backup;
var
  stringBuffer: TStringMaker;
  backupPath: string;
  path: TAbPath;
  fileBasicArrayList: TBasicArrayList;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'backup()');
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getWebappPath());
            stringBuffer.append(TPATH_GLOBALS.getInstance().BACKUP_PATH);
            backupPath := stringBuffer.toString();
            path := TAbPath.Create(backupPath, Self.stringUtil.EMPTY_STRING);
            fileBasicArrayList := Self.getFileBasicArrayList(backupPath);
            Self.backup(fileBasicArrayList, TJava.ToString(path.toFileSystemString()) + 'backup.zip');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backup()', TJava.Box(e));
            end;
        end;
end;
    

procedure TBlisketBackupFactory.backupViews;
var
  stringBuffer: TStringMaker;
  backupPath: string;
  path: TAbPath;
  fileBasicArrayList: TBasicArrayList;
  storeFrontsEntity_: TStoreFrontsEntity;
  storeFrontNamesBasicArrayList: TBasicArrayList;
  size: Integer;
  nextStore: string;
  viewsPath: string;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'backupViews()');
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getWebappPath());
            stringBuffer.append(TPATH_GLOBALS.getInstance().BACKUP_PATH);
            backupPath := stringBuffer.toString();
            path := TAbPath.Create(backupPath, Self.stringUtil.EMPTY_STRING);
            fileBasicArrayList := TBasicArrayListD.Create();
            storeFrontsEntity_ := TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance();
            storeFrontNamesBasicArrayList := storeFrontsEntity_.getStoreFrontNames();
            size := storeFrontNamesBasicArrayList.size();
            
            
            for index := 0 to size - 1 do begin
                nextStore := TJava.UnboxString(TJava.ToObject(storeFrontNamesBasicArrayList.get(index)));
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(TURLGLOBALS.getWebappPath());
                stringBuffer.append(TPATH_GLOBALS.getInstance().VIEWS_PATH);
                stringBuffer.append(nextStore);
                viewsPath := stringBuffer.toString();
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append('Backup Store Views: ');
                stringBuffer.append(nextStore);
                stringBuffer.append(' from: ');
                stringBuffer.append(viewsPath);
                TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), 'backupViews()');
                fileBasicArrayList.addAllList(Self.getFileBasicArrayList(viewsPath));
            end;
            Self.backup(fileBasicArrayList, TJava.ToString(path.toFileSystemString()) + 'backupViews.zip');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backupViews()', TJava.Box(e));
            end;
        end;
end;
    

procedure TBlisketBackupFactory.backupResources;
var
  stringBuffer: TStringMaker;
  backupPath: string;
  path: TAbPath;
  fileBasicArrayList: TBasicArrayList;
  storeFrontsEntity_: TStoreFrontsEntity;
  storeFrontNamesBasicArrayList: TBasicArrayList;
  size: Integer;
  nextStore: string;
  storeFrontInterface_: IStoreFrontInterface;
  resourcesPath: string;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'backupResources()');
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getWebappPath());
            stringBuffer.append(TPATH_GLOBALS.getInstance().BACKUP_PATH);
            backupPath := stringBuffer.toString();
            path := TAbPath.Create(backupPath, Self.stringUtil.EMPTY_STRING);
            fileBasicArrayList := TBasicArrayListD.Create();
            storeFrontsEntity_ := TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance();
            storeFrontNamesBasicArrayList := storeFrontsEntity_.getStoreFrontNames();
            size := storeFrontNamesBasicArrayList.size();
            
            
            
            for index := 0 to size - 1 do begin
                nextStore := TJava.UnboxString(TJava.ToObject(storeFrontNamesBasicArrayList.get(index)));
                storeFrontInterface_ := storeFrontsEntity_.getStoreFrontInterface(nextStore);
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(TURLGLOBALS.getWebappPath());
                stringBuffer.append(storeFrontInterface_.getCurrentHostNamePath());
                stringBuffer.append(storeFrontInterface_.getCategoryPath());
                resourcesPath := stringBuffer.toString();
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append('Backup Store Resrouces: ');
                stringBuffer.append(nextStore);
                stringBuffer.append(' from: ');
                stringBuffer.append(resourcesPath);
                TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), 'backupResources()');
                fileBasicArrayList.addAllList(Self.getFileBasicArrayList(resourcesPath));
            end;
            Self.backup(fileBasicArrayList, TJava.ToString(path.toFileSystemString()) + 'backupResources.zip');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backupResources()', TJava.Box(e));
            end;
        end;
end;
    

procedure TBlisketBackupFactory.backupJsps;
var
  stringBuffer: TStringMaker;
  backupPath: string;
  path: TAbPath;
  fileBasicArrayList: TBasicArrayList;
  storeFrontsEntity_: TStoreFrontsEntity;
  storeFrontNamesBasicArrayList: TBasicArrayList;
  size: Integer;
  nextStore: string;
  index: Integer;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'backupJsps()');
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getWebappPath());
            stringBuffer.append(TPATH_GLOBALS.getInstance().BACKUP_PATH);
            backupPath := stringBuffer.toString();
            path := TAbPath.Create(backupPath, Self.stringUtil.EMPTY_STRING);
            fileBasicArrayList := TBasicArrayListD.Create();
            storeFrontsEntity_ := TStoreFrontsEntityFactory.getInstance().getStoreFrontsEntityInstance();
            storeFrontNamesBasicArrayList := storeFrontsEntity_.getStoreFrontNames();
            size := storeFrontNamesBasicArrayList.size();
            
            for index := 0 to size - 1 do begin
                nextStore := TJava.UnboxString(TJava.ToObject(storeFrontNamesBasicArrayList.get(index)));
                TPreLogUtil.put('Backup Store Jsps: ' + nextStore, TJava.Box(Self), 'backupJsps()');
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(TURLGLOBALS.getWebappPath());
                stringBuffer.append(nextStore);
                fileBasicArrayList.addAllList(Self.getFileBasicArrayList(stringBuffer.toString()));
            end;
            Self.backup(fileBasicArrayList, TJava.ToString(path.toFileSystemString()) + 'backupJsps.zip');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backupJsps()', TJava.Box(e));
            end;
        end;
end;
    

procedure TBlisketBackupFactory.backup(fileBasicArrayList: TBasicArrayList; zipFile: string);
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('ZipFile: ');
            stringBuffer.append(zipFile);
            stringBuffer.append(' BasicArrayList: ');
            stringBuffer.appendint(fileBasicArrayList.size());
            TPreLogUtil.put('Creating Backup Zip File: ' + stringBuffer.toString(), TJava.Box(Self), 'backup()');
            TZipFileUtil.getInstance().create_(zipFile, fileBasicArrayList);
            Self.logUtil.putF('Created Backup Zip File', TJava.Box(Self), 'backup()');
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backup()', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TBlisketBackupFactory.instance := TBlisketBackupFactory.Create();
  {AB:END}

end.


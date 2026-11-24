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
// package org.allbinary.logic.io.file
unit FileUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, LogConfigTypeFactory, AbDataOutputStream, AbFileInputStream, StreamUtil, Directory, AbPath, CommonStrings, BasicArrayList, AbFile;

type
  {AB:TYPES}
  // data/init/views/TestStore/template/type/genericTemplateObjectConfig.xml
  TFileUtil = class(TObject)
  public
    logUtil: TLogUtil;
    directory: TDirectory;
    logConfigTypeFactory: TLogConfigTypeFactory;
    commonStrings: TCommonStrings;
    streamUtil: TStreamUtil;
    WRITE_LABEL: string;
    DATA_LABEL: string;
    WRITE_METHOD: string;
    class var instance: TFileUtil;
    procedure InitFields;
        class function getInstance: TFileUtil; static;
        constructor Create;
        procedure write(inputStream_: TInputStream; file_: TAbFile); overload; virtual;
        procedure write(inputStream_: TInputStream; dataOutputStream: TAbDataOutputStream); overload; virtual;
        procedure write(inputStream_: TInputStream; dataOutputStream: TAbDataOutputStream; buffer: TArray<ShortInt>); overload; virtual;
        procedure copy(dataInputStream: TAbFileInputStream; dataOutputStream: TAbDataOutputStream); overload;
        function fixPath(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string): TAbPath;
        procedure copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string); overload; virtual;
        procedure copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string; overwriteNewer: Boolean; overwriteAll: Boolean); overload; virtual;
        procedure copyToCloud(file_: TAbFile; outFile: TAbFile); overload; virtual;
        procedure copyToCloud(file_: TAbFile; outFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean); overload; virtual;
        function copyPrepare(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean): Boolean;
        procedure copyFile(fromFile: TAbFile; toFile: TAbFile); overload;
        procedure copyFile(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean); overload;
        class function getNewDirectory(fromFile: TAbFile): string; static;
        procedure copyDirectoryPortion(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; overwriteNewer: Boolean; overwriteAll: Boolean; current: Integer; total: Integer); virtual;
        procedure copyDirectory(fromFile: TAbFile; to_: TAbFile);
        function copy(fromAbPath: TAbPath; to_: TAbPath): Boolean; overload; virtual;
        function shouldSkip(file_: TAbFile; skipFiles: TArray<string>): Boolean; virtual;
        procedure write(filePath: string; string_: string); overload; virtual;
        function loadFileAsList(file_: TAbFile; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList; virtual;
  end;

implementation
uses
  FilePathData, FileWrapperUtil, FileUtil2, URLGLOBALS, PreLogUtil, AbFileLocalInputStream, AbIOSystem, DataOutputStreamFactory, FileStreamFactory, AbPathData, StringMaker, StringUtil, CommonLabels;


{AB:CODE}

procedure TFileUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.directory := TDirectory.getInstance();
  Self.logConfigTypeFactory := TLogConfigTypeFactory.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.streamUtil := TStreamUtil.getInstance();
  Self.WRITE_LABEL := 'Write file: ';
  Self.DATA_LABEL := ' data: ';
  Self.WRITE_METHOD := 'write';
end;
    

class function TFileUtil.getInstance: TFileUtil;
begin
        Exit(TFileUtil.instance);
end;
    

constructor TFileUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TFileUtil.write(inputStream_: TInputStream; file_: TAbFile);
var
  dataOutputStream: TAbDataOutputStream;
begin
        dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(file_);
        Self.write(inputStream_, dataOutputStream);
end;
    

// throws Exception
procedure TFileUtil.write(inputStream_: TInputStream; dataOutputStream: TAbDataOutputStream);
begin
        try
        begin
            dataOutputStream := TAbDataOutputStream(TJava.ToObject(TStreamUtil.getInstance().get(inputStream_, dataOutputStream, TJava.NewArray<ShortInt>(16384))));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;
    

// throws Exception
procedure TFileUtil.write(inputStream_: TInputStream; dataOutputStream: TAbDataOutputStream; buffer: TArray<ShortInt>);
begin
        try
        begin
            dataOutputStream := TAbDataOutputStream(TJava.ToObject(TStreamUtil.getInstance().get(inputStream_, dataOutputStream, buffer)));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;
    

// throws Exception
procedure TFileUtil.copy(dataInputStream: TAbFileInputStream; dataOutputStream: TAbDataOutputStream);
begin
        try
        begin
            dataOutputStream := TAbDataOutputStream(TJava.ToObject(TStreamUtil.getInstance().get(dataInputStream, dataOutputStream, TJava.NewArray<ShortInt>(16384))));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
            TStreamUtil.getInstance().close(dataInputStream);
        end;
end;
    

// throws Exception
function TFileUtil.fixPath(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string): TAbPath;
var
  beginIndex: Integer;
  endIndex: Integer;
  fixedPathString: string;
  fixedPath: TAbPath;
  string_: string;
  outPath: TAbPath;
begin
        beginIndex := (file_.getPath().indexOf(cloud)) + (System.Length(cloud));
        endIndex := file_.getPath().indexOf(file_.getName());
        fixedPathString := TJava.ToString(realPath.toFileSystemString()) + file_.getPath().substring(beginIndex, endIndex);
        fixedPath := TAbPath.Create(fixedPathString, TStringUtil.getInstance().EMPTY_STRING);
        Self.directory.create_(fixedPath);
        string_ := fixedPath.toFileSystemString();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
            Self.logUtil.putF(string_, TJava.Box(Self), 'fixPath');
        end;
        outPath := TAbPath.Create(string_, file_.getName());
        Exit(outPath);
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string);
begin
        Self.copyToCloud(file_, path, realPath, cloud, False, False);
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string; overwriteNewer: Boolean; overwriteAll: Boolean);
var
  outPath: TAbPath;
  outFile: TAbFile;
  stringBuffer: TStringMaker;
  dataOutputStream: TAbDataOutputStream;
  fileInputStream: TAbFileInputStream;
begin
        try
            outPath := Self.fixPath(file_, path, realPath, cloud);
            outFile := TAbFile.createAbFileFromAbPath(outPath);
            if not (Self.copyPrepare(file_, outFile, overwriteNewer, overwriteAll)) then begin
                Exit;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Out File: ');
                    stringBuffer.append(outFile.getPath());
                    stringBuffer.append(' In File: ');
                    stringBuffer.append(file_.getPath());
                    stringBuffer.append(' to cloud.');
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyToCloud');
                end;
            end;
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile);
            fileInputStream := TAbFileLocalInputStream.Create(file_);
            Self.copy(fileInputStream, dataOutputStream);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying File File: ');
                stringBuffer.append(file_.toString());
                stringBuffer.append(' to cloud.');
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyToCloud', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; outFile: TAbFile);
begin
        Self.copyToCloud(file_, outFile, False, False);
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; outFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean);
var
  stringBuffer: TStringMaker;
  dataOutputStream: TAbDataOutputStream;
  fileInputStream: TAbFileInputStream;
begin
        try
            stringBuffer := TStringMaker.Create();
            if not (Self.copyPrepare(file_, outFile, overwriteNewer, overwriteAll)) then begin
                Exit;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('Out File: ');
                    stringBuffer.append(outFile.getPath());
                    stringBuffer.append(' In File: ');
                    stringBuffer.append(file_.getPath());
                    stringBuffer.append(' to cloud.');
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyToCloud');
                end;
            end;
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile);
            fileInputStream := TAbFileLocalInputStream.Create(file_);
            Self.copy(fileInputStream, dataOutputStream);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying File File: ');
                stringBuffer.append(file_.toString());
                stringBuffer.append(' to cloud.');
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyToCloud', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TFileUtil.copyPrepare(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean): Boolean;
var
  stringBuffer: TStringMaker;
begin
        if toFile.exists() then begin
            stringBuffer := TStringMaker.Create();
            if overwriteAll then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('Overwriting File: ');
                    stringBuffer.append(toFile.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyFile');
                end;
                toFile.delete_();
                toFile.createNewFile();
            end else if ((toFile.lastModified()) < (fromFile.lastModified())) and (overwriteNewer) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('Newer by: ');
                    stringBuffer.appendlong(Int64(Trunc((fromFile.lastModified()) - (toFile.lastModified()))));
                    stringBuffer.append('ms ');
                    stringBuffer.append('Copying File: ');
                    stringBuffer.append(toFile.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyFile');
                end;
                toFile.delete_();
                toFile.createNewFile();
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('File Already Exists');
                    if overwriteNewer then begin
                        stringBuffer.append(' And Is Not Older');
                    end else begin
                        stringBuffer.append(' And Not A In Overwrite Mode');
                    end;
                    stringBuffer.append(TCommonLabels.getInstance().COLON_SEP);
                    stringBuffer.append(toFile.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyFile');
                end;
                Exit(False);
            end;
        end else begin
            toFile.createNewFile();
        end;
        Exit(True);
end;
    

// throws Exception
procedure TFileUtil.copyFile(fromFile: TAbFile; toFile: TAbFile);
begin
        Self.copyFile(fromFile, toFile, False, False);
end;
    

// throws Exception
procedure TFileUtil.copyFile(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean);
var
  stringBuffer: TStringMaker;
  dataOutputStream: TAbDataOutputStream;
  fileInputStream: TAbFileInputStream;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying ');
                stringBuffer.appendlong(Int64(fromFile.length()));
                stringBuffer.append(' bytes from File: ');
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(' to: ');
                stringBuffer.append(toFile.getPath());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyFile');
            end;
            if not (Self.copyPrepare(fromFile, toFile, overwriteNewer, overwriteAll)) then begin
                Exit;
            end;
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(toFile);
            fileInputStream := TAbFileInputStream.createFromAbFile(fromFile);
            Self.copy(fileInputStream, dataOutputStream);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying File fromFile: ');
                stringBuffer.append(fromFile.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(toFile.toString());
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyFile', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

class function TFileUtil.getNewDirectory(fromFile: TAbFile): string;
var
  newDirectory: string;
  separatorChar: string;
  lastIndex: Integer;
begin
        newDirectory := fromFile.getPath();
        separatorChar := TFilePathData.getInstance().PATH_START;
        if TAbIOSystem.getInstance().isType('com.vobject.appengine.java.io') then begin
            separatorChar := TAbPathData.getInstance().SEPARATOR;
        end;
        lastIndex := (RPos(TJava.ToString(separatorChar), newDirectory) - 1);
        if (lastIndex) >= (System.Length(newDirectory)) then begin
            newDirectory := Copy(newDirectory, (0) + 1, ((System.Length(newDirectory)) - (1)) - (0));
            lastIndex := (RPos(TJava.ToString(separatorChar), newDirectory) - 1);
        end;
        Exit(Copy(newDirectory, (lastIndex) + 1, (System.Length(newDirectory)) - (lastIndex)));
end;
    

// throws Exception
procedure TFileUtil.copyDirectoryPortion(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; overwriteNewer: Boolean; overwriteAll: Boolean; current: Integer; total: Integer);
var
  file_: TAbFile;
  fileList: TBasicArrayList;
  size: Integer;
  stringBuffer: TStringMaker;
  portion: Integer;
  start: Integer;
  end_: Integer;
  nextFile: TAbFile;
  path: string;
  beginIndex: Integer;
  newPath: string;
  toFile: TAbFile;
  index: Integer;
begin
        file_ := TAbFile.createAbFileFromAbPath(fromDirectoryAbPath);
        if not (file_.isDirectory()) then begin
            raise SysUtils.Exception.Create('Not a directory: ' + TJava.ToString(file_.getPath()));
        end;
        fileList := Self.directory.search(file_, True);
        size := fileList.size();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Searched: ');
        stringBuffer.append(file_.getPath());
        stringBuffer.append(' Total: ');
        stringBuffer.appendint(size);
        portion := ((size) div (total)) + (1);
        start := (portion) * (current);
        end_ := (start) + (portion);
        if (end_) > (size) then begin
            end_ := size;
        end;
        stringBuffer.append(' Section: ');
        stringBuffer.appendint(start);
        stringBuffer.append(' - ');
        stringBuffer.appendint(end_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copySomeFilesToDirectory()');
        end;
        
        for index := start to end_ - 1 do begin
            nextFile := TAbFile(TJava.ToObject(fileList.get(index)));
            if nextFile.isDirectory() then begin
            end else begin
                path := TAbPath.Create(nextFile.getPath(), TStringUtil.getInstance().EMPTY_STRING).getPath();
                beginIndex := fromDirectoryAbPath.getPath().length();
                if (path.indexOf(TURLGLOBALS.getWebappPath())) < (0) then begin
                    beginIndex := (beginIndex) - (TAbPath.Create(TURLGLOBALS.getWebappPath(), TStringUtil.getInstance().EMPTY_STRING).getPath().length());
                end;
                newPath := TJava.ToString(toDirectoryAbPath.toFileSystemString()) + path.substring(beginIndex);
                toFile := TAbFile.createAbFileFromAbPath(TAbPath.Create(newPath, TStringUtil.getInstance().EMPTY_STRING));
                Self.copyFile(nextFile, toFile, overwriteNewer, overwriteAll);
            end;
        end;
end;
    

// throws Exception
procedure TFileUtil.copyDirectory(fromFile: TAbFile; to_: TAbFile);
var
  stringBuffer: TStringMaker;
  newDirectory: string;
  newDirectoryAbPath: TAbPath;
  fileArray: TArray<TAbFile>;
  size: Integer;
  file_: TAbFile;
  index: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying Directory from: ');
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.getPath());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyDirectory');
            end;
            newDirectory := TFileUtil.getNewDirectory(fromFile);
            newDirectoryAbPath := TAbPath.Create(TJava.ToString((to_.getPath()) + (TAbPathData.getInstance().SEPARATOR)) + newDirectory, TStringUtil.getInstance().EMPTY_STRING);
            if not (Self.directory.create_(newDirectoryAbPath)) then begin
                raise SysUtils.Exception.Create('Failed to create directory: ' + TJava.ToString(newDirectoryAbPath));
            end;
            fileArray := TFileWrapperUtil.wrapFiles(fromFile.listFiles());
            size := System.Length(fileArray);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying ');
                stringBuffer.appendint(size);
                stringBuffer.append(' files from: ');
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.getPath());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyDirectory');
            end;
            
            for index := 0 to size - 1 do begin
                file_ := fileArray[index];
                if file_.isFile() then begin
                    Self.copyFile(file_, TAbFile.createAbFilePathAndName(newDirectoryAbPath.toString(), file_.getName()));
                end else if file_.isDirectory() then begin
                    Self.copyDirectory(file_, TAbFile.createAbFileFromAbPath(newDirectoryAbPath));
                end else begin
                    raise SysUtils.Exception.Create('File Copy Error');
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying Directory fromFile: ');
                stringBuffer.append(fromFile.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.toString());
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), 'copyDirectory', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TFileUtil.copy(fromAbPath: TAbPath; to_: TAbPath): Boolean;
var
  COPY: string;
  stringBuffer: TStringMaker;
  fromLocationFile: TAbFile;
  toLocationFile: TAbFile;
  fileArray: TArray<TAbFile>;
  file_: TAbFile;
  aFile: TAbFile;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        COPY := 'copy';
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying AbPaths from: ');
                stringBuffer.append(fromAbPath.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.toString());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), COPY);
            end;
            if (fromAbPath) = (nil) then begin
                raise SysUtils.Exception.Create('Cannot Copy From A Null Location');
            end;
            if (to_) = (nil) then begin
                raise SysUtils.Exception.Create('Cannot Copy To A Null Location');
            end;
            fromLocationFile := TAbFile.createAbFileFromAbPath(fromAbPath);
            toLocationFile := TAbFile.createAbFileFromAbPath(to_);
            if fromLocationFile.isFile() then begin
                if toLocationFile.isDirectory() then begin
                    file_ := TAbFile.createAbFileWithChild(toLocationFile, fromLocationFile.getName());
                    Self.copyFile(fromLocationFile, file_);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Copied file=');
                        stringBuffer.append(fromLocationFile.getName());
                        stringBuffer.append(' from: ');
                        stringBuffer.append(fromLocationFile.getPath());
                        stringBuffer.append(' to: ');
                        stringBuffer.append(toLocationFile.getPath());
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), COPY);
                    end;
                end else begin
                    Self.copyFile(fromLocationFile, toLocationFile);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Copied file with new name ');
                        stringBuffer.append(' from: ');
                        stringBuffer.append(fromLocationFile.getPath());
                        stringBuffer.append(' to: ');
                        stringBuffer.append(toLocationFile.getPath());
                        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), COPY);
                    end;
                end;
            end else if (fromLocationFile.isDirectory()) and (toLocationFile.isDirectory()) then begin
                if (fromAbPath.toFileSystemString().charAt((fromAbPath.toFileSystemString().length()) - (1))) = (PathDelim) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copying subdirectories', TJava.Box(TFileUtil.getInstance()), COPY);
                    end;
                    fileArray := TFileWrapperUtil.wrapFiles(fromLocationFile.listFiles());
                    for index := 0 to System.Length(fileArray) - 1 do begin
                        file_ := fileArray[index];
                        if file_.isFile() then begin
                            aFile := TAbFile.createAbFileWithChild(toLocationFile, file_.getName());
                            Self.copyFile(file_, aFile);
                        end else if file_.isDirectory() then begin
                            Self.copyDirectory(file_, toLocationFile);
                        end else begin
                            raise SysUtils.Exception.Create('File Copy Error');
                        end;
                    end;
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copied subdirectories', TJava.Box(TFileUtil.getInstance()), COPY);
                    end;
                end else begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copyinhg directory', TJava.Box(TFileUtil.getInstance()), COPY);
                    end;
                    Self.copyDirectory(fromLocationFile, toLocationFile);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copied directory', TJava.Box(TFileUtil.getInstance()), COPY);
                    end;
                end;
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying fromAbPath: ');
                stringBuffer.append(fromAbPath.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.toString());
                Self.logUtil.put(stringBuffer.toString(), TJava.Box(TFileUtil.getInstance()), COPY, TJava.Box(e));
            end;
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TFileUtil.shouldSkip(file_: TAbFile; skipFiles: TArray<string>): Boolean;
var
  size: Integer;
  skipFile: string;
  index: Integer;
begin
        size := System.Length(skipFiles);
        
        for index := 0 to size - 1 do begin
            skipFile := skipFiles[index];
            if (file_.getPath().compareTo(skipFile)) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TFileUtil.write(filePath: string; string_: string);
var
  dataOutputStream: TAbDataOutputStream;
  fileInputStreamFactory: TFileStreamFactory;
  fileOutputStream: TOutputStream;
begin
        dataOutputStream := nil;
        try
        begin
            TPreLogUtil.put(TStringMaker.Create().append(Self.WRITE_LABEL).append(filePath).append(Self.DATA_LABEL).append(string_).toString(), TJava.Box(Self), Self.WRITE_METHOD);
            fileInputStreamFactory := TFileStreamFactory.getInstance();
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, filePath);
            dataOutputStream := TAbDataOutputStream.Create(fileOutputStream);
            dataOutputStream.write(TJava.GetBytes(string_), 0, System.Length(string_));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;
    

function TFileUtil.loadFileAsList(file_: TAbFile; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList;
begin
        Exit(TFileUtil2.getInstance().loadFileAsList(file_, max, byteArray1));
end;

initialization
  {AB:INITIALIZATION}
  TFileUtil.instance := TFileUtil.Create();
  {AB:END}

end.


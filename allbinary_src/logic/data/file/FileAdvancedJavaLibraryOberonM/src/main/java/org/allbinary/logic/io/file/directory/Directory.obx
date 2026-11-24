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
// package org.allbinary.logic.io.file.directory
unit Directory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, AbPath, BasicArrayList;

type
  {AB:TYPES}
  TDirectory = class(TObject)
  public
    class var instance: TDirectory;
        class function getInstance: TDirectory; static;
        constructor Create;
        function create_(directoryAbPath: TAbPath): Boolean; overload; virtual;
        procedure remove(existingDirectoryAbPath: TAbPath); overload; virtual;
        function create_(directory_: string): Boolean; overload;
        procedure remove(existingDirectory: string); overload;
        function search(fileFilter_: IFileFilter; file_: TAbFile): TBasicArrayList; overload; virtual;
        function search(fileFilter_: IFileFilter; file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList; overload; virtual;
        function search(file_: TAbFile): TBasicArrayList; overload; virtual;
        function search(file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList; overload; virtual;
        function search(searchValue: string; file_: TAbFile): TBasicArrayList; overload; virtual;
        function search(searchValue: string; file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList; overload; virtual;
        function search(level: Integer; file_: TAbFile): TBasicArrayList; overload; virtual;
        function search(level: Integer; file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList; overload; virtual;
  end;

implementation
uses
  PreLogUtil, FileFactory, FileWrapperUtil, BasicArrayListD;


{AB:CODE}
    

class function TDirectory.getInstance: TDirectory;
begin
        Exit(TDirectory.instance);
end;
    

constructor TDirectory.Create;
begin
    inherited Create;
end;
    

function TDirectory.create_(directoryAbPath: TAbPath): Boolean;
begin
        Exit(Self.create_(directoryAbPath.toFileSystemString()));
end;
    

// throws Exception
procedure TDirectory.remove(existingDirectoryAbPath: TAbPath);
begin
        Self.remove(existingDirectoryAbPath.toFileSystemString());
end;
    

function TDirectory.create_(directory_: string): Boolean;
var
  directoryFile: TAbFile;
begin
        try
            directoryFile := TFileFactory.getInstance().getInstance(directory_);
            if not (directoryFile.isDirectory()) then begin
                TPreLogUtil.put('Creating Directories: ' + directory_, TJava.Box(Self), 'create');
                if not (directoryFile.mkdirs()) then begin
                    Exit(False);
                end;
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('Error Creating Directories: ' + directory_, TJava.Box(Self), 'create', TJava.Box(e));
            Exit(False);
            end;
        end;
end;
    

// throws Exception
procedure TDirectory.remove(existingDirectory: string);
var
  existingDirectoryFile: TAbFile;
begin
        existingDirectoryFile := TFileFactory.getInstance().getInstance(existingDirectory);
        if existingDirectoryFile.isDirectory() then begin
            if (System.Length(existingDirectoryFile.list())) > (0) then begin
                raise SysUtils.Exception.Create('Did not remove category: ' + existingDirectory + ' because files exist');
            end else if existingDirectoryFile.delete_() then begin
                TPreLogUtil.put('Successfully Removed: ' + existingDirectory, TJava.Box('Directory'), 'remove');
            end;
        end else begin
            raise SysUtils.Exception.Create('Category Directory Is Missing:' + existingDirectory);
        end;
end;
    

function TDirectory.search(fileFilter_: IFileFilter; file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.search(fileFilter_, file_, False));
end;
    

function TDirectory.search(fileFilter_: IFileFilter; file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList;
var
  fileList: TBasicArrayList;
  recursiveFileList: TBasicArrayList;
  fileArray: TArray<TObject>;
  files: TArray<TAbFile>;
  size: Integer;
  index: Integer;
begin
        fileList := TBasicArrayListD.Create();
        
        if file_.isDirectory() then begin
            fileArray := file_.listFilesFileFilter(fileFilter_);
            if (fileArray) = (nil) then begin
                Exit(fileList);
            end;
            files := TFileWrapperUtil.wrapFiles(fileArray);
            if (files) = (nil) then begin
                Exit(fileList);
            end;
            size := System.Length(files);
            for index := 0 to size - 1 do begin
                fileList.add(TJava.Box(files[index]));
                if isRecursiveSearch then begin
                    recursiveFileList := Self.search(fileFilter_, files[index], isRecursiveSearch);
                    fileList.addAllList(recursiveFileList);
                end;
            end;
        end;
        Exit(fileList);
end;
    

function TDirectory.search(file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.search(file_, False));
end;
    

function TDirectory.search(file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList;
var
  fileList: TBasicArrayList;
  recursiveFileList: TBasicArrayList;
  fileArray: TArray<TObject>;
  files: TArray<TAbFile>;
  index: Integer;
begin
        fileList := TBasicArrayListD.Create();
        
        if file_.isDirectory() then begin
            fileArray := file_.listFiles();
            if (fileArray) = (nil) then begin
                Exit(fileList);
            end;
            files := TFileWrapperUtil.wrapFiles(fileArray);
            if (files) = (nil) then begin
                Exit(fileList);
            end;
            for index := 0 to System.Length(files) - 1 do begin
                fileList.add(TJava.Box(files[index]));
                if isRecursiveSearch then begin
                    recursiveFileList := Self.search(files[index], isRecursiveSearch);
                    fileList.addAllList(recursiveFileList);
                end;
            end;
        end;
        Exit(fileList);
end;
    

function TDirectory.search(searchValue: string; file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.search(searchValue, file_, False));
end;
    

function TDirectory.search(searchValue: string; file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList;
var
  fileList: TBasicArrayList;
  recursiveFileList: TBasicArrayList;
  fileArray: TArray<TObject>;
  files: TArray<TAbFile>;
  index: Integer;
begin
        fileList := TBasicArrayListD.Create();
        
        if file_.isDirectory() then begin
            fileArray := file_.listFiles();
            if (fileArray) = (nil) then begin
                Exit(fileList);
            end;
            files := TFileWrapperUtil.wrapFiles(fileArray);
            if (files) = (nil) then begin
                Exit(fileList);
            end;
            for index := 0 to System.Length(files) - 1 do begin
                if (files[index].getPath().indexOf(searchValue)) >= (0) then begin
                    fileList.add(TJava.Box(files[index]));
                end;
                if isRecursiveSearch then begin
                    recursiveFileList := Self.search(searchValue, files[index], isRecursiveSearch);
                    fileList.addAllList(recursiveFileList);
                end;
            end;
        end;
        Exit(fileList);
end;
    

function TDirectory.search(level: Integer; file_: TAbFile): TBasicArrayList;
begin
        Exit(Self.search(level, file_, False));
end;
    

function TDirectory.search(level: Integer; file_: TAbFile; isRecursiveSearch: Boolean): TBasicArrayList;
var
  fileList: TBasicArrayList;
  recursiveFileList: TBasicArrayList;
  fileArray: TArray<TObject>;
  files: TArray<TAbFile>;
  index: Integer;
begin
        fileList := TBasicArrayListD.Create();
        
        if file_.isDirectory() then begin
            fileArray := file_.listFiles();
            if (fileArray) = (nil) then begin
                Exit(fileList);
            end;
            files := TFileWrapperUtil.wrapFiles(fileArray);
            if (files) = (nil) then begin
                Exit(fileList);
            end;
            for index := 0 to System.Length(files) - 1 do begin
                fileList.add(TJava.Box(files[index]));
                if (level) <= (0) then begin
                    Exit(fileList);
                end;
                recursiveFileList := Self.search((level) - (1), files[index], isRecursiveSearch);
                fileList.addAllList(recursiveFileList);
            end;
        end;
        Exit(fileList);
end;

initialization
  {AB:INITIALIZATION}
  TDirectory.instance := TDirectory.Create();
  {AB:END}

end.


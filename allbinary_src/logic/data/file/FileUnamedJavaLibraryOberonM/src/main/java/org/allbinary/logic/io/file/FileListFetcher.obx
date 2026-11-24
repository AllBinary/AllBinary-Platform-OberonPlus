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
unit FileListFetcher;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SubDirectory, BasicArrayList;

type
  {AB:TYPES}
  TFileListFetcher = class(TObject)
  public
    subDirectory: TSubDirectory;
    class var instance: TFileListFetcher;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFileListFetcher; static;
        function getFiles(path: string): TBasicArrayList; overload; virtual;
        function getFiles(path: string; includeExtensions: TArray<string>): TBasicArrayList; overload; virtual;
        function getFiles(path: string; includeExtension: string): TBasicArrayList; overload; virtual;
        function getFiles(path: string; pathIncludes: string; includeExtension: string): TBasicArrayList; overload; virtual;
        function getTrackedFiles(path: string; includeExtensions: TArray<string>): TBasicArrayList; overload; virtual;
        function getTrackedFiles(path: string; includeExtension: string): TBasicArrayList; overload; virtual;
        function getDirectories(path: string): TBasicArrayList; virtual;
  end;

implementation
uses
  AbFile, DirectoryBooleanFileVisitor, DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor, DirectoryOrIncludeFileExtensionBooleanFileVisitor, VisitorFileFilter, BasicArrayListD;


{AB:CODE}

procedure TFileListFetcher.InitFields;
begin
  Self.subDirectory := TSubDirectory.getInstance();
end;

constructor TFileListFetcher.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFileListFetcher.getInstance: TFileListFetcher;
begin
        Exit(TFileListFetcher.instance);
end;
    

function TFileListFetcher.getFiles(path: string): TBasicArrayList;
var
  files: TBasicArrayList;
begin
        try
            files := Self.subDirectory.search(TAbFile.createAbFile(path));
            Exit(files);
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            WriteLn('Error: ' + TJava.ToString(e) + ''#10'Msg: ' + e.Message);
            end;
        end;
        Exit(nil);
end;
    

function TFileListFetcher.getFiles(path: string; includeExtensions: TArray<string>): TBasicArrayList;
var
  includeExtensionBasicArrayList: TBasicArrayList;
  size: Integer;
  index: Integer;
  visitorFileFilter_: TVisitorFileFilter;
  files: TBasicArrayList;
begin
        try
            includeExtensionBasicArrayList := TBasicArrayListD.Create();
            size := System.Length(includeExtensions);
            for index := 0 to size - 1 do begin
                includeExtensionBasicArrayList.add(TJava.Box(includeExtensions[index]));
            end;
            visitorFileFilter_ := TVisitorFileFilter.Create(TDirectoryOrIncludeFileExtensionBooleanFileVisitor.Create(includeExtensionBasicArrayList));
            files := Self.subDirectory.search(visitorFileFilter_, TAbFile.createAbFile(path));
            Exit(files);
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            WriteLn('Error: ' + TJava.ToString(e) + ''#10'Msg: ' + e.Message);
            end;
        end;
        Exit(nil);
end;
    

function TFileListFetcher.getFiles(path: string; includeExtension: string): TBasicArrayList;
var
  includeExtensionBasicArrayList: TBasicArrayList;
  visitorFileFilter_: TVisitorFileFilter;
  files: TBasicArrayList;
begin
        try
            includeExtensionBasicArrayList := TBasicArrayListD.Create();
            includeExtensionBasicArrayList.add(TJava.Box(includeExtension));
            visitorFileFilter_ := TVisitorFileFilter.Create(TDirectoryOrIncludeFileExtensionBooleanFileVisitor.Create(includeExtensionBasicArrayList));
            files := Self.subDirectory.search(visitorFileFilter_, TAbFile.createAbFile(path));
            Exit(files);
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            WriteLn('Error: ' + TJava.ToString(e) + ''#10'Msg: ' + e.Message);
            end;
        end;
        Exit(nil);
end;
    

function TFileListFetcher.getFiles(path: string; pathIncludes: string; includeExtension: string): TBasicArrayList;
var
  includeExtensionBasicArrayList: TBasicArrayList;
  visitorFileFilter_: TVisitorFileFilter;
  files: TBasicArrayList;
begin
        try
            includeExtensionBasicArrayList := TBasicArrayListD.Create();
            includeExtensionBasicArrayList.add(TJava.Box(includeExtension));
            visitorFileFilter_ := TVisitorFileFilter.Create(TDirectoryOrIncludeFileExtensionBooleanFileVisitor.Create(includeExtensionBasicArrayList, pathIncludes));
            files := Self.subDirectory.search(visitorFileFilter_, TAbFile.createAbFile(path));
            Exit(files);
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            WriteLn('Error: ' + TJava.ToString(e) + ''#10'Msg: ' + e.Message);
            end;
        end;
        Exit(nil);
end;
    

function TFileListFetcher.getTrackedFiles(path: string; includeExtensions: TArray<string>): TBasicArrayList;
var
  includeExtensionBasicArrayList: TBasicArrayList;
  size: Integer;
  index: Integer;
  visitorFileFilter_: TVisitorFileFilter;
  files: TBasicArrayList;
begin
        try
            includeExtensionBasicArrayList := TBasicArrayListD.Create();
            size := System.Length(includeExtensions);
            for index := 0 to size - 1 do begin
                includeExtensionBasicArrayList.add(TJava.Box(includeExtensions[index]));
            end;
            visitorFileFilter_ := TVisitorFileFilter.Create(TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.Create(includeExtensionBasicArrayList));
            files := Self.subDirectory.search(visitorFileFilter_, TAbFile.createAbFile(path));
            Exit(files);
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            WriteLn('Error: ' + TJava.ToString(e) + ''#10'Msg: ' + e.Message);
            end;
        end;
        Exit(nil);
end;
    

function TFileListFetcher.getTrackedFiles(path: string; includeExtension: string): TBasicArrayList;
var
  includeExtensionBasicArrayList: TBasicArrayList;
  visitorFileFilter_: TVisitorFileFilter;
  files: TBasicArrayList;
begin
        try
            includeExtensionBasicArrayList := TBasicArrayListD.Create();
            includeExtensionBasicArrayList.add(TJava.Box(includeExtension));
            visitorFileFilter_ := TVisitorFileFilter.Create(TDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.Create(includeExtensionBasicArrayList));
            files := Self.subDirectory.search(visitorFileFilter_, TAbFile.createAbFile(path));
            Exit(files);
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            WriteLn('Error: ' + TJava.ToString(e) + ''#10'Msg: ' + e.Message);
            end;
        end;
        Exit(nil);
end;
    

function TFileListFetcher.getDirectories(path: string): TBasicArrayList;
var
  visitorFileFilter_: TVisitorFileFilter;
  files: TBasicArrayList;
begin
        try
            visitorFileFilter_ := TVisitorFileFilter.Create(TDirectoryBooleanFileVisitor.Create());
            files := Self.subDirectory.search(visitorFileFilter_, TAbFile.createAbFile(path));
            Exit(files);
        except
            on e: SysUtils.Exception do begin
            WriteLn(e.Message);
            WriteLn('Error: ' + TJava.ToString(e) + ''#10'Msg: ' + e.Message);
            end;
        end;
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  TFileListFetcher.instance := TFileListFetcher.Create();
  {AB:END}

end.


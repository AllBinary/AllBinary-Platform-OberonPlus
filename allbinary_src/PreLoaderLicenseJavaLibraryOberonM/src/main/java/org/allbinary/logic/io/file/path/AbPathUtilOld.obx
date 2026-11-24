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
// package org.allbinary.logic.io.file.path
unit AbPathUtilOld;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, FilePathData, AbFilePath, AbPath, AbPathData;

type
  {AB:TYPES}
  // Used to correct user input for paths
  TAbPathUtilOld = class(TObject)
  public
    logUtil: TLogUtil;
    abPathData: TAbPathData;
    filePathData: TFilePathData;
    class var instance: TAbPathUtilOld;
    class var MIN: Integer;
    procedure InitFields;
        class function getInstance: TAbPathUtilOld; static;
        constructor Create;
        function getExtension(abFilePath_: TAbFilePath): string; overload; virtual;
        function getExtension(abPath_: TAbPath): string; overload; virtual;
        function getExtension(filePath: string): string; overload; virtual;
        function getWithoutExtension(abFilePath_: TAbFilePath): string; overload; virtual;
        function getWithoutExtension(abPath_: TAbPath): string; overload; virtual;
        function getWithoutExtension(filePath: string): string; overload; virtual;
        function isValid(path: string): Boolean; virtual;
        function isValidStart(path: string): Boolean;
        function isValidEnd(path: string): Boolean;
        function adjustStart(path: string): string; virtual;
        function adjustEnd(path: string): string; virtual;
        function adjust(path: string): string; virtual;
        function getNameFromPath(categoryPath: string): string; virtual;
        function removeNameFromPath(categoryPath: string): TAbPath; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TAbPathUtilOld.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.abPathData := TAbPathData.getInstance();
  Self.filePathData := TFilePathData.getInstance();
end;
    

class function TAbPathUtilOld.getInstance: TAbPathUtilOld;
begin
        Exit(TAbPathUtilOld.instance);
end;
    

constructor TAbPathUtilOld.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TAbPathUtilOld.getExtension(abFilePath_: TAbFilePath): string;
begin
        Exit(Self.getExtension(abFilePath_.toString()));
end;
    

// throws Exception
function TAbPathUtilOld.getExtension(abPath_: TAbPath): string;
begin
        Exit(Self.getExtension(abPath_.toString()));
end;
    

// throws Exception
function TAbPathUtilOld.getExtension(filePath: string): string;
var
  beginIndex: Integer;
  extension: string;
begin
        if (System.Length(filePath)) < (TAbPathUtilOld.MIN) then begin
            raise SysUtils.Exception.Create('Could not be a file path since its less that 4 characters');
        end;
        beginIndex := (System.Length(filePath)) - (TAbPathUtilOld.MIN);
        extension := Copy(filePath, ((beginIndex) + (1)) + 1, MaxInt);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('FileExtension: ' + extension, TJava.Box(Self), 'getExtension()');
        end;
        Exit(extension);
end;
    

// throws Exception
function TAbPathUtilOld.getWithoutExtension(abFilePath_: TAbFilePath): string;
begin
        Exit(Self.getWithoutExtension(abFilePath_.toString()));
end;
    

// throws Exception
function TAbPathUtilOld.getWithoutExtension(abPath_: TAbPath): string;
begin
        Exit(Self.getWithoutExtension(abPath_.toString()));
end;
    

// throws Exception
function TAbPathUtilOld.getWithoutExtension(filePath: string): string;
var
  endIndex: Integer;
  pathWithoutExtension: string;
begin
        if (System.Length(filePath)) < (TAbPathUtilOld.MIN) then begin
            raise SysUtils.Exception.Create('Could not be a file path since its less that 4 characters');
        end;
        endIndex := (System.Length(filePath)) - (TAbPathUtilOld.MIN);
        pathWithoutExtension := Copy(filePath, (0) + 1, (endIndex) - (0));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('FileWithoutExtension: ' + pathWithoutExtension, TJava.Box(Self), 'getWithoutExtension()');
        end;
        Exit(pathWithoutExtension);
end;
    

function TAbPathUtilOld.isValid(path: string): Boolean;
begin
        if Self.isValidStart(path) then begin
            if Self.isValidEnd(path) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TAbPathUtilOld.isValidStart(path: string): Boolean;
begin
        if (path[(0) + 1]) = (Self.abPathData.SEPARATORCHAR) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TAbPathUtilOld.isValidEnd(path: string): Boolean;
begin
        if (path = '') then begin
            Exit(False);
        end;
        if (path[((System.Length(path)) - (1)) + 1]) = (Self.abPathData.SEPARATORCHAR) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TAbPathUtilOld.adjustStart(path: string): string;
begin
        if not (Self.isValidStart(path)) then begin
            path := TJava.ToString(Self.abPathData.SEPARATOR) + path;
        end;
        Exit(path);
end;
    

function TAbPathUtilOld.adjustEnd(path: string): string;
begin
        if not (Self.isValidEnd(path)) then begin
            path := path + TJava.ToString(Self.abPathData.SEPARATOR);
        end;
        Exit(path);
end;
    

function TAbPathUtilOld.adjust(path: string): string;
begin
        if (path = '') then begin
            Exit(Self.abPathData.SEPARATOR);
        end;
        if ((Pos(TJava.ToString('\'), path) - 1)) >= (0) then begin
            path := StringReplace(path, '\', Self.abPathData.SEPARATORCHAR, [rfReplaceAll]);
        end;
        Exit(path);
end;
    

function TAbPathUtilOld.getNameFromPath(categoryPath: string): string;
var
  endIndex: Integer;
  categoryName: string;
begin
    TJava.MonitorEnter(Self);
    try
        endIndex := (RPos(TJava.ToString(Self.abPathData.SEPARATOR), categoryPath) - 1);
        if (endIndex) < (0) then begin
            endIndex := (RPos(TJava.ToString(Self.filePathData.SEPARATORCHAR), categoryPath) - 1);
        end;
        if (endIndex) < (0) then begin
            Exit(categoryPath);
        end;
        if (System.Length(categoryPath)) = ((endIndex) + (1)) then begin
            categoryName := Copy(categoryPath, (0) + 1, (endIndex) - (0));
            Exit(Self.getNameFromPath(categoryName));
        end else begin
            categoryName := Copy(categoryPath, ((endIndex) + (1)) + 1, MaxInt);
            Exit(categoryName);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
function TAbPathUtilOld.removeNameFromPath(categoryPath: string): TAbPath;
var
  endIndex: Integer;
  categoryName: string;
begin
    TJava.MonitorEnter(Self);
    try
        endIndex := (RPos(TJava.ToString(Self.abPathData.SEPARATOR), categoryPath) - 1);
        if (endIndex) < (0) then begin
            endIndex := (RPos(TJava.ToString(Self.filePathData.SEPARATORCHAR), categoryPath) - 1);
        end;
        if (endIndex) < (0) then begin
            Exit(TAbPath.createAbPath());
        end;
        if (System.Length(categoryPath)) = ((endIndex) + (1)) then begin
            Exit(Self.removeNameFromPath(Copy(categoryPath, (0) + 1, ((endIndex) - (1)) - (0))));
        end else begin
            categoryName := Copy(categoryPath, (0) + 1, (endIndex) - (0));
            Exit(TAbPath.Create(categoryName, TStringUtil.getInstance().EMPTY_STRING));
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TAbPathUtilOld.instance := TAbPathUtilOld.Create();
  TAbPathUtilOld.MIN := 4;
  {AB:END}

end.


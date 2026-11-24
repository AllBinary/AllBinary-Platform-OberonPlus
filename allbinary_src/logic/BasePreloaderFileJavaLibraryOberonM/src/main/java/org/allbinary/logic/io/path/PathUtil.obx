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
// package org.allbinary.logic.io.path
unit PathUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FilePathData, AbPathData, AbFilePath, AbPath;

type
  {AB:TYPES}
  // Used to correct user input for paths
  TPathUtil = class(TObject)
  public
    abPathData: TAbPathData;
    filePathData: TFilePathData;
    class var instance: TPathUtil;
    procedure InitFields;
        class function getInstance: TPathUtil; static;
        constructor Create;
        function getExtensionWithAbFilePath(abFilePath_: TAbFilePath): string; virtual;
        function getExtensionWithAbPath(abPath_: TAbPath): string; virtual;
        function getWithoutExtensionWithAbFilePath(abFilePath_: TAbFilePath): string; virtual;
        function getWithoutExtensionWithAbPath(abPath_: TAbPath): string; virtual;
        function getWithoutExtension(filePath: string): string; virtual;
        function isValid(path: string): Boolean; virtual;
        function isValidStart(path: string): Boolean;
        function isValidEnd(path: string): Boolean;
        function adjustStart(path: string): string; virtual;
        function adjustEnd(path: string): string; virtual;
        function adjust(path: string): string; virtual;
        function removeNameFromPath(path: string): TAbPath; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TPathUtil.InitFields;
begin
  Self.abPathData := TAbPathData.getInstance();
  Self.filePathData := TFilePathData.getInstance();
end;
    

class function TPathUtil.getInstance: TPathUtil;
begin
        Exit(TPathUtil.instance);
end;
    

constructor TPathUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TPathUtil.getExtensionWithAbFilePath(abFilePath_: TAbFilePath): string;
begin
        Exit(Self.abPathData.getExtension(abFilePath_.toString()));
end;
    

function TPathUtil.getExtensionWithAbPath(abPath_: TAbPath): string;
begin
        Exit(Self.abPathData.getExtension(abPath_.toString()));
end;
    

// throws Exception
function TPathUtil.getWithoutExtensionWithAbFilePath(abFilePath_: TAbFilePath): string;
begin
        Exit(Self.getWithoutExtension(abFilePath_.toString()));
end;
    

// throws Exception
function TPathUtil.getWithoutExtensionWithAbPath(abPath_: TAbPath): string;
begin
        Exit(Self.getWithoutExtension(abPath_.toString()));
end;
    

// throws Exception
function TPathUtil.getWithoutExtension(filePath: string): string;
var
  indexOfFileExtensionDelmiter: Integer;
  pathWithoutExtension: string;
begin
        indexOfFileExtensionDelmiter := Self.abPathData.getExtensionIndex(filePath);
        pathWithoutExtension := filePath;
        if (indexOfFileExtensionDelmiter) >= (0) then begin
            pathWithoutExtension := Copy(filePath, (0) + 1, (indexOfFileExtensionDelmiter) - (0));
        end;
        Exit(pathWithoutExtension);
end;
    

function TPathUtil.isValid(path: string): Boolean;
begin
        if Self.isValidStart(path) then begin
            if Self.isValidEnd(path) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TPathUtil.isValidStart(path: string): Boolean;
begin
        if ((path[(0) + 1]) = (Self.abPathData.SEPARATORCHAR)) or ((path[(0) + 1]) = ('.')) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TPathUtil.isValidEnd(path: string): Boolean;
var
  stringValidationUtil_: TObject;
begin
        stringValidationUtil_ := nil;
        if (path = '') then begin
            Exit(False);
        end;
        if (path[((System.Length(path)) - (1)) + 1]) = (Self.abPathData.SEPARATORCHAR) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TPathUtil.adjustStart(path: string): string;
begin
        if not (Self.isValidStart(path)) then begin
            path := TJava.ToString(Self.abPathData.SEPARATOR) + path;
        end;
        Exit(path);
end;
    

function TPathUtil.adjustEnd(path: string): string;
begin
        if not (Self.isValidEnd(path)) then begin
            path := path + TJava.ToString(Self.abPathData.SEPARATOR);
        end;
        Exit(path);
end;
    

function TPathUtil.adjust(path: string): string;
var
  stringValidationUtil_: TObject;
begin
        stringValidationUtil_ := nil;
        if (path = '') then begin
            Exit(Self.abPathData.SEPARATOR);
        end;
        if ((Pos(TJava.ToString('\'), path) - 1)) >= (0) then begin
            path := StringReplace(path, '\', Self.abPathData.SEPARATORCHAR, [rfReplaceAll]);
        end;
        Exit(path);
end;
    

// throws Exception
function TPathUtil.removeNameFromPath(path: string): TAbPath;
var
  endIndex: Integer;
  pathWithoutName: string;
begin
        endIndex := (RPos(TJava.ToString(Self.abPathData.SEPARATOR), path) - 1);
        if (endIndex) < (0) then begin
            endIndex := (RPos(TJava.ToString(Self.filePathData.SEPARATORCHAR), path) - 1);
        end;
        if (endIndex) < (0) then begin
            Exit(TAbPath.createAbPath());
        end;
        if (System.Length(path)) = ((endIndex) + (1)) then begin
            Exit(Self.removeNameFromPath(Copy(path, (0) + 1, ((endIndex) - (1)) - (0))));
        end else begin
            pathWithoutName := Copy(path, (0) + 1, (endIndex) - (0));
            Exit(TAbPath.Create(pathWithoutName, TStringUtil.getInstance().EMPTY_STRING));
        end;
end;

initialization
  {AB:INITIALIZATION}
  TPathUtil.instance := TPathUtil.Create();
  {AB:END}

end.


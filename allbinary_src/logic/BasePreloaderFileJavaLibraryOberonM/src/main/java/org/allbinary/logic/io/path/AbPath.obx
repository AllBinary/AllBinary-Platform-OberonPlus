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
unit AbPath;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonSeps, AbPathData, PathUtil;

type
  {AB:TYPES}
  TAbPath = class(TObject)
  public
    commonSeps: TCommonSeps;
    abPathData: TAbPathData;
    abPathUtil: TPathUtil;
    EMPTY_STRING: string;
    schema: string;
    path: string;
    nameP: string;
    hasSchemaP: Boolean;
    numberOfSeps: Integer;
    class var NETWORK_SEP: string;
    procedure InitFields;
        class function createAbPath: TAbPath; static;
        constructor Create(aPath: string; name: string);
        procedure init;
        function getSchema(aPath: string): string; virtual;
        function hasSchema: Boolean; virtual;
        function getPathFromPath(aPath: string): string; virtual;
        procedure setName(name: string); virtual;
        function getName: string; virtual;
        function toString: string; virtual;
        function toFileSystemString: string; virtual;
        function getPath: string; virtual;
        procedure setPath(path: string); virtual;
  end;

implementation
uses
  FilePathData, FilePathUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TAbPath.InitFields;
begin
  Self.commonSeps := TCommonSeps.getInstance();
  Self.abPathData := TAbPathData.getInstance();
  Self.abPathUtil := TPathUtil.getInstance();
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  Self.schema := Self.EMPTY_STRING;
  Self.path := Self.EMPTY_STRING;
  Self.nameP := Self.EMPTY_STRING;
  Self.hasSchemaP := False;
  Self.numberOfSeps := 0;
end;
    

class function TAbPath.createAbPath: TAbPath;
var
  EMPTY_STRING: string;
begin
        try
            EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
            Exit(TAbPath.Create(EMPTY_STRING, EMPTY_STRING));
        except
            on ex: SysUtils.Exception do begin
            raise SysUtils.Exception.Create('');
            end;
        end;
end;
    

constructor TAbPath.Create(aPath: string; name: string);
var
  stringValidationUtil_: TObject;
begin
    inherited Create;
    InitFields;
        stringValidationUtil_ := nil;
        if not ((aPath = '')) then begin
            Self.schema := Self.getSchema(aPath);
            Self.nameP := name;
            Self.path := Self.abPathUtil.adjustEnd(Self.abPathUtil.adjust(Self.getPathFromPath(aPath)));
        end else begin
            Self.init();
            if not ((name = '')) then begin
                Self.nameP := name;
            end;
        end;
end;
    

procedure TAbPath.init;
begin
        Self.schema := Self.EMPTY_STRING;
        Self.setPath(Self.abPathData.SEPARATOR);
        Self.nameP := Self.EMPTY_STRING;
end;
    

function TAbPath.getSchema(aPath: string): string;
var
  beginIndex: Integer;
begin
        beginIndex := (Pos(TJava.ToString(Self.commonSeps.COLON), aPath) - 1);
        if (beginIndex) >= (0) then begin
            Self.hasSchemaP := True;
            Exit(Copy(aPath, (0) + 1, (beginIndex) - (0)));
        end;
        Self.hasSchemaP := False;
        Exit(Self.EMPTY_STRING);
end;
    

function TAbPath.hasSchema: Boolean;
begin
        Exit(Self.hasSchemaP);
end;
    

// throws Exception
function TAbPath.getPathFromPath(aPath: string): string;
var
  filePathData_: TFilePathData;
  tempPath: string;
  beginIndex: Integer;
begin
        filePathData_ := TFilePathData.getInstance();
        tempPath := aPath;
        if not (Self.hasSchema()) then begin
            tempPath := Self.abPathUtil.adjustStart(tempPath);
        end else begin
            beginIndex := (Pos(TJava.ToString(Self.commonSeps.COLON), tempPath) - 1);
            if (beginIndex) >= (0) then begin
                Inc(beginIndex);
                while ((tempPath[(beginIndex) + 1]) = (Self.abPathData.SEPARATORCHAR)) or ((tempPath[(beginIndex) + 1]) = (filePathData_.SEPARATORCHAR)) do begin
                    Inc(beginIndex);
                    Inc(Self.numberOfSeps);
                    if (Self.numberOfSeps) > (2) then begin
                        raise SysUtils.Exception.Create('Should Not Have More Than Two Seps');
                    end;
                end;
                tempPath := Copy(tempPath, (beginIndex) + 1, (System.Length(tempPath)) - (beginIndex));
            end;
        end;
        Exit(tempPath);
end;
    

procedure TAbPath.setName(name: string);
begin
        Self.nameP := name;
end;
    

function TAbPath.getName: string;
begin
        Exit(Self.nameP);
end;
    

function TAbPath.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        if Self.hasSchema() then begin
            stringBuffer.append(Self.schema);
            stringBuffer.append(TAbPath.NETWORK_SEP);
        end;
        stringBuffer.append(Self.getPath());
        stringBuffer.append(Self.nameP);
        Exit(stringBuffer.toString());
end;
    

function TAbPath.toFileSystemString: string;
var
  filePathData_: TFilePathData;
  stringBuffer: TStringMaker;
begin
        if Self.hasSchema() then begin
            filePathData_ := TFilePathData.getInstance();
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.schema);
            stringBuffer.append(Self.commonSeps.COLON);
            stringBuffer.append(filePathData_.PATH_START);
            stringBuffer.append(TFilePathUtil.adjust(Self.getPath()));
            stringBuffer.append(Self.nameP);
            Exit(stringBuffer.toString());
        end else begin
            Exit(TJava.ToString(TFilePathUtil.adjust(Self.getPath())) + Self.nameP);
        end;
end;
    

function TAbPath.getPath: string;
begin
        Exit(Self.path);
end;
    

procedure TAbPath.setPath(path: string);
begin
        Self.path := path;
end;

initialization
  {AB:INITIALIZATION}
  TAbPath.NETWORK_SEP := ':/';
  {AB:END}

end.


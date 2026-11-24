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
// package org.allbinary.business.installer
unit InitDb;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DbConnectionInfo;

type
  {AB:TYPES}
  // Warning you must have sql root access
  TInitDb = class(TObject)
  public
    anyType: TObject;
    METHOD_CALL_GET_HOST_NAME: string;
    METHOD_CALL_ADD_USERS: string;
    METHOD_CALL_ADD_DATABASES: string;
    METHOD_CALL_ADD_TABLES: string;
    METHOD_CALL_TEMP_MAIN_PATH: string;
    METHOD_CALL_MAIN_PATH: string;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(dbConnectionInfo_: TDbConnectionInfo); overload;
        procedure setHelper(anyType: TObject); virtual;
        function getHelper: TObject; virtual;
        function getHostName: string;
        function addUsers: Boolean; virtual;
        function addDatabases: Boolean; virtual;
        function addTables: Boolean; virtual;
        function useTemporaryMainPath: Boolean; virtual;
        function useNormalMainPath: Boolean; virtual;
  end;

implementation
uses
  LicensingException;


{AB:CODE}

procedure TInitDb.InitFields;
begin
  
  Self.METHOD_CALL_GET_HOST_NAME := 'getHostName';
  Self.METHOD_CALL_ADD_USERS := 'addUsers';
  Self.METHOD_CALL_ADD_DATABASES := 'addDatabases';
  Self.METHOD_CALL_ADD_TABLES := 'addTables';
  Self.METHOD_CALL_TEMP_MAIN_PATH := 'useTemporaryMainPath';
  Self.METHOD_CALL_MAIN_PATH := 'useNormalMainPath';
end;
    

constructor TInitDb.Create;
begin
    inherited Create;
    InitFields;
end;
    

constructor TInitDb.Create(dbConnectionInfo_: TDbConnectionInfo);
begin
    inherited Create;
    InitFields;
end;
    

procedure TInitDb.setHelper(anyType: TObject);
begin
        Self.anyType := TJava.Box(anyType);
end;
    

function TInitDb.getHelper: TObject;
begin
        Exit(TJava.Box(Self.anyType));
end;
    

function TInitDb.getHostName: string;
var
  dynamicClass: TClass;
  method_: TMethod;
  result_: string;
begin
        try
            dynamicClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := dynamicClass.getMethod(Self.METHOD_CALL_GET_HOST_NAME, nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(Self.anyType, nil)));
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            Exit(nil);
            end;
        end;
end;
    

function TInitDb.addUsers: Boolean;
var
  dynamicClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            dynamicClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := dynamicClass.getMethod(Self.METHOD_CALL_ADD_USERS, nil);
            result_ := Boolean(method_.invoke(Self.anyType, nil));
            Exit(result_.booleanValue());
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

function TInitDb.addDatabases: Boolean;
var
  dynamicClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            dynamicClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := dynamicClass.getMethod(Self.METHOD_CALL_ADD_DATABASES, nil);
            result_ := Boolean(method_.invoke(Self.anyType, nil));
            Exit(result_.booleanValue());
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

function TInitDb.addTables: Boolean;
var
  dynamicClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            dynamicClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := dynamicClass.getMethod(Self.METHOD_CALL_ADD_TABLES, nil);
            result_ := Boolean(method_.invoke(Self.anyType, nil));
            Exit(result_.booleanValue());
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

function TInitDb.useTemporaryMainPath: Boolean;
var
  dynamicClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            dynamicClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := dynamicClass.getMethod(Self.METHOD_CALL_TEMP_MAIN_PATH, nil);
            result_ := Boolean(method_.invoke(Self.anyType, nil));
            Exit(result_.booleanValue());
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;
    

function TInitDb.useNormalMainPath: Boolean;
var
  dynamicClass: TClass;
  method_: TMethod;
  result_: Boolean;
begin
        try
            dynamicClass := TJava.ToObject(Self.anyType).ClassType;
            method_ := dynamicClass.getMethod(Self.METHOD_CALL_MAIN_PATH, nil);
            result_ := Boolean(method_.invoke(Self.anyType, nil));
            Exit(result_.booleanValue());
        except
            on e: SysUtils.Exception do begin
            Exit(False);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


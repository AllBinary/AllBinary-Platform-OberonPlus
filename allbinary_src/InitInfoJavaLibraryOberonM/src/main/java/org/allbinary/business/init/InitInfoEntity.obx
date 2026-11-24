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
unit InitInfoEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InitSql;

type
  {AB:TYPES}
  TInitInfoEntity = class(TInitSql)
  public
    NAME: string;
    NOTHING: string;
    tableName: string;
    tableData: string;
    NOT_IN_DB: string;
    METHOD_GET: string;
    METHOD_IS: string;
    METHOD_ADD: string;
    CREATED_SUCCESS: string;
    FAILED_TO_CREATE: string;
    procedure InitFields;
        constructor Create;
        function get: Boolean; virtual;
        function is_: Boolean; virtual;
        procedure update; virtual;
        procedure add; virtual;
        function createTable: string; virtual;
  end;

implementation
uses
  InitInfo, BasicArrayList, BasicArrayListD, UserDbInitInfo, StdUtil, PreLogUtil, LogConfigTypeFactory, LogConfigTypes, AbPathData, StringMaker;


{AB:CODE}

procedure TInitInfoEntity.InitFields;
begin
  Self.NAME := 'InitInfoEntity';
  Self.NOTHING := 'NOTHING';
  Self.tableName := 'initdata';
  
  Self.NOT_IN_DB := 'Not In DB';
  Self.METHOD_GET := 'get()';
  Self.METHOD_IS := 'is()';
  Self.METHOD_ADD := 'add()';
  Self.CREATED_SUCCESS := ' Created Successfully';
  Self.FAILED_TO_CREATE := 'Failed to create ';
end;
    

constructor TInitInfoEntity.Create;
var
  stringBuffer: TStringMaker;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(Self.NOTHING);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TInitInfo.getInstance().TESTING);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TInitInfo.getInstance().TESTHTMLPATH);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TInitInfo.getInstance().MAINPATH);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(Self.sqlStrings.PRIMARY_KEY);
        stringBuffer.append(Self.NOTHING);
        stringBuffer.append(Self.sqlStrings.END_);
        Self.tableData := stringBuffer.toString();
        Self.setTable(Self.tableName);
end;
    

function TInitInfoEntity.get: Boolean;
var
  keyAndValue: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        try
            keyAndValue := TStdUtil.getInstance().createHashMap();
            keyAndValue.put(TJava.Box(Self.NOTHING), TJava.Box(Self.NOTHING));
            hashMap_ := Self.getRow(keyAndValue);
            if (hashMap_) <> (nil) then begin
                TInitInfo.getInstance().set_(hashMap_);
                Exit(True);
            end else begin
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
                    TPreLogUtil.put(Self.NOT_IN_DB, TJava.Box(Self.NAME), Self.METHOD_GET);
                end;
                Exit(False);
            end;
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.NAME), Self.METHOD_GET, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TInitInfoEntity.is_: Boolean;
var
  keyAndValue: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        try
            keyAndValue := TStdUtil.getInstance().createHashMap();
            keyAndValue.put(TJava.Box(Self.NOTHING), TJava.Box(Self.NOTHING));
            hashMap_ := Self.getRow(keyAndValue);
            if (hashMap_) <> (nil) then begin
                Exit(True);
            end else begin
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADER) then begin
                    TPreLogUtil.put(Self.NOT_IN_DB, TJava.Box(Self.NAME), Self.METHOD_IS);
                end;
                Exit(False);
            end;
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.NAME), Self.METHOD_IS, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

procedure TInitInfoEntity.update;
begin
        Self.updateWhere(Self.NOTHING, Self.NOTHING, TInitInfo.getInstance().toHashMap());
end;
    

procedure TInitInfoEntity.add;
var
  values: TBasicArrayList;
begin
        try
            values := TBasicArrayListD.Create();
            values.add(TJava.Box(Self.NOTHING));
            values.add(TJava.Box(TInitInfo.getInstance().getTesting()));
            values.add(TJava.Box(TInitInfo.getInstance().getTestHtmlPath()));
            values.add(TJava.Box(TInitInfo.getInstance().getMainPath()));
            Self.insert(values);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().PRELOADERERROR) then begin
                TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self.NAME), Self.METHOD_ADD, TJava.Box(e));
            end;
            end;
        end;
end;
    

function TInitInfoEntity.createTable: string;
var
  stringBuffer: TStringMaker;
begin
        if inherited createTable(Self.tableData) then begin
            Exit(Self.tableName + Self.CREATED_SUCCESS);
        end else begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.FAILED_TO_CREATE);
            stringBuffer.append(Self.tableData);
            stringBuffer.append(TAbPathData.getInstance().EXTENSION_SEP);
            Exit(stringBuffer.toString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


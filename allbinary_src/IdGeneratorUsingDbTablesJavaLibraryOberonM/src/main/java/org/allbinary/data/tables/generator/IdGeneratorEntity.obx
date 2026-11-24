{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.data.tables.generator
unit IdGeneratorEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, AbSqlBean, IdGeneratorEntityInterface;

type
  {AB:TYPES}
  TIdGeneratorEntity = class(TAbSqlBean, IIdGeneratorEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    tableData: string;
    NAME: string;
    VALUE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function get(name: string): Int64; virtual;
        procedure insert(values: TBasicArrayList); virtual;
        procedure delete_(value: string); virtual;
        procedure update(name: string; value: Int64); overload; virtual;
        procedure update(hashMap_: TJavaHashMap<TObject, TObject>); overload; virtual;
        function createTable: string; virtual;
        function dropTable: string; virtual;
        procedure deleteWhere(key: string; value: string); virtual;
  end;

implementation
uses
  BasicArrayListD, UserDbInitInfo, StdUtil, StringMaker;


{AB:CODE}

procedure TIdGeneratorEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'idgenerator';
  
  Self.NAME := 'NAME';
  Self.VALUE := 'VALUE';
end;

function TIdGeneratorEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TIdGeneratorEntity.Create;
begin
        inherited Create(TUserDbInitInfo.Create());
        InitFields;
        Self.tableData := TStringMaker.Create().append(Self.sqlStrings.CREATE_TABLE).append(Self.tableName).append(Self.sqlStrings.START).append(Self.NAME).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(Self.VALUE).append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(Self.NAME).append(Self.sqlStrings.END_).toString();
        inherited setTableName(Self.tableName);
end;
    

// throws Exception
function TIdGeneratorEntity.get(name: string): Int64;
var
  keysAndValues: TJavaHashMap<TObject, TObject>;
  hashMap_: TJavaHashMap<TObject, TObject>;
  value: string;
begin
        keysAndValues := TStdUtil.getInstance().createHashMap();
        keysAndValues.put(TJava.Box(Self.NAME), TJava.Box(name));
        hashMap_ := inherited getRow(keysAndValues);
        if ((TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.NAME))))).compareTo(name)) <> (0) then begin
            raise SysUtils.Exception.Create('results do not match');
        end;
        value := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.VALUE))));
        Exit(StrToInt64(value));
end;
    

procedure TIdGeneratorEntity.insert(values: TBasicArrayList);
begin
        try
            inherited insert(values);
            Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), INSERT);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), INSERT, TJava.Box(e));
            end;
        end;
end;
    

procedure TIdGeneratorEntity.delete_(value: string);
begin
        try
            inherited deleteWhere(Self.NAME, value);
            Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), Self.commonStrings.delete_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.delete_, TJava.Box(e));
            end;
        end;
end;
    

procedure TIdGeneratorEntity.update(name: string; value: Int64);
var
  map: TJavaHashMap<TObject, TObject>;
begin
        map := TStdUtil.getInstance().createHashMap();
        map.put(TJava.Box(Self.NAME), TJava.Box(name));
        map.put(TJava.Box(Self.VALUE), TJava.Box(value));
        Self.update(map);
end;
    

procedure TIdGeneratorEntity.update(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(Self.NAME, TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(Self.NAME)))), hashMap_);
end;
    

function TIdGeneratorEntity.createTable: string;
var
  returnStr: string;
begin
        returnStr := inherited createTable(Self.tableData);
        Exit(returnStr);
end;
    

function TIdGeneratorEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TIdGeneratorEntity.deleteWhere(key: string; value: string);
begin
        inherited deleteWhere(key, value);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


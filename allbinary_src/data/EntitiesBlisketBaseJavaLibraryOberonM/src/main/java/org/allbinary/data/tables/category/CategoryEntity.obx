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
// package org.allbinary.data.tables.category
unit CategoryEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Category, CategoryFactoryInterface, LogUtil, AbSqlBean, CategoryEntityInterface;

type
  {AB:TYPES}
  TCategoryEntity = class(TAbSqlBean, ICategoryEntityInterface)
  public
    logUtil: TLogUtil;
    tableName: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryFactoryInterface_: ICategoryFactoryInterface); overload;
        constructor Create; overload;
        procedure insert(category_: TCategory); overload; virtual;
        procedure delete_(value: string); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function dropTable: string; virtual;
        procedure insert(values: TBasicArrayList); overload; virtual;
  end;

implementation
uses
  BasicArrayListD, CategoryData, InventoryDbInitInfo, StdUtil, StringMaker;


{AB:CODE}

procedure TCategoryEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tableName := 'categories';
end;

function TCategoryEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryEntity.Create(categoryFactoryInterface_: ICategoryFactoryInterface);
begin
        inherited Create(TInventoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

constructor TCategoryEntity.Create;
begin
        inherited Create(TInventoryDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.tableName);
end;
    

procedure TCategoryEntity.insert(category_: TCategory);
var
  categoryVector: TBasicArrayList;
  values: TBasicArrayList;
begin
        try
            categoryVector := category_.toVector();
            values := TBasicArrayListD.Create();
            values.add(TJava.Box(categoryVector.get(0)));
            values.add(TJava.Box(categoryVector.get(1)));
            inherited insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), INSERT, TJava.Box(e));
            end;
            end;
        end;
end;
    

procedure TCategoryEntity.delete_(value: string);
begin
        try
            inherited deleteWhere(TCategoryData.getInstance().NAME, value);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.commonStrings.SUCCESS, TJava.Box(Self), Self.commonStrings.delete_);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.delete_, TJava.Box(e));
            end;
            end;
        end;
end;
    

function TCategoryEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE);
        stringBuffer.append(Self.tableName);
        stringBuffer.append(Self.sqlStrings.START);
        stringBuffer.append(TCategoryData.getInstance().NAME);
        stringBuffer.append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append(TCategoryData.getInstance().LEVEL);
        stringBuffer.append(Self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append(Self.sqlStrings.PRIMARY_KEY);
        stringBuffer.append(TCategoryData.getInstance().NAME);
        stringBuffer.append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TCategoryEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;
    

procedure TCategoryEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(TCategoryData.getInstance().NAME, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(TCategoryData.getInstance().NAME)))), updatedValues);
end;
    

function TCategoryEntity.dropTable: string;
begin
        Exit(inherited dropTable());
end;
    

procedure TCategoryEntity.insert(values: TBasicArrayList);
begin
        inherited insert(values);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


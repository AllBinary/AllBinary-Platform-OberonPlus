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
// package org.allbinary.data.tables.staticpages
unit StaticPagesEntity;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicItemData, LogUtil, AbSqlBean, StaticPagesEntityInterface;

type
  {AB:TYPES}
  TStaticPagesEntity = class(TAbSqlBean, IStaticPagesEntityInterface)
  public
    logUtil: TLogUtil;
    basicItemData: TBasicItemData;
    TABLENAME: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure insert(values: TBasicArrayList); virtual;
        function getFile(store: string; keywords: string): string; virtual;
        procedure delete_(keywords: string); virtual;
        function dropTable: string; virtual;
        procedure update(updatedValues: TJavaHashMap<TObject, TObject>); virtual;
        function createTableStatement: string;
        function createTable: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StoreFrontData, StaticPagesDbInitInfo, StdUtil, SearchData, StringMaker, CommonSeps;


{AB:CODE}

procedure TStaticPagesEntity.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicItemData := TBasicItemData.getInstance();
  Self.TABLENAME := 'staticpages';
end;

function TStaticPagesEntity.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStaticPagesEntity.Create;
begin
        inherited Create(TStaticPagesDbInitInfo.Create());
        InitFields;
        Self.setTableName(Self.TABLENAME);
end;
    

procedure TStaticPagesEntity.insert(values: TBasicArrayList);
begin
        try
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
    

function TStaticPagesEntity.getFile(store: string; keywords: string): string;
var
  whereHashMap: TJavaHashMap<TObject, TObject>;
  file_: string;
begin
        whereHashMap := TStdUtil.getInstance().createHashMap();
        whereHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(store));
        whereHashMap.put(TJava.Box(Self.basicItemData.KEYWORDS), TJava.Box(keywords));
        file_ := inherited getField(whereHashMap, TSearchData.PAGE);
        Exit(file_);
end;
    

procedure TStaticPagesEntity.delete_(keywords: string);
begin
        inherited deleteWhere(Self.basicItemData.KEYWORDS, keywords);
end;
    

function TStaticPagesEntity.dropTable: string;
var
  returnStr: string;
begin
        returnStr := inherited dropTable();
        Exit(returnStr);
end;
    

procedure TStaticPagesEntity.update(updatedValues: TJavaHashMap<TObject, TObject>);
begin
        inherited updateWhere(Self.basicItemData.KEYWORDS, TJava.UnboxString(TJava.ToObject(updatedValues.get(TJava.Box(Self.basicItemData.KEYWORDS)))), updatedValues);
end;
    

function TStaticPagesEntity.createTableStatement: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.CREATE_TABLE).append(Self.TABLENAME).append(Self.sqlStrings.START).append(TStoreFrontData.getInstance().NAME).append(Self.sqlTypeStrings.SIXTY_CHAR_COLUMN_NOT_NULL).append(Self.basicItemData.KEYWORDS).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(TSearchData.PAGE).append(Self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(Self.sqlStrings.PRIMARY_KEY).append(TStoreFrontData.getInstance().NAME).append(TCommonSeps.getInstance().COMMA_SEP).append(Self.basicItemData.KEYWORDS).append(Self.sqlStrings.END_);
        Exit(stringBuffer.toString());
end;
    

function TStaticPagesEntity.createTable: string;
begin
        Exit(inherited createTable(Self.createTableStatement()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


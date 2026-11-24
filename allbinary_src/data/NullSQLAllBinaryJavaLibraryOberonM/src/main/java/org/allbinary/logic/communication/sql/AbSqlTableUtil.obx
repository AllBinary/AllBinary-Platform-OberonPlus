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
// package org.allbinary.logic.communication.sql
unit AbSqlTableUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, StringUtil, CommonSeps, CommonStrings, SqlStrings, AbSqlTable;

type
  {AB:TYPES}
  TAbSqlTableUtil = class(TObject)
  public
    TABLE_LABEL: string;
    stringUtil: TStringUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    sqlStrings: TSqlStrings;
    class var instance: TAbSqlTableUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAbSqlTableUtil; static;
        function backupTable(abSqlTable_: TAbSqlTable): string; virtual;
        function restoreTable(abSqlTable_: TAbSqlTable; portion_: TPortion): string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TAbSqlTableUtil.InitFields;
begin
  Self.TABLE_LABEL := 'Table: ';
  Self.stringUtil := TStringUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.sqlStrings := TSqlStrings.getInstance();
end;

constructor TAbSqlTableUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAbSqlTableUtil.getInstance: TAbSqlTableUtil;
begin
        Exit(TAbSqlTableUtil.instance);
end;
    

function TAbSqlTableUtil.backupTable(abSqlTable_: TAbSqlTable): string;
var
  tableName: string;
begin
    TJava.MonitorEnter(Self);
    try
        tableName := abSqlTable_.getTableName();
        Exit(Self.TABLE_LABEL + tableName + ' Backup Failed');
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTableUtil.restoreTable(abSqlTable_: TAbSqlTable; portion_: TPortion): string;
var
  tableName: string;
  stringBuffer: TStringMaker;
begin
    TJava.MonitorEnter(Self);
    try
        tableName := abSqlTable_.getTableName();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.TABLE_LABEL);
        stringBuffer.append(tableName);
        stringBuffer.append(' Restoration Failed');
        Exit(stringBuffer.toString());
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TAbSqlTableUtil.instance := TAbSqlTableUtil.Create();
  {AB:END}

end.


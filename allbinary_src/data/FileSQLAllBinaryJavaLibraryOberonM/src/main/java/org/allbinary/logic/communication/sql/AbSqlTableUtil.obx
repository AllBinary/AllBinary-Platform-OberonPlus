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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, AbPath, LogUtil, CommonSeps, CommonStrings, StringUtil, SqlStrings, AbSqlTable;

type
  {AB:TYPES}
  TAbSqlTableUtil = class(TObject)
  public
    logUtil: TLogUtil;
    EXTENSION: string;
    END_: string;
    SAVING_BACKUP_PATH: string;
    FILE_LABEL: string;
    METHOD_RESTORE_TABLE: string;
    METHOD_BACKUP_TABLE: string;
    METHOD_BACKUP_FILE: string;
    METHOD_GET_OUTPUT_STREAM: string;
    TABLE_CREATION_SUCCESS: string;
    DROPPED_SUCCESS: string;
    SAVING: string;
    APPENDING: string;
    TABLE_LABEL: string;
    BACKUP_SUCCESS: string;
    ERROR_CREATING: string;
    TOTAL_LABEL: string;
    SECTION_LABEL: string;
    DASH: string;
    PORTION_RESTORED: string;
    specialCharArray: TArray<WideChar>;
    NEW_LINE: string;
    stringUtil: TStringUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    sqlStrings: TSqlStrings;
    class var instance: TAbSqlTableUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAbSqlTableUtil; static;
        function getOutputStream(backupPath: string; tableName: string): TOutputStream;
        function backupFile(path: TAbPath; backupPath: string; tableName: string): Boolean;
        function convertNewLines(value: string): string;
        function backupTable(abSqlTable_: TAbSqlTable): string; virtual;
        function restoreTable(abSqlTable_: TAbSqlTable; portion_: TPortion): string; virtual;
  end;

implementation
uses
  StringMaker, AbFileOutputStream, BufferedLineReader, StreamUtil, AbFile, FileUtil, Directory, AbPathData, PATH_GLOBALS;


{AB:CODE}

procedure TAbSqlTableUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.EXTENSION := '.adb';
  Self.END_ := ''')'#10'';
  Self.SAVING_BACKUP_PATH := 'Saving Backup: Path: ';
  Self.FILE_LABEL := ' File: ';
  Self.METHOD_RESTORE_TABLE := 'restoreTable()';
  Self.METHOD_BACKUP_TABLE := 'backupTable()';
  Self.METHOD_BACKUP_FILE := 'backupFile()';
  Self.METHOD_GET_OUTPUT_STREAM := 'getOutputStream()';
  Self.TABLE_CREATION_SUCCESS := 'Table Creation Successful: ';
  Self.DROPPED_SUCCESS := ' Dropped Successfully';
  Self.SAVING := 'Saving: ';
  Self.APPENDING := 'Appending: ';
  Self.TABLE_LABEL := 'Table: ';
  Self.BACKUP_SUCCESS := ' Backup Success';
  Self.ERROR_CREATING := 'Error Creating: ';
  Self.TOTAL_LABEL := ' Total: ';
  Self.SECTION_LABEL := ' Section: ';
  Self.DASH := ' - ';
  Self.PORTION_RESTORED := ' Portion Restored';
  Self.specialCharArray := TArray<WideChar>.Create(#10, '\f', #13);
  Self.NEW_LINE := '\'#10'';
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
    

function TAbSqlTableUtil.getOutputStream(backupPath: string; tableName: string): TOutputStream;
var
  fileName: string;
  backupFilePath: TAbPath;
  backupFile: TAbFile;
  outputStream_: TOutputStream;
begin
    TJava.MonitorEnter(Self);
    try
        try
            fileName := tableName + Self.EXTENSION;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.SAVING + tableName, TJava.Box(Self), Self.METHOD_GET_OUTPUT_STREAM);
            end;
            backupFilePath := TAbPath.Create(backupPath, fileName);
            backupFile := TAbFile.createAbFile(backupFilePath);
            if backupFile.exists() then begin
                Self.backupFile(backupFilePath, backupPath, tableName);
                backupFile.delete_();
            end;
            backupFile.createNewFile();
            outputStream_ := TAbFileOutputStream.Create(backupFile);
            Exit(outputStream_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put('Create File', TJava.Box(Self), Self.METHOD_GET_OUTPUT_STREAM, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTableUtil.backupFile(path: TAbPath; backupPath: string; tableName: string): Boolean;
var
  calendar: TCalendar;
  timeLong: Int64;
  time: string;
  stringBuffer: TStringMaker;
  fileName: string;
  backupAbPath: TAbPath;
  backupFileBak: TAbFile;
begin
    TJava.MonitorEnter(Self);
    try
        try
            calendar := TCalendar.getInstance();
            timeLong := calendar.getTimeInMillis();
            time := timeLong.toString();
            stringBuffer := TStringMaker.Create();
            fileName := tableName + Self.EXTENSION;
            stringBuffer.append(backupPath);
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            stringBuffer.append(time);
            backupAbPath := TAbPath.Create(stringBuffer.toString());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.SAVING_BACKUP_PATH);
                stringBuffer.append(backupAbPath.toFileSystemString());
                stringBuffer.append(Self.FILE_LABEL);
                stringBuffer.append(fileName);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_BACKUP_FILE);
            end;
            TDirectory.create_(backupAbPath);
            backupFileBak := TAbFile.createAbFile(backupAbPath.toFileSystemString());
            backupFileBak.createNewFile();
            TFileUtil.getInstance().copy(path, backupAbPath);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.METHOD_BACKUP_FILE, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTableUtil.convertNewLines(value: string): string;
var
  stringBuffer: TStringMaker;
  index: Integer;
  lastIndex: Integer;
  nextLine: string;
begin
        stringBuffer := TStringMaker.Create();
        index := 0;
        lastIndex := 0;
        while (index) < (System.Length(value)) do begin
            index := value.indexOf(Self.specialCharArray[0], lastIndex);
            if (index) <> (-1) then begin
                nextLine := Copy(value, (lastIndex) + 1, ((index) - (1)) - (lastIndex));
                stringBuffer.append(nextLine);
                stringBuffer.append(Self.NEW_LINE);
                lastIndex := (index) + (1);
            end else begin
                Break;
            end;
        end;
        if (lastIndex) < (System.Length(value)) then begin
            stringBuffer.append(Copy(value, (lastIndex) + 1, (System.Length(value)) - (lastIndex)));
        end;
        Exit(stringBuffer.toString());
end;
    

function TAbSqlTableUtil.backupTable(abSqlTable_: TAbSqlTable): string;
var
  tableName: string;
  count: Integer;
  sqlStatement: string;
  path: string;
  rset: TResultSet;
  rsmd: TResultSetMetaData;
  colNum: Integer;
  QUERY_START: string;
  stringBuffer: TStringMaker;
  outputStream_: TOutputStream;
  value: string;
  i: Integer;
  sqlStatementLine: string;
begin
    TJava.MonitorEnter(Self);
    try
        tableName := abSqlTable_.getTableName();
        try
            count := 0;
            sqlStatement := TJava.ToString(Self.sqlStrings.SELECT_ALL_FROM) + tableName;
            path := (Torg.allbinary.globals.URLGLOBALS.getMainPath()) + (TPATH_GLOBALS.getInstance().BACKUP_PATH);
            if not (TDirectory.create_(TAbPath.Create(path))) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ERROR_CREATING + TJava.ToString(path), TJava.Box(Self), Self.METHOD_BACKUP_TABLE);
                end;
            end;
            rset := abSqlTable_.executeSQLStatement(sqlStatement);
            rsmd := rset.getMetaData();
            colNum := rsmd.getColumnCount();
            QUERY_START := string.Create().append(Self.sqlStrings.INSERT_INTO).append(tableName).append(Self.sqlStrings.VALUES).toString();
            stringBuffer := TStringMaker.Create();
            outputStream_ := Self.getOutputStream(path, tableName);
            while rset.next() do begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(QUERY_START);
                for i := 1 to colNum - 1 do begin
                    value := rset.getString(i);
                    stringBuffer.append(Self.convertNewLines(value));
                    stringBuffer.append(Self.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
                end;
                stringBuffer.append(rset.getString(colNum));
                stringBuffer.append(Self.END_);
                sqlStatementLine := stringBuffer.toString();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.APPENDING + sqlStatementLine, TJava.Box(Self), Self.METHOD_BACKUP_TABLE);
                end;
                outputStream_.write(TJava.GetBytes(sqlStatementLine));
            end;
            TStreamUtil.getInstance().close(outputStream_);
            Exit(Self.TABLE_LABEL + tableName + Self.BACKUP_SUCCESS);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put('Backup Table Failed'#10'SQL Statement', TJava.Box(Self), Self.METHOD_BACKUP_TABLE, TJava.Box(e));
            end;
            Exit(Self.TABLE_LABEL + tableName + ' Backup Failed');
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTableUtil.restoreTable(abSqlTable_: TAbSqlTable; portion_: TPortion): string;
var
  tableName: string;
  path: string;
  current: Integer;
  backupFile: TAbFile;
  bufferedLineReader_: TBufferedLineReader;
  size: Int64;
  section: Int64;
  start: Int64;
  end_: Int64;
  stringBuffer: TStringMaker;
  line: string;
begin
    TJava.MonitorEnter(Self);
    try
        tableName := abSqlTable_.getTableName();
        try
            path := (Torg.allbinary.globals.URLGLOBALS.getMainPath()) + (TPATH_GLOBALS.getInstance().BACKUP_PATH);
            current := portion_.getCurrent().intValue();
            if (current) = (0) then begin
                if TDirectory.create_(TAbPath.Create(path)) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                        Self.logUtil.putF(Self.ERROR_CREATING + TJava.ToString(path), TJava.Box(Self), Self.METHOD_RESTORE_TABLE);
                    end;
                end;
            end;
            backupFile := TAbFile.createAbFile(path, tableName + Self.EXTENSION);
            bufferedLineReader_ := TBufferedLineReader.Create(backupFile);
            size := bufferedLineReader_.getSize();
            section := ((size) div (Int64(portion_.getTotal().intValue()))) + (1);
            start := (section) * (Int64(current));
            end_ := (start) + (section);
            if (end_) > (size) then begin
                end_ := size;
            end;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.TOTAL_LABEL);
            stringBuffer.append(size);
            stringBuffer.append(Self.SECTION_LABEL);
            stringBuffer.append(start);
            stringBuffer.append(Self.DASH);
            stringBuffer.append(end_);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.METHOD_RESTORE_TABLE);
            end;
            bufferedLineReader_.readUpToLines(start);
            line := Self.stringUtil.EMPTY_STRING;
            while ((bufferedLineReader_.getCurrent()) < (end_)) and (bufferedLineReader_.ready()) do begin
                line := bufferedLineReader_.readLine();
                if (System.Length(line)) > (1) then begin
                    abSqlTable_.executeSQLStatement(line);
                end;
            end;
            stringBuffer.append(Self.commonSeps.SPACE);
            stringBuffer.append(Self.TABLE_LABEL);
            stringBuffer.append(tableName);
            stringBuffer.append(Self.PORTION_RESTORED);
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put('Restore Table Failed'#10'SQL Statement', TJava.Box(Self), Self.METHOD_RESTORE_TABLE, TJava.Box(e));
            end;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.TABLE_LABEL);
            stringBuffer.append(tableName);
            stringBuffer.append(' Restoration Failed');
            Exit(stringBuffer.toString());
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TAbSqlTableUtil.instance := TAbSqlTableUtil.Create();
  {AB:END}

end.


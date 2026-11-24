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
// package taghelpers.transform.info
unit TransformInfoHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicTable, Portion, LogUtil;

type
  {AB:TYPES}
  TTransformInfoHelper = class(TBasicTable)
  public
    logUtil: TLogUtil;
    portion: TPortion;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
  end;

implementation
uses
  TransformInfoEntityBuilder, AbSqlTableUtil;


{AB:CODE}

procedure TTransformInfoHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TTransformInfoHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.portion := TPortion.Create(hashMap_);
end;
    

function TTransformInfoHelper.drop: string;
var
  error: string;
begin
        try
            Exit(TTransformInfoEntityBuilder.getInstance().dropTable());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to drop view info table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.DROP, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TTransformInfoHelper.create_: string;
var
  error: string;
begin
        try
            Exit(TTransformInfoEntityBuilder.getInstance().createTable());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to create view info table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TTransformInfoHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TTransformInfoEntityBuilder.getInstance(), Self.portion);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'restore()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to restore backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'restore()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TTransformInfoHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Backup Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TTransformInfoEntityBuilder.getInstance());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'backup()');
            end;
            Exit(result_);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to make backup';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'backup()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


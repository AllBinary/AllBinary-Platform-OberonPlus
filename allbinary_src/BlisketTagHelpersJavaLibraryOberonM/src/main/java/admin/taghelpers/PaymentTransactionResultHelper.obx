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
// package admin.taghelpers
unit PaymentTransactionResultHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, LogUtil, BasicTable;

type
  {AB:TYPES}
  TPaymentTransactionResultHelper = class(TBasicTable)
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
  TransactionResultEntity, AbSqlTableUtil;


{AB:CODE}

procedure TPaymentTransactionResultHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TPaymentTransactionResultHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.portion := TPortion.Create(hashMap_);
end;
    

function TPaymentTransactionResultHelper.drop: string;
var
  success: string;
  error: string;
begin
        try
            success := TTransactionResultEntity.Create().dropTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), Self.commonStrings.DROP);
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to drop payment transaction result table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.DROP, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TPaymentTransactionResultHelper.create_: string;
var
  success: string;
  error: string;
begin
        try
            success := TTransactionResultEntity.Create().createTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'create()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to create payment transaction result table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TPaymentTransactionResultHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TTransactionResultEntity.Create(), Self.portion);
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
    

function TPaymentTransactionResultHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TTransactionResultEntity.Create());
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


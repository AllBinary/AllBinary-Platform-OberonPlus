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
unit PaymentHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, WeblisketSession, LogUtil, Table;

type
  {AB:TYPES}
  TPaymentHelper = class(TTable)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    request: THttpServletRequest;
    value: string;
    portion: TPortion;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getFormData;
        function insert: string; virtual;
        function select: string; virtual;
        function delete_: string; virtual;
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
        function update: string; virtual;
  end;

implementation
uses
  PaymentFactory, PaymentInterface, PaymentEntity, PaymentEntityFactory, AbSqlTableUtil, LicensingException;


{AB:CODE}

procedure TPaymentHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
end;
    

constructor TPaymentHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.portion := TPortion.Create(hashMap_);
        Self.getFormData();
end;
    

procedure TPaymentHelper.getFormData;
begin
        Self.value := Self.request.getParameter('VALUE');
end;
    

function TPaymentHelper.insert: string;
var
  success: string;
  paymentEntity_: TPaymentEntity;
  paymentInterface_: IPaymentInterface;
  error: string;
begin
        try
            success := 'Successfully Added Payment';
            paymentEntity_ := TPaymentEntityFactory.getInstance().getPaymentEntityInstance();
            paymentInterface_ := TPaymentFactory.getInstance(Self.request);
            paymentEntity_.add(Self.weblisketSession.getUserName(), TJava.ToObject(paymentInterface_));
            paymentEntity_.setDefault(Self.weblisketSession.getUserName(), paymentEntity_.getLastId(Self.weblisketSession.getUserName()));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'addPayment()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add Payment';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'addPayment()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TPaymentHelper.select: string;
var
  success: string;
  paymentEntity_: TPaymentEntity;
  error: string;
begin
        try
            success := 'Successfully Selected Payment';
            paymentEntity_ := TPaymentEntityFactory.getInstance().getPaymentEntityInstance();
            paymentEntity_.setDefault(Self.weblisketSession.getUserName(), Self.value);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'selectPayment()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to select Payment';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'selectPayment()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TPaymentHelper.delete_: string;
var
  success: string;
  paymentEntity_: TPaymentEntity;
  paymentInterface_: IPaymentInterface;
  error: string;
begin
        try
            success := 'Successfully Removed Payment';
            paymentEntity_ := TPaymentEntityFactory.getInstance().getPaymentEntityInstance();
            paymentEntity_.remove(Self.weblisketSession.getUserName(), Self.value);
            paymentInterface_ := paymentEntity_.getDefault(Self.weblisketSession.getUserName());
            if (paymentInterface_) = (nil) then begin
                paymentEntity_.setDefault(Self.weblisketSession.getUserName(), paymentEntity_.getLastId(Self.weblisketSession.getUserName()));
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'removePayment()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to remove Payment';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removePayment()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TPaymentHelper.drop: string;
var
  paymentEntity_: TPaymentEntity;
  success: string;
  error: string;
begin
        try
            paymentEntity_ := TPaymentEntityFactory.getInstance().getPaymentEntityInstance();
            success := paymentEntity_.dropTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), Self.commonStrings.DROP);
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to drop Admin table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.DROP, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TPaymentHelper.create_: string;
var
  paymentEntity_: TPaymentEntity;
  success: string;
  error: string;
begin
        try
            paymentEntity_ := TPaymentEntityFactory.getInstance().getPaymentEntityInstance();
            success := paymentEntity_.createTable();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'create()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to create user table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TPaymentHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TPaymentEntityFactory.getInstance().getPaymentEntityInstance(), Self.portion);
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
    

function TPaymentHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Backup Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TPaymentEntityFactory.getInstance().getPaymentEntityInstance());
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
    

// throws LicensingException
function TPaymentHelper.update: string;
begin
        Exit(Self.commonStrings.NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


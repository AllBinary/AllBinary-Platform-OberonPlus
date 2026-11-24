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
unit PaymentGatewayHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, WeblisketSession, LogUtil, BasicTable;

type
  {AB:TYPES}
  TPaymentGatewayHelper = class(TBasicTable)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    httpServletRequest: THttpServletRequest;
    portion: TPortion;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function insert: string; virtual;
        function update: string; virtual;
        function delete_: string; virtual;
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
  end;

implementation
uses
  PaymentGatewayInterface, PaymentGatewayInterfaceFactory, BasicPaymentTypeUtil, PaymentGatewayEntityFactory, AbSqlTableUtil, StringMaker;


{AB:CODE}

procedure TPaymentGatewayHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TPaymentGatewayHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        try
            Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
            Self.httpServletRequest := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
            Self.portion := TPortion.Create(hashMap_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().PAYMENTERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

function TPaymentGatewayHelper.insert: string;
var
  paymentGatewayInterface_: IPaymentGatewayInterface;
  success: string;
  error: string;
begin
        try
            paymentGatewayInterface_ := TPaymentGatewayInterfaceFactory.Create().getInstance(Self.httpServletRequest);
            paymentGatewayInterface_.setStoreName(Self.weblisketSession.getStoreName());
            TPaymentGatewayEntityFactory.getInstance().add(TJava.ToObject(paymentGatewayInterface_));
            success := 'Successfully Added New Payment Gateway';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success + '<br/>');
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'add()', TJava.Box(e));
            end;
            Exit(error + '<br>' + 'Exception: ' + TJava.ToString(e) + '<br>');
            end;
        end;
end;
    

function TPaymentGatewayHelper.update: string;
var
  paymentGatewayInterface_: IPaymentGatewayInterface;
  stringBuffer: TStringMaker;
  success: string;
  error: string;
begin
        try
            paymentGatewayInterface_ := TPaymentGatewayInterfaceFactory.Create().getInstance(Self.httpServletRequest);
            paymentGatewayInterface_.setStoreName(Self.weblisketSession.getStoreName());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Gateway Name: ');
                stringBuffer.append(paymentGatewayInterface_.getName());
                stringBuffer.append(' HashMap=');
                stringBuffer.append(paymentGatewayInterface_.toHashMap(True).toString());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'update()');
            end;
            TPaymentGatewayEntityFactory.getInstance().update(paymentGatewayInterface_);
            success := 'Successfully Updated Payment Gateway information';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success + '<br/>');
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update payment gateway information';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error + '<br/>' + 'Exception: ' + TJava.ToString(e) + '<br/>');
            end;
        end;
end;
    

function TPaymentGatewayHelper.delete_: string;
var
  paymentGatewayInterface_: IPaymentGatewayInterface;
  storeName: string;
  gatewayName: string;
  stringBuffer: TStringMaker;
  success: string;
  error: string;
begin
        try
            paymentGatewayInterface_ := TPaymentGatewayInterfaceFactory.Create().getInstance(Self.httpServletRequest);
            paymentGatewayInterface_.setStoreName(Self.weblisketSession.getStoreName());
            storeName := paymentGatewayInterface_.getStoreName();
            gatewayName := paymentGatewayInterface_.getName();
            TPaymentGatewayEntityFactory.getInstance().remove(storeName, TBasicPaymentTypeUtil.getInstance().get(gatewayName));
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Successfully Removed payment gateway where store name=');
            stringBuffer.append(storeName);
            stringBuffer.append(' and gateway name=');
            stringBuffer.append(gatewayName);
            success := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success + '<br/>');
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to remove payment gateway from table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'remove()', TJava.Box(e));
            end;
            Exit(error + '<br/>' + 'Exception: ' + TJava.ToString(e) + '<br>');
            end;
        end;
end;
    

function TPaymentGatewayHelper.drop: string;
var
  success: string;
  error: string;
begin
        try
            success := TPaymentGatewayEntityFactory.getInstance().dropTable();
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
    

function TPaymentGatewayHelper.create_: string;
var
  success: string;
  error: string;
begin
        try
            success := TPaymentGatewayEntityFactory.getInstance().createTable();
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
    

function TPaymentGatewayHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TPaymentGatewayEntityFactory.getInstance(), Self.portion);
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
    

function TPaymentGatewayHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TPaymentGatewayEntityFactory.getInstance());
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


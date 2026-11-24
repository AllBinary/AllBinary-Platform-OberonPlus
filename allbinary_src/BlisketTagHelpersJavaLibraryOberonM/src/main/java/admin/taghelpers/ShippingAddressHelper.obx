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
unit ShippingAddressHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Portion, StreetAddress, WeblisketSession, LogUtil, StringUtil, BasicTable;

type
  {AB:TYPES}
  TShippingAddressHelper = class(TBasicTable)
  public
    logUtil: TLogUtil;
    stringUtil: TStringUtil;
    weblisketSession: TWeblisketSession;
    request: THttpServletRequest;
    userName: string;
    streetAddress: TStreetAddress;
    portion: TPortion;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        procedure getAddressForm;
        function drop: string; virtual;
        function create_: string; virtual;
        function restore: string; virtual;
        function backup: string; virtual;
        function insert: string; virtual;
        function update: string; virtual;
        function setToBillingAddress: string;
        function delete_: string; virtual;
        function set_: string; virtual;
  end;

implementation
uses
  UserData, BillingAddressesEntityFactory, ShippingAddressesEntity, ShippingAddressesEntityFactory, WeblisketSessionData, AbSqlTableUtil;


{AB:CODE}

procedure TShippingAddressHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  
  
  
  
  
end;
    

constructor TShippingAddressHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        Self.weblisketSession := TWeblisketSession.Create(hashMap_, pageContext_);
        Self.portion := TPortion.Create(hashMap_);
        Self.getAddressForm();
end;
    

procedure TShippingAddressHelper.getAddressForm;
begin
        Self.userName := Self.request.getParameter(TUserData.USERNAME);
        if (Self.userName) = ('') then begin
            Self.userName := Self.request.getParameter(TWeblisketSessionData.REMOVABLEUSERNAME);
        end;
        Self.streetAddress := TStreetAddress.Create(Self.request);
end;
    

function TShippingAddressHelper.drop: string;
var
  success: string;
  error: string;
begin
        try
            success := TShippingAddressesEntity.Create(Self.stringUtil.EMPTY_STRING).drop();
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
    

function TShippingAddressHelper.create_: string;
var
  success: string;
  error: string;
begin
        try
            success := TShippingAddressesEntity.Create(Self.stringUtil.EMPTY_STRING).createTable();
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
    

function TShippingAddressHelper.restore: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Restore Successful';
            result_ := TAbSqlTableUtil.getInstance().restoreTable(TShippingAddressesEntity.Create(TStringUtil.getInstance().EMPTY_STRING), Self.portion);
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
    

function TShippingAddressHelper.backup: string;
var
  success: string;
  result_: string;
  error: string;
begin
        try
            success := 'Backup Successful';
            result_ := TAbSqlTableUtil.getInstance().backupTable(TShippingAddressesEntity.Create(TStringUtil.getInstance().EMPTY_STRING));
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
    

function TShippingAddressHelper.insert: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Successfully Added Shipping Address';
            TShippingAddressesEntityFactory.getInstance().getInstance(Self.weblisketSession.getUserName()).add(Self.streetAddress);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add Shipping streetAddress';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insert', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TShippingAddressHelper.update: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Successfully Updated Shipping Address';
            TShippingAddressesEntityFactory.getInstance().getInstance(Self.weblisketSession.getUserName()).update(Self.streetAddress);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF('Successfull update of a Users Shipping Address table', TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed update of a Users Shipping Address Table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TShippingAddressHelper.setToBillingAddress: string;
var
  streetAddress_: TStreetAddress;
  error: string;
begin
        try
            streetAddress_ := TBillingAddressesEntityFactory.getInstance().getInstance(Self.weblisketSession.getUserName()).getDefault();
            if (streetAddress_) <> (nil) then begin
                TShippingAddressesEntityFactory.getInstance().getInstance(Self.weblisketSession.getUserName()).add(streetAddress_);
            end else begin
                Exit('No Billing Address');
            end;
            Exit(TStringUtil.getInstance().EMPTY_STRING);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed Setting Shipping address to Billing Address';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setToBillingAddress()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TShippingAddressHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Successfully Removed Shipping Address';
            TShippingAddressesEntityFactory.getInstance().getInstance(Self.weblisketSession.getUserName()).remove(Self.streetAddress.getId());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'remove()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to remove Shipping Address';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'remove()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TShippingAddressHelper.set_: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Successfully Set Shipping Address';
            TShippingAddressesEntityFactory.getInstance().getInstance(Self.weblisketSession.getUserName()).setDefault(Self.streetAddress.getId());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'set()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to set Shipping Address';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'set()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


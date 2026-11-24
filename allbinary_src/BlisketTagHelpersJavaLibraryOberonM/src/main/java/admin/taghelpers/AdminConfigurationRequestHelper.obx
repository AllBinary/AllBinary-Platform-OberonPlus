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
unit AdminConfigurationRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ModifyTable;

type
  {AB:TYPES}
  TAdminConfigurationRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    request: THttpServletRequest;
    procedure InitFields;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function insert: string; virtual;
        function delete_: string; virtual;
        function update: string; virtual;
  end;

implementation
uses
  AdminConfiguration, AdminConfigurationInterface;


{AB:CODE}

procedure TAdminConfigurationRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TAdminConfigurationRequestHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
            Self.logUtil.putF(Self.commonStrings.CONSTRUCTOR_, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
        Self.request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
end;
    

function TAdminConfigurationRequestHelper.insert: string;
var
  success: string;
  adminConfigurationInterface_: IAdminConfigurationInterface;
  error: string;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'insert()');
            end;
            success := 'Successfully inserted AdminConfiguration';
            adminConfigurationInterface_ := (TJava.ToObject(TAdminConfiguration.Create(Self.request)) as IAdminConfigurationInterface);
            adminConfigurationInterface_.write();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to created AdminConfiguration';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insert()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TAdminConfigurationRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Successfully deleted AdminConfiguration';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to delete';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TAdminConfigurationRequestHelper.update: string;
var
  success: string;
  adminConfigurationInterface_: IAdminConfigurationInterface;
  error: string;
begin
        try
            success := 'Updated AdminConfiguration Successful';
            adminConfigurationInterface_ := (TJava.ToObject(TAdminConfiguration.Create(Self.request)) as IAdminConfigurationInterface);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


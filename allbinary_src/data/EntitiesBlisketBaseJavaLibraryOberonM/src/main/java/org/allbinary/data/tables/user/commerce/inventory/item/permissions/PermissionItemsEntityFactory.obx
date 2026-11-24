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
// package org.allbinary.data.tables.user.commerce.inventory.item.permissions
unit PermissionItemsEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, PermissionItemsEntity;

type
  {AB:TYPES}
  TPermissionItemsEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TPermissionItemsEntityFactory;
    procedure InitFields;
        class function getInstance: TPermissionItemsEntityFactory; static;
        constructor Create;
        class function getPermissionItemsEntityInstance: TPermissionItemsEntity; static;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TPermissionItemsEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TPermissionItemsEntityFactory.getInstance: TPermissionItemsEntityFactory;
begin
        Exit(TPermissionItemsEntityFactory.instance);
end;
    

constructor TPermissionItemsEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TPermissionItemsEntityFactory.getPermissionItemsEntityInstance: TPermissionItemsEntity;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            Exit(TPermissionItemsEntity.Create());
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box('PermissionItemsEntityFactory'), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TPermissionItemsEntityFactory.instance := TPermissionItemsEntityFactory.Create();
  {AB:END}

end.


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
// package org.allbinary.data.tables.user.address.shipping
unit ShippingAddressesEntityFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StreetAddressesEntity, LogUtil;

type
  {AB:TYPES}
  TShippingAddressesEntityFactory = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TShippingAddressesEntityFactory;
    procedure InitFields;
        class function getInstance: TShippingAddressesEntityFactory; overload; static;
        constructor Create;
        function getInstance(userName: string): TStreetAddressesEntity; overload; virtual;
  end;

implementation
uses
  ShippingAddressesEntity, CommonStrings;


{AB:CODE}

procedure TShippingAddressesEntityFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TShippingAddressesEntityFactory.getInstance: TShippingAddressesEntityFactory;
begin
        Exit(TShippingAddressesEntityFactory.instance);
end;
    

constructor TShippingAddressesEntityFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TShippingAddressesEntityFactory.getInstance(userName: string): TStreetAddressesEntity;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(TShippingAddressesEntity.Create(userName));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().ENTITYFACTORYERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getShippingAddressesEntityInstance()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TShippingAddressesEntityFactory.instance := TShippingAddressesEntityFactory.Create();
  {AB:END}

end.


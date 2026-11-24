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
// package org.allbinary.business.user.modules.admin.store.order.ship
unit ShipOrderStoreAdminUser;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, User, WeblisketSessionInterface;

type
  {AB:TYPES}
  TShipOrderStoreAdminUser = class(TUser)
  public
        constructor Create; overload;
        constructor Create(userHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure validateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        procedure updateSession(weblisketSession: IWeblisketSessionInterface); virtual;
  end;

implementation

{AB:CODE}
    

constructor TShipOrderStoreAdminUser.Create;
begin
        inherited Create();
end;
    

constructor TShipOrderStoreAdminUser.Create(userHashMap: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(userHashMap);
end;
    

procedure TShipOrderStoreAdminUser.validateSession(weblisketSession: IWeblisketSessionInterface);
begin
        inherited validateSession(weblisketSession);
        Self.updateSession(weblisketSession);
end;
    

procedure TShipOrderStoreAdminUser.updateSession(weblisketSession: IWeblisketSessionInterface);
begin
        weblisketSession.setStoreName(Self.getPermissions());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


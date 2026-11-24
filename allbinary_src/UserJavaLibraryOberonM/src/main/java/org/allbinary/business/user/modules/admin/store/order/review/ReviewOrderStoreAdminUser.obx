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
// package org.allbinary.business.user.modules.admin.store.order.review
unit ReviewOrderStoreAdminUser;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, User, WeblisketSessionInterface;

type
  {AB:TYPES}
  TReviewOrderStoreAdminUser = class(TUser)
  public
        constructor Create; overload;
        constructor Create(userHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure validateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        procedure updateSession(weblisketSession: IWeblisketSessionInterface); virtual;
  end;

implementation

{AB:CODE}
    

constructor TReviewOrderStoreAdminUser.Create;
begin
        inherited Create();
end;
    

constructor TReviewOrderStoreAdminUser.Create(userHashMap: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(userHashMap);
end;
    

procedure TReviewOrderStoreAdminUser.validateSession(weblisketSession: IWeblisketSessionInterface);
begin
        inherited validateSession(weblisketSession);
        Self.updateSession(weblisketSession);
end;
    

procedure TReviewOrderStoreAdminUser.updateSession(weblisketSession: IWeblisketSessionInterface);
begin
        weblisketSession.setStoreName(Self.getPermissions());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
// package org.allbinary.business.user.modules.customer.subscriber
unit SubscriberUser;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, User, Subscription, WeblisketSessionInterface;

type
  {AB:TYPES}
  TSubscriberUser = class(TUser)
  public
    subscription: TSubscription;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(userHashMap: TJavaHashMap<TObject, TObject>); overload;
        procedure validateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        procedure updateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        function isSessionValid: Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TSubscriberUser.InitFields;
begin
  
end;
    

constructor TSubscriberUser.Create;
begin
        inherited Create();
        InitFields;
        Self.subscription := TSubscription.Create();
end;
    

constructor TSubscriberUser.Create(userHashMap: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(userHashMap);
        InitFields;
        Self.subscription := TSubscription.Create();
end;
    

procedure TSubscriberUser.validateSession(weblisketSession: IWeblisketSessionInterface);
begin
        inherited validateSession(weblisketSession);
        Self.updateSession(weblisketSession);
end;
    

procedure TSubscriberUser.updateSession(weblisketSession: IWeblisketSessionInterface);
begin
        weblisketSession.setStoreName(Self.getPermissions());
end;
    

function TSubscriberUser.isSessionValid: Boolean;
begin
        Exit(Self.subscription.isSubscribed());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


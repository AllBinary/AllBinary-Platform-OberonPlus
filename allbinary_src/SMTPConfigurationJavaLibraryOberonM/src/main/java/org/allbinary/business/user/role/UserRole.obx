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
// package org.allbinary.business.user.role
unit UserRole;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserFactoryInterface, BasicUserRole;

type
  {AB:TYPES}
  TUserRole = class(TObject)
  public
    basicUserRole: TBasicUserRole;
    userFactoryInterface: IUserFactoryInterface;
    procedure InitFields;
        constructor Create(aBasicUserRole: TBasicUserRole; aUserFactoryInterface: IUserFactoryInterface);
        function toString: string; virtual;
        function getBasicUserRole: TBasicUserRole; virtual;
        function getUserFactory: IUserFactoryInterface; virtual;
        function getSessionTimeout: Int64; virtual;
        function getSessionInactivityTimeout: Int64; virtual;
  end;

implementation

{AB:CODE}

procedure TUserRole.InitFields;
begin
  
  
end;
    

constructor TUserRole.Create(aBasicUserRole: TBasicUserRole; aUserFactoryInterface: IUserFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.basicUserRole := aBasicUserRole;
        Self.userFactoryInterface := aUserFactoryInterface;
end;
    

function TUserRole.toString: string;
begin
        Exit(Self.basicUserRole.toString());
end;
    

function TUserRole.getBasicUserRole: TBasicUserRole;
begin
        Exit(Self.basicUserRole);
end;
    

// throws Exception
function TUserRole.getUserFactory: IUserFactoryInterface;
begin
        Exit(Self.userFactoryInterface);
end;
    

function TUserRole.getSessionTimeout: Int64;
begin
        Exit(Self.basicUserRole.getSessionTimeout());
end;
    

function TUserRole.getSessionInactivityTimeout: Int64;
begin
        Exit(Self.basicUserRole.getSessionInactivityTimeout());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


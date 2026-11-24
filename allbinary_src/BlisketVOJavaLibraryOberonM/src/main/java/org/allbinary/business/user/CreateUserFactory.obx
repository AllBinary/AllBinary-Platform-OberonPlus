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
// package org.allbinary.business.user
unit CreateUserFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserInterface;

type
  {AB:TYPES}
  TCreateUserFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IUserInterface; static;
  end;

implementation
uses
  UserRole, UserRoleB, UserRoleData;


{AB:CODE}
    

constructor TCreateUserFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TCreateUserFactory.getInstance(hashMap_: TJavaHashMap<TObject, TObject>): IUserInterface;
var
  roleString: string;
  role: TUserRole;
begin
        if (hashMap_) <> (nil) then begin
            roleString := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TJava.ToString(TUserRoleData.NAME)))));
            if not ((roleString = '')) then begin
                role := TUserRoleB.getRole(roleString);
                Exit(role.getUserFactory().getInstance(hashMap_));
            end else begin
                raise SysUtils.Exception.Create('No Role Specified');
            end;
        end else begin
            raise SysUtils.Exception.Create('Null HashMap');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit UserRoleB;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, UserFactoryInterface, BasicUserRole, UserRole;

type
  {AB:TYPES}
  TUserRoleB = class(TUserRole)
  public
    class var roleVector: TBasicArrayList;
        constructor Create(aBasicUserRole: TBasicUserRole; aUserFactoryInterface: IUserFactoryInterface);
        class function getRole(role: string): TUserRole; static;
        class function getAll: TBasicArrayList; static;
  end;

implementation
uses
  UserRoleFactory, BasicArrayListD, StdUtil;


{AB:CODE}
    

constructor TUserRoleB.Create(aBasicUserRole: TBasicUserRole; aUserFactoryInterface: IUserFactoryInterface);
begin
        inherited Create(aBasicUserRole, aUserFactoryInterface);
        TUserRoleB.roleVector.add(TJava.Box(Self));
end;
    

// throws Exception
class function TUserRoleB.getRole(role: string): TUserRole;
var
  roleVector: TBasicArrayList;
  size: Integer;
  userRole_: TUserRole;
  index: Integer;
begin
    TJava.MonitorEnter(nil);
    try
        TUserRoleFactory.getInstance();
        if not ((role = '')) then begin
            roleVector := TUserRoleB.getAll();
            size := roleVector.size();
            for index := 0 to size - 1 do begin
                userRole_ := TUserRole(TJava.ToObject(roleVector.get(index)));
                if (CompareStr(role, userRole_.toString())) = (0) then begin
                    Exit(userRole_);
                end;
            end;
        end;
        raise SysUtils.Exception.Create('Unable to get role - Unknown Role = ' + role);
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TUserRoleB.getAll: TBasicArrayList;
begin
        TUserRoleFactory.getInstance();
        Exit(TUserRoleB.roleVector);
end;

initialization
  {AB:INITIALIZATION}
  TUserRoleB.roleVector := TBasicArrayListD.Create();
  {AB:END}

end.


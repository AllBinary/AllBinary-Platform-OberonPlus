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
// package org.allbinary.business.context.modules.storefront.statistics.users
unit StoreFrontUsersStatistics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, UserRole, StoreFrontUsersStatisticsInterface;

type
  {AB:TYPES}
  TStoreFrontUsersStatistics = class(TInterfacedObject, IStoreFrontUsersStatisticsInterface)
  public
    totalNumberOfUsers: Int64;
    totalUsersByRoleHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(storeFrontInterface_: IStoreFrontInterface);
        function getNewTotal(userRole_: TUserRole): Int64;
        function getNumberOfUsers: Int64; virtual;
        function getNumberOfUsersByRole(role: string): Int64; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function toVector: TBasicArrayList; virtual;
        function getKey: TObject; virtual;
  end;

implementation
uses
  StoreFrontUsersStatisticsData, BasicArrayListD, UserInterface, UserEntityFactory, UserEntityInterface, StdUtil;


{AB:CODE}

procedure TStoreFrontUsersStatistics.InitFields;
begin
  
  
end;

function TStoreFrontUsersStatistics.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreFrontUsersStatistics.Create(storeFrontInterface_: IStoreFrontInterface);
var
  userEntityInterface_: IUserEntityInterface;
  userVector: TBasicArrayList;
  size: Integer;
  userInterface_: IUserInterface;
  nextUserRole: TUserRole;
  currentNumberOfUsersForRole: Int64;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.totalUsersByRoleHashMap := TStdUtil.getInstance().createHashMap();
        userEntityInterface_ := TUserEntityFactory.getInstance();
        userVector := userEntityInterface_.getCustomers();
        Self.totalNumberOfUsers := userVector.size();
        size := userVector.size();
        for index := 0 to size - 1 do begin
            userInterface_ := (TJava.ToObject(userVector.get(index)) as IUserInterface);
            nextUserRole := userInterface_.getRole();
            currentNumberOfUsersForRole := Self.getNewTotal(nextUserRole);
            Self.totalUsersByRoleHashMap.put(TJava.Box(nextUserRole), TJava.Box(currentNumberOfUsersForRole));
        end;
end;
    

function TStoreFrontUsersStatistics.getNewTotal(userRole_: TUserRole): Int64;
var
  numberOfUsersForRoleLong: Int64;
begin
        numberOfUsersForRoleLong := Int64(Self.totalUsersByRoleHashMap.get(TJava.Box(userRole_)));
        if (numberOfUsersForRoleLong) = (0) then begin
            numberOfUsersForRoleLong := 0;
        end;
        Exit(((numberOfUsersForRoleLong)) + (1));
end;
    

function TStoreFrontUsersStatistics.getNumberOfUsers: Int64;
begin
        Exit(Self.totalNumberOfUsers);
end;
    

function TStoreFrontUsersStatistics.getNumberOfUsersByRole(role: string): Int64;
var
  totalForRole: Int64;
begin
        totalForRole := Int64(Self.totalUsersByRoleHashMap.get(TJava.Box(role)));
        Exit(totalForRole);
end;
    

function TStoreFrontUsersStatistics.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
  setOfUserRoles: ISet;
  nextUserRole: TUserRole;
  userRoleArray: TArray<TObject>;
  size: Integer;
  totalForRole: Int64;
  index: Integer;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TStoreFrontUsersStatisticsData.getInstance().NUMBEROFUSERS), TJava.Box(Self.getNumberOfUsers().toString()));
        setOfUserRoles := Self.totalUsersByRoleHashMap.keySet();
        
        userRoleArray := setOfUserRoles.toArray();
        size := System.Length(userRoleArray);
        for index := 0 to size - 1 do begin
            nextUserRole := TUserRole(TJava.ToObject(userRoleArray[index]));
            totalForRole := Int64(Self.totalUsersByRoleHashMap.get(TJava.Box(nextUserRole)));
            hashMap_.put(TJava.Box(nextUserRole.toString()), TJava.Box(totalForRole.toString()));
        end;
        Exit(hashMap_);
end;
    

function TStoreFrontUsersStatistics.toVector: TBasicArrayList;
begin
        Exit(nil);
end;
    

function TStoreFrontUsersStatistics.getKey: TObject;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


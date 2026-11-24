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
// package org.allbinary.data.tables.user
unit UserEntityInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, StoreFrontInterface, UserInterface, UserRole, BasicDataTableInterface;

type
  {AB:TYPES}
  IUserEntityInterface = interface(IBasicDataTableInterface) ['IUserEntityInterface']
        function getAdministrators: TBasicArrayList;
        function getStoreManagers(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
        function getCustomers: TBasicArrayList;
        function getUsersWithRole(userRole_: TUserRole): TBasicArrayList;
        function getUsers(storeFrontInterface_: IStoreFrontInterface): TBasicArrayList;
        function getUser(userName: string): IUserInterface;
        function login(userName: string; password: string): string;
        procedure deleteWhere(key: string; value: string);
        procedure insert(values: TBasicArrayList);
        procedure update(userName: string; updatedValues: TJavaHashMap<TObject, TObject>);
  end;
  TUserEntityInterface = IUserEntityInterface;

implementation
uses
  BasicArrayListD;


{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit UserInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserConfigurationInterface, UserRole, TableMappingInterface, WeblisketSessionInterface, ValidationInterface;

type
  {AB:TYPES}
  IUserInterface = interface(ITableMappingInterface) ['IUserInterface']
        procedure setUserName(value: string);
        procedure setPrefixName(value: string);
        procedure setFirstName(value: string);
        procedure setLastName(value: string);
        procedure setMiddleName(value: string);
        procedure setSuffixName(value: string);
        procedure setCompany(value: string);
        procedure setPositionAtCompany(value: string);
        procedure setMainEmail(value: string);
        procedure setSecondaryEmail(value: string);
        procedure setHomePhone(value: string);
        procedure setCellPhone(value: string);
        procedure setWorkPhone(value: string);
        procedure setOtherContact(value: string);
        procedure setElectronicContact(value: string);
        procedure setFax(value: string);
        procedure setRole(aRole: TUserRole);
        procedure setEncryption(value: string);
        procedure setSecret(value: string);
        procedure setPassword(value: string);
        procedure setPermissions(value: string);
        procedure enable;
        procedure setEnable(enable: string);
        function getUserName: string;
        function getPrefixName: string;
        function getFirstName: string;
        function getLastName: string;
        function getMiddleName: string;
        function getSuffixName: string;
        function getCompany: string;
        function getPositionAtCompany: string;
        function getMainEmail: string;
        function getSecondaryEmail: string;
        function getHomePhone: string;
        function getCellPhone: string;
        function getWorkPhone: string;
        function getOtherContact: string;
        function getElectronicContact: string;
        function getFax: string;
        function getRole: TUserRole;
        function getEncryption: string;
        function getSecret: string;
        function getPassword: string;
        function getPermissions: string;
        function getUserConfigurationInterface: IUserConfigurationInterface;
        procedure setUserConfigurationInterface(userConfigurationInterface_: IUserConfigurationInterface);
        function toPasswordHashMap: TJavaHashMap<TObject, TObject>;
        procedure validateSession(weblisketSession: IWeblisketSessionInterface);
        procedure updateSession(weblisketSession: IWeblisketSessionInterface);
        function isSessionValid: Boolean;
  end;
  TUserInterface = IUserInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


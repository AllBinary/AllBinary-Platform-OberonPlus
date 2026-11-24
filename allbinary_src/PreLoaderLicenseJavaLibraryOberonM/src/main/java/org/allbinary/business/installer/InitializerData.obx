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
// package org.allbinary.business.installer
unit InitializerData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TInitializerData = class(TObject)
  public
    DBUSER: string;
    DBPASSWORD: string;
    ADMINJDBCDRIVER: string;
    ADMINSCHEMA: string;
    ADMINSERVER: string;
    ADMINPORT: string;
    CUSTOMERJDBCDRIVER: string;
    CUSTOMERNAME: string;
    CUSTOMERUSERNAME: string;
    CUSTOMERPASSWORD: string;
    CUSTOMERSCHEMA: string;
    CUSTOMERSERVER: string;
    CUSTOMERPORT: string;
    HISTORYJDBCDRIVER: string;
    HISTORYNAME: string;
    HISTORYUSERNAME: string;
    HISTORYPASSWORD: string;
    HISTORYSCHEMA: string;
    HISTORYSERVER: string;
    HISTORYPORT: string;
    LOGJDBCDRIVER: string;
    LOGNAME: string;
    LOGUSERNAME: string;
    LOGPASSWORD: string;
    LOGSCHEMA: string;
    LOGSERVER: string;
    LOGPORT: string;
    INVENTORYJDBCDRIVER: string;
    INVENTORYNAME: string;
    INVENTORYUSERNAME: string;
    INVENTORYPASSWORD: string;
    INVENTORYSCHEMA: string;
    INVENTORYSERVER: string;
    INVENTORYPORT: string;
    STATICPAGESJDBCDRIVER: string;
    STATICPAGESNAME: string;
    STATICPAGESUSERNAME: string;
    STATICPAGESPASSWORD: string;
    STATICPAGESSCHEMA: string;
    STATICPAGESSERVER: string;
    STATICPAGESPORT: string;
    class var instance: TInitializerData;
    procedure InitFields;
    constructor Create;
        class function getInstance: TInitializerData; static;
        function getJdbcDriverSolutionInfo: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TInitializerData.InitFields;
begin
  Self.DBUSER := 'DBUSER';
  Self.DBPASSWORD := 'DBPASSWORD';
  Self.ADMINJDBCDRIVER := 'ADMIN_JDBCDRIVER';
  Self.ADMINSCHEMA := 'ADMINSCHEMA';
  Self.ADMINSERVER := 'ADMINSERVER';
  Self.ADMINPORT := 'ADMINPORT';
  Self.CUSTOMERJDBCDRIVER := 'CUSTOMER_JDBCDRIVER';
  Self.CUSTOMERNAME := 'CUSTOMERNAME';
  Self.CUSTOMERUSERNAME := 'CUSTOMERUSERNAME';
  Self.CUSTOMERPASSWORD := 'CUSTOMERPASSWORD';
  Self.CUSTOMERSCHEMA := 'CUSTOMERSCHEMA';
  Self.CUSTOMERSERVER := 'CUSTOMERSERVER';
  Self.CUSTOMERPORT := 'CUSTOMERPORT';
  Self.HISTORYJDBCDRIVER := 'HISTORY_JDBCDRIVER';
  Self.HISTORYNAME := 'HISTORYNAME';
  Self.HISTORYUSERNAME := 'HISTORYUSERNAME';
  Self.HISTORYPASSWORD := 'HISTORYPASSWORD';
  Self.HISTORYSCHEMA := 'HISTORYSCHEMA';
  Self.HISTORYSERVER := 'HISTORYSERVER';
  Self.HISTORYPORT := 'HISTORYPORT';
  Self.LOGJDBCDRIVER := 'LOG_JDBCDRIVER';
  Self.LOGNAME := 'LOGNAME';
  Self.LOGUSERNAME := 'LOGUSERNAME';
  Self.LOGPASSWORD := 'LOGPASSWORD';
  Self.LOGSCHEMA := 'LOGSCHEMA';
  Self.LOGSERVER := 'LOGSERVER';
  Self.LOGPORT := 'LOGPORT';
  Self.INVENTORYJDBCDRIVER := 'INVENTORY_JDBCDRIVER';
  Self.INVENTORYNAME := 'INVENTORYNAME';
  Self.INVENTORYUSERNAME := 'INVENTORYUSERNAME';
  Self.INVENTORYPASSWORD := 'INVENTORYPASSWORD';
  Self.INVENTORYSCHEMA := 'INVENTORYSCHEMA';
  Self.INVENTORYSERVER := 'INVENTORYSERVER';
  Self.INVENTORYPORT := 'INVENTORYPORT';
  Self.STATICPAGESJDBCDRIVER := 'STATICPAGES_JDBCDRIVER';
  Self.STATICPAGESNAME := 'STATICPAGESNAME';
  Self.STATICPAGESUSERNAME := 'STATICPAGESUSERNAME';
  Self.STATICPAGESPASSWORD := 'STATICPAGESPASSWORD';
  Self.STATICPAGESSCHEMA := 'STATICPAGESSCHEMA';
  Self.STATICPAGESSERVER := 'STATICPAGESSERVER';
  Self.STATICPAGESPORT := 'STATICPAGESPORT';
end;

constructor TInitializerData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TInitializerData.getInstance: TInitializerData;
begin
        Exit(TInitializerData.instance);
end;
    

function TInitializerData.getJdbcDriverSolutionInfo: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>');
        stringBuffer.append('1. A JDBC driver you specified is not in your classpath.<br/>');
        stringBuffer.append('Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>');
        stringBuffer.append('Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>');
        stringBuffer.append('Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>');
        stringBuffer.append('2. The JDBC driver you specified does not exit.<br/>');
        stringBuffer.append('Solution: Get a JDBC driver. <br/>');
        stringBuffer.append('3. The JDBC driver you specified is not valid.<br/>');
        stringBuffer.append('Solution: Use a valid JDBC driver.<p/>');
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TInitializerData.instance := TInitializerData.Create();
  {AB:END}

end.


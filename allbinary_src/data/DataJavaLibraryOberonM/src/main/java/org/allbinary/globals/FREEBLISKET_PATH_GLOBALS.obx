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
// package org.allbinary.globals
unit FREEBLISKET_PATH_GLOBALS;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFREEBLISKET_PATH_GLOBALS = class(TObject)
  public
    INSTALLPATH: string;
    XSLPATH: string;
    TEMPLATEPATH: string;
    STYLEPATH: string;
    THEMEPATH: string;
    DBINITPATH: string;
    LINEDATAPATH: string;
    CONFIGURATIONPATH: string;
    USERCONFIGURATIONPATH: string;
    CONTEXTCONFIGURATIONPATH: string;
    LICENSEERRORPAGE: string;
    ERRORPAGE: string;
    class var instance: TFREEBLISKET_PATH_GLOBALS;
    procedure InitFields;
        class function getInstance: TFREEBLISKET_PATH_GLOBALS; static;
        constructor Create;
  end;

implementation
uses
  PATH_GLOBALS, AbPathData, StringMaker;


{AB:CODE}

procedure TFREEBLISKET_PATH_GLOBALS.InitFields;
begin
  
  
  Self.TEMPLATEPATH := 'template' + TJava.ToString(TAbPathData.getInstance().SEPARATOR);
  Self.STYLEPATH := Self.TEMPLATEPATH + 'style' + TJava.ToString(TAbPathData.getInstance().SEPARATOR);
  Self.THEMEPATH := Self.STYLEPATH + 'theme' + TJava.ToString(TAbPathData.getInstance().SEPARATOR);
  Self.DBINITPATH := TJava.ToString(TPATH_GLOBALS.getInstance().INIT_PATH) + 'db' + TJava.ToString(TAbPathData.getInstance().SEPARATOR);
  Self.LINEDATAPATH := TJava.ToString(TPATH_GLOBALS.getInstance().INIT_PATH) + 'lineData' + TJava.ToString(TAbPathData.getInstance().SEPARATOR);
  
  
  
  Self.LICENSEERRORPAGE := 'LicensingError.jsp';
  Self.ERRORPAGE := 'Error.jsp';
end;
    

class function TFREEBLISKET_PATH_GLOBALS.getInstance: TFREEBLISKET_PATH_GLOBALS;
begin
        Exit(TFREEBLISKET_PATH_GLOBALS.instance);
end;
    

constructor TFREEBLISKET_PATH_GLOBALS.Create;
var
  stringBuffer: TStringMaker;
begin
    inherited Create;
    InitFields;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('install');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Self.INSTALLPATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(TPATH_GLOBALS.getInstance().INIT_PATH);
        stringBuffer.append('views');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Self.XSLPATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.XSLPATH);
        stringBuffer.append('configuration');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Self.CONFIGURATIONPATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.CONFIGURATIONPATH);
        stringBuffer.append('user');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Self.USERCONFIGURATIONPATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.CONFIGURATIONPATH);
        stringBuffer.append('context');
        stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
        Self.CONTEXTCONFIGURATIONPATH := stringBuffer.toString();
        stringBuffer.delete_(0, stringBuffer.length());
end;

initialization
  {AB:INITIALIZATION}
  TFREEBLISKET_PATH_GLOBALS.instance := TFREEBLISKET_PATH_GLOBALS.Create();
  {AB:END}

end.


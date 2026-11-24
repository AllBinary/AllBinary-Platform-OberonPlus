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
// package org.allbinary.logic.communication.http.request
unit AbeHttpRequestInfoData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAbeHttpRequestInfoData = class(TObject)
  public
    HTTP_USER_AGENT: string;
    REMOTE_ADDRESS: string;
    REMOTE_HOST: string;
    REMOTE_HOST_BY_ADDRESS: string;
    REMOTE_PORT: string;
    REQUEST_FILE_PATH: string;
    class var instance: TAbeHttpRequestInfoData;
    procedure InitFields;
        class function getInstance: TAbeHttpRequestInfoData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TAbeHttpRequestInfoData.InitFields;
begin
  Self.HTTP_USER_AGENT := 'HTTP_USER_AGENT';
  Self.REMOTE_ADDRESS := 'REMOTE_ADDRESS';
  Self.REMOTE_HOST := 'REMOTE_HOST';
  Self.REMOTE_HOST_BY_ADDRESS := 'REMOTE_HOST_BY_ADDRESS';
  Self.REMOTE_PORT := 'REMOTE_PORT';
  Self.REQUEST_FILE_PATH := 'REQUEST_FILE_PATH';
end;
    

class function TAbeHttpRequestInfoData.getInstance: TAbeHttpRequestInfoData;
begin
        Exit(TAbeHttpRequestInfoData.instance);
end;
    

constructor TAbeHttpRequestInfoData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TAbeHttpRequestInfoData.instance := TAbeHttpRequestInfoData.Create();
  {AB:END}

end.


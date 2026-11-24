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
// package org.allbinary.business.init.db
unit DbInitInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DbConnectionInfo;

type
  {AB:TYPES}
  // import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
  TDbInitInfo = class(TDbConnectionInfo)
  public
        constructor Create(initFileName: string; read: Boolean);
        function getUrl: string; virtual;
        procedure write; virtual;
        procedure load;
        procedure setHasRead(value: Boolean); virtual;
  end;

implementation
uses
  PreLogUtil;


{AB:CODE}
    

constructor TDbInitInfo.Create(initFileName: string; read: Boolean);
begin
        inherited Create();
end;
    

function TDbInitInfo.getUrl: string;
var
  url: string;
begin
        url := inherited getUrl();
        TPreLogUtil.put('Url: ' + url, TJava.Box(Self), 'getUrl');
        Exit(url);
end;
    

// throws Exception
procedure TDbInitInfo.write;
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TDbInitInfo.load;
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TDbInitInfo.setHasRead(value: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


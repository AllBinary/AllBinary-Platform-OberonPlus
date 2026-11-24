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
unit WebAppUrlGlobals;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UrlGlobalsInterface;

type
  {AB:TYPES}
  TWebAppUrlGlobals = class(IUrlGlobalsInterface)
  public
    path: string;
    isWebappPathSet: Boolean;
    procedure InitFields;
    constructor Create;
        function isTestingMode: Boolean; virtual;
        function getWebappPath: string; virtual;
        procedure setWebappPath(path: string); virtual;
        function getTestHtmlPath: string; virtual;
        function getMainPath: string; virtual;
  end;

implementation
uses
  InitInfo;


{AB:CODE}

procedure TWebAppUrlGlobals.InitFields;
begin
  
  Self.isWebappPathSet := False;
end;

constructor TWebAppUrlGlobals.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TWebAppUrlGlobals.isTestingMode: Boolean;
begin
        Exit(TInitInfo.getInstance().isTesting());
end;
    

function TWebAppUrlGlobals.getWebappPath: string;
begin
        Exit(Self.path);
end;
    

procedure TWebAppUrlGlobals.setWebappPath(path: string);
begin
    TJava.MonitorEnter(Self);
    try
        path := path;
        Self.isWebappPathSet := True;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TWebAppUrlGlobals.getTestHtmlPath: string;
begin
        Exit(TInitInfo.getInstance().getTestHtmlPath());
end;
    

// throws Exception
function TWebAppUrlGlobals.getMainPath: string;
var
  mainPath: string;
begin
        mainPath := TInitInfo.getInstance().getMainPath();
        if not ((mainPath = '')) then begin
            Exit(mainPath);
        end else if Self.isWebappPathSet then begin
            Exit(Self.getWebappPath());
        end else begin
            raise SysUtils.Exception.Create('Webapp Path is not set');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


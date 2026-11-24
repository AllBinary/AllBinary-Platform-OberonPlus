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
// package org.allbinary.logic.system.security
unit AbKeys;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface;

type
  {AB:TYPES}
  TAbKeys = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TAbKeys;
    procedure InitFields;
        class function getInstance: TAbKeys; static;
        constructor Create;
        function getKey(abeClientInformation: IAbeClientInformationInterface; keyName: string): string; virtual;
  end;

implementation
uses
  AbeLicenseInterfaceFactory, LicensingException;


{AB:CODE}

procedure TAbKeys.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TAbKeys.getInstance: TAbKeys;
begin
        Exit(TAbKeys.instance);
end;
    

constructor TAbKeys.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws LicensingException
function TAbKeys.getKey(abeClientInformation: IAbeClientInformationInterface; keyName: string): string;
begin
    TJava.MonitorEnter(Self);
    try
        try
            Self.logUtil.putF('Getting Key: ' + keyName, TJava.Box(Self), 'getKey');
            if ((((CompareStr(keyName, 'DirectX 8')) = (0)) or ((CompareStr(keyName, 'DirectX')) = (0))) or ((CompareStr(keyName, 'Low Level')) = (0))) or ((CompareStr(keyName, 'System Drivers')) = (0)) then begin
                Exit('Temp For Input Library');
            end;
            Exit(TAbeLicenseInterfaceFactory.getInstance().getLicenseInstance(abeClientInformation).getKey(TJava.Box(keyName)));
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Licensing Failure', TJava.Box(Self), 'getKey()', TJava.Box(e));
            raise TLicensingException.Create('Unknown License Failure');
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TAbKeys.instance := TAbKeys.Create();
  {AB:END}

end.


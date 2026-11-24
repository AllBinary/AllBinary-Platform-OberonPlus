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
// package org.allbinary.logic.system.security.licensing
unit AbeLicenseInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, AbeLicenseInterface, AbeClientInformationInterface;

type
  {AB:TYPES}
  TAbeLicenseInterfaceFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    time: Int64;
    check: Boolean;
    checkPeriod: Integer;
    abeLicenseInterface: IAbeLicenseInterface;
    class var SINGLETON: TAbeLicenseInterfaceFactory;
    procedure InitFields;
        class function getInstance: TAbeLicenseInterfaceFactory; static;
        constructor Create;
        function getLicenseInstance(abeClientInformation: IAbeClientInformationInterface): IAbeLicenseInterface; virtual;
        function get(abeClientInformation: IAbeClientInformationInterface): IAbeLicenseInterface;
        function isTimeToGetKey: Boolean;
        procedure setCheck(check: Boolean); virtual;
        function isCheck: Boolean;
  end;

implementation
uses
  AbeNoLicense, AbeClientInformationData, LicensingException, AbeLicenseClient;


{AB:CODE}

procedure TAbeLicenseInterfaceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.time := 0;
  Self.check := False;
  Self.checkPeriod := 36000000;
  Self.abeLicenseInterface := nil;
end;
    

class function TAbeLicenseInterfaceFactory.getInstance: TAbeLicenseInterfaceFactory;
begin
        Exit(TAbeLicenseInterfaceFactory.SINGLETON);
end;
    

constructor TAbeLicenseInterfaceFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws LicensingException
function TAbeLicenseInterfaceFactory.getLicenseInstance(abeClientInformation: IAbeClientInformationInterface): IAbeLicenseInterface;
begin
        if Self.isTimeToGetKey() then begin
            Exit(Self.get(abeClientInformation));
        end else begin
            Exit(Self.abeLicenseInterface);
        end;
end;
    

// throws LicensingException
function TAbeLicenseInterfaceFactory.get(abeClientInformation: IAbeClientInformationInterface): IAbeLicenseInterface;
var
  licenseClient: TAbeLicenseClient;
begin
        try
            Self.logUtil.putF('Getting Keys', TJava.Box(Self), Self.commonStrings.GET);
            Self.abeLicenseInterface := TAbeNoLicense.getInstance();
            licenseClient := TAbeLicenseClient.Create();
            Self.abeLicenseInterface := licenseClient.get(TJava.ToObject(abeClientInformation));
            if (Self.abeLicenseInterface) <> (nil) then begin
                Self.logUtil.putF('Default Key: ' + TJava.ToString(Self.abeLicenseInterface.getKey(TJava.Box(TAbeClientInformationData.getInstance().KEY))), TJava.Box(Self), Self.commonStrings.GET);
            end;
            Exit(Self.abeLicenseInterface);
        except
            on e: TIOException do begin
            Self.logUtil.put('Licensing IO Error', TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            raise TLicensingException.Create('License Server Connection Error');
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Licensing Failure', TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            raise TLicensingException.Create('Unknown License Failure: ' + Self.ClassType.ClassName);
            end;
        end;
end;
    

function TAbeLicenseInterfaceFactory.isTimeToGetKey: Boolean;
var
  calendar: TCalendar;
  currentTime: Int64;
begin
        calendar := TCalendar.getInstance();
        currentTime := calendar.getTimeInMillis();
        if (((((Self.abeLicenseInterface) = (nil)) or (TJava.ToObject(Self.abeLicenseInterface) = TJava.ToObject(TAbeNoLicense.getInstance()))) or (not (Self.abeLicenseInterface.hasKey()))) or (Self.isCheck())) or (((currentTime) - (Int64(Self.checkPeriod))) > (Self.time)) then begin
            Self.abeLicenseInterface := nil;
            Self.time := currentTime;
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TAbeLicenseInterfaceFactory.setCheck(check: Boolean);
begin
        Self.check := check;
end;
    

function TAbeLicenseInterfaceFactory.isCheck: Boolean;
begin
        Exit(Self.check);
end;

initialization
  {AB:INITIALIZATION}
  TAbeLicenseInterfaceFactory.SINGLETON := TAbeLicenseInterfaceFactory.Create();
  {AB:END}

end.


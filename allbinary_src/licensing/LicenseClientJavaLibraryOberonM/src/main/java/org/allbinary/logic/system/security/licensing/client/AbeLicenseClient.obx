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
// package org.allbinary.logic.system.security.licensing.client
unit AbeLicenseClient;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, AbeLicenseInterface, CommonStrings;

type
  {AB:TYPES}
  TAbeLicenseClient = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    MINSERVERS: Integer;
    procedure InitFields;
        constructor Create;
        function get(abeClientInformation: IAbeClientInformationInterface): IAbeLicenseInterface; virtual;
  end;

implementation
uses
  XmlRpcAbeLicenseRetrievalClient, LicenseInitInfo, LicenseInitInfoUtil, XmlRpcAbeClient, BasicArrayList;


{AB:CODE}

procedure TAbeLicenseClient.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.MINSERVERS := 3;
end;
    

constructor TAbeLicenseClient.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TAbeLicenseClient.get(abeClientInformation: IAbeClientInformationInterface): IAbeLicenseInterface;
var
  xmlRpcAbeLicenseClient: TXmlRpcAbeClient;
  abeLicenseInterface_: IAbeLicenseInterface;
  licenseId: string;
  servers: TBasicArrayList;
  isNewLicenseId: Boolean;
  isBetterServerList: Boolean;
  stringValidationUtil_: TObject;
  initInfo: TLicenseInitInfo;
begin
    TJava.MonitorEnter(Self);
    try
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.GET);
            xmlRpcAbeLicenseClient := TXmlRpcAbeLicenseRetrievalClient.Create(abeClientInformation);
            abeLicenseInterface_ := (TJava.ToObject(xmlRpcAbeLicenseClient.get(nil)) as IAbeLicenseInterface);
            licenseId := abeLicenseInterface_.getLicenseId();
            servers := abeLicenseInterface_.getServers();
            isNewLicenseId := False;
            isBetterServerList := False;
            stringValidationUtil_ := nil;
            if ((abeClientInformation.getLicenseId() = '')) and (not (abeClientInformation.isSameId(licenseId))) then begin
                isNewLicenseId := True;
            end;
            if ((servers.size()) >= (Self.MINSERVERS)) and (abeClientInformation.isLargerOrDifferentServerList(servers)) then begin
                isBetterServerList := True;
            end;
            if (isBetterServerList) or (isNewLicenseId) then begin
                initInfo := TLicenseInitInfoUtil.getInstance().read();
                initInfo.setLicenseId(licenseId);
                initInfo.setServerList(servers);
                TLicenseInitInfoUtil.getInstance().write(initInfo);
                abeClientInformation.init();
            end;
            Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), Self.commonStrings.GET);
            Exit(abeLicenseInterface_);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


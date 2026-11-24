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
// package org.allbinary.logic.system.security.licensing.registration
unit LicenseRegistrationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface;

type
  {AB:TYPES}
  TLicenseRegistrationUtil = class(TObject)
  public
        constructor Create;
        class procedure process(abeClientInformation: IAbeClientInformationInterface; registrationId: string); static;
  end;

implementation
uses
  RegistrationConfiguration, XmlRpcRemoteLicenseRegistrationClient, CommonStrings, PreLogUtil, SpecialMessageUtil, CommonLabels, ABHashtable;


{AB:CODE}
    

constructor TLicenseRegistrationUtil.Create;
begin
    inherited Create;
end;
    

class procedure TLicenseRegistrationUtil.process(abeClientInformation: IAbeClientInformationInterface; registrationId: string);
var
  commonStrings_: TCommonStrings;
  registrationConfiguration_: TRegistrationConfiguration;
  hashtable: TABHashtable<TObject, TObject>;
begin
    TJava.MonitorEnter(nil);
    try
        try
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.put(TJava.ToString(TCommonLabels.getInstance().START_LABEL) + 'License Registration', TJava.Box('LicenseRegistrationUtil'), commonStrings_.PROCESS);
            registrationConfiguration_ := TRegistrationConfiguration.getInstance();
            registrationConfiguration_.setRegistrationCode(registrationId);
            registrationConfiguration_.write();
            hashtable := abeClientInformation.toHashtable();
            hashtable.put(TJava.Box(TRegistrationConfiguration.getInstance().NAME), TJava.Box(registrationId));
            hashtable.put(TJava.Box('message'), TJava.Box(TSpecialMessageUtil.getInstance().get()));
            TXmlRpcRemoteLicenseRegistrationClient.Create(abeClientInformation).get(hashtable);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE('License Registration Exception', TJava.Box('LicenseRegistrationUtil'), 'License Registration', TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


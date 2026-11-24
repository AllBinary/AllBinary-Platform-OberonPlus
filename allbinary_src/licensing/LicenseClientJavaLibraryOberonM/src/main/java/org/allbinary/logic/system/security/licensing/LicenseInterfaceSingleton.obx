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
unit LicenseInterfaceSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeLicenseInterface;

type
  {AB:TYPES}
  TLicenseInterfaceSingleton = class(TObject)
  public
    class var licenseInterface: IAbeLicenseInterface;
    constructor Create;
        class function getInstance: IAbeLicenseInterface; static;
        class procedure init(licenseInterface: IAbeLicenseInterface); static;
  end;

implementation
uses
  AbeNoLicense;


{AB:CODE}

constructor TLicenseInterfaceSingleton.Create;
begin
  inherited Create;
end;
    

class function TLicenseInterfaceSingleton.getInstance: IAbeLicenseInterface;
begin
        Exit(TLicenseInterfaceSingleton.licenseInterface);
end;
    

class procedure TLicenseInterfaceSingleton.init(licenseInterface: IAbeLicenseInterface);
begin
        if (licenseInterface) <> (nil) then begin
            TLicenseInterfaceSingleton.licenseInterface := licenseInterface;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TLicenseInterfaceSingleton.licenseInterface := TAbeNoLicense.getInstance();
  {AB:END}

end.


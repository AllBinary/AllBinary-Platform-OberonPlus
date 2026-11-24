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
// package org.allbinary
unit AllBinaryAndroidGameInitializationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAllBinaryAndroidGameInitializationUtil = class(TObject)
  public
    constructor Create;
        class procedure init; static;
  end;

implementation
uses
  AndroidResources, LicenseInitInfoUtil, ResourceUtil, PartnerIdentifierFileUtil;


{AB:CODE}

constructor TAllBinaryAndroidGameInitializationUtil.Create;
begin
  inherited Create;
end;
    

class procedure TAllBinaryAndroidGameInitializationUtil.init;
var
  resourceUtil_: TResourceUtil;
  androidResources_: TAndroidResources;
  licenseInitInfoUtil_: TLicenseInitInfoUtil;
begin
        resourceUtil_ := TResourceUtil.getInstance();
        androidResources_ := TAndroidResources.getInstance();
        licenseInitInfoUtil_ := TLicenseInitInfoUtil.getInstance();
        resourceUtil_.addResource(licenseInitInfoUtil_.INITFILENAME, IntToStr(androidResources_.raw.licenseinitdata));
        resourceUtil_.addResource(TPartnerIdentifierFileUtil.getInstance().FILE_NAME, IntToStr(androidResources_.raw.partner));
        resourceUtil_.addResource(licenseInitInfoUtil_.ABOUT, IntToStr(androidResources_.raw.about));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


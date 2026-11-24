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
// package org.allbinary.game.midlet
unit SpecialDemoGameMidlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ClientInformationFactory, LicenseLoadingType, LicensedDemoSetupFactory, LicenseCheckRunnableFactory, DemoGameMidlet;

type
  {AB:TYPES}
  TSpecialDemoGameMidlet = class(TDemoGameMidlet)
  public
        constructor Create(clientInformationFactory_: TClientInformationFactory; licenseLoadingType_: TLicenseLoadingType; demoSetupFactory: TLicensedDemoSetupFactory; licenseCheckRunnableFactory_: TLicenseCheckRunnableFactory);
        procedure initView; virtual;
        procedure preInit; override;
  end;

implementation
uses
  LicenseServerInitFileUtil;


{AB:CODE}
    

constructor TSpecialDemoGameMidlet.Create(clientInformationFactory_: TClientInformationFactory; licenseLoadingType_: TLicenseLoadingType; demoSetupFactory: TLicensedDemoSetupFactory; licenseCheckRunnableFactory_: TLicenseCheckRunnableFactory);
begin
        inherited Create(clientInformationFactory_);
end;
    

procedure TSpecialDemoGameMidlet.initView;
begin
end;
    

procedure TSpecialDemoGameMidlet.preInit;
begin
        TLicenseServerInitFileUtil.Create().init();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


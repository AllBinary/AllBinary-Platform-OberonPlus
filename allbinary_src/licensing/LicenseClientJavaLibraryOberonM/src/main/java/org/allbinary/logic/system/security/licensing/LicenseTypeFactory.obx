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
unit LicenseTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LicenseType;

type
  {AB:TYPES}
  TLicenseTypeFactory = class(TObject)
  public
    UNKNOWN: TLicenseType;
    DEMO: TLicenseType;
    NORMAL: TLicenseType;
    class var instance: TLicenseTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLicenseTypeFactory; overload; static;
        function getInstance(name: string): TLicenseType; overload; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TLicenseTypeFactory.InitFields;
begin
  Self.UNKNOWN := TLicenseType.Create(TCommonStrings.getInstance().UNKNOWN);
  Self.DEMO := TLicenseType.Create('Demo');
  Self.NORMAL := TLicenseType.Create('Normal');
end;

constructor TLicenseTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLicenseTypeFactory.getInstance: TLicenseTypeFactory;
begin
        Exit(TLicenseTypeFactory.instance);
end;
    

function TLicenseTypeFactory.getInstance(name: string): TLicenseType;
begin
        if (Self.DEMO.getName().compareTo(name)) = (0) then begin
            Exit(Self.DEMO);
        end else if (Self.NORMAL.getName().compareTo(name)) = (0) then begin
            Exit(Self.NORMAL);
        end;
        Exit(Self.UNKNOWN);
end;

initialization
  {AB:INITIALIZATION}
  TLicenseTypeFactory.instance := TLicenseTypeFactory.Create();
  {AB:END}

end.


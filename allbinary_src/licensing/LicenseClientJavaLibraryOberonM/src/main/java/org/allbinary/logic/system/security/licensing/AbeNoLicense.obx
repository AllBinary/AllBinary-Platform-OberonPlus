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
unit AbeNoLicense;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LicenseType, AbeLicenseInterface;

type
  {AB:TYPES}
  TAbeNoLicense = class(TInterfacedObject, IAbeLicenseInterface)
  public
    serverVector: TBasicArrayList;
    class var abeNoLicense: TAbeNoLicense;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        class function getInstance: TAbeNoLicense; static;
        function hasKey: Boolean; virtual;
        function getKey(keyName: string): string; virtual;
        function getLicenseId: string; virtual;
        function getSpecial: string; virtual;
        function getServers: TBasicArrayList; virtual;
        function isValid: Boolean; virtual;
        function getLicenseType: TLicenseType; virtual;
  end;

implementation
uses
  LicenseTypeFactory, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TAbeNoLicense.InitFields;
begin
  Self.serverVector := TBasicArrayListD.Create();
end;

function TAbeNoLicense.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbeNoLicense.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TAbeNoLicense.getInstance: TAbeNoLicense;
begin
        Exit(TAbeNoLicense.abeNoLicense);
end;
    

function TAbeNoLicense.hasKey: Boolean;
begin
        Exit(False);
end;
    

function TAbeNoLicense.getKey(keyName: string): string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TAbeNoLicense.getLicenseId: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TAbeNoLicense.getSpecial: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TAbeNoLicense.getServers: TBasicArrayList;
begin
        Exit(Self.serverVector);
end;
    

function TAbeNoLicense.isValid: Boolean;
begin
        Exit(False);
end;
    

function TAbeNoLicense.getLicenseType: TLicenseType;
begin
        Exit(TLicenseTypeFactory.getInstance().UNKNOWN);
end;

initialization
  {AB:INITIALIZATION}
  TAbeNoLicense.abeNoLicense := TAbeNoLicense.Create();
  {AB:END}

end.


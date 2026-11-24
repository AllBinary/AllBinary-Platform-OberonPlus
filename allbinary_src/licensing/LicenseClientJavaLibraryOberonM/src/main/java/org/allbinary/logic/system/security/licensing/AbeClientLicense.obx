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
unit AbeClientLicense;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable, BasicArrayList, LicenseType, AbeLicenseInterface;

type
  {AB:TYPES}
  TAbeClientLicense = class(TInterfacedObject, IAbeLicenseInterface)
  public
    hashtable: TABHashtable<TObject, TObject>;
    id: string;
    servers: TBasicArrayList;
    special: string;
    licenseType: TLicenseType;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashtable: TABHashtable<TObject, TObject>);
        class function hasRequiredKeys(resultHashtable: TABHashtable<TObject, TObject>): Boolean; static;
        function hasKey: Boolean; virtual;
        function getKey(keyName: string): string; virtual;
        function getLicenseId: string; virtual;
        function getServers: TBasicArrayList; virtual;
        function isValid: Boolean; virtual;
        function toString: string; virtual;
        procedure setSpecial(special: string);
        function getSpecial: string; virtual;
        function getLicenseType: TLicenseType; virtual;
  end;

implementation
uses
  AbeClientInformationData, LicenseTypeFactory, StdUtil, StringMaker, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TAbeClientLicense.InitFields;
begin
  
  
  
  
  
end;

function TAbeClientLicense.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbeClientLicense.Create(hashtable: TABHashtable<TObject, TObject>);
var
  abeClientInformationData_: TAbeClientInformationData;
  keyValue: TObject;
  vector: TBasicArrayList;
  size: Integer;
  index: Integer;
  stringUtil_: TStringUtil;
  licenseTypeString: string;
begin
    inherited Create;
    InitFields;
        Self.hashtable := TStdUtil.getInstance().createHashtable();
        abeClientInformationData_ := TAbeClientInformationData.getInstance();
        keyValue := TJava.Box(hashtable.get(TJava.Box(abeClientInformationData_.KEY)));
        if (keyValue) <> (nil) then begin
            if (TJava.ToObject(keyValue) is string) then begin
                Self.hashtable.put(TJava.Box(abeClientInformationData_.KEY), TJava.Box(keyValue));
            end;
        end;
        Self.id := TJava.UnboxString(TJava.ToObject(hashtable.get(TJava.Box(abeClientInformationData_.LICENSEID))));
        vector := TBasicArrayList(TJava.ToObject(hashtable.get(TJava.Box(abeClientInformationData_.LICENSESERVERS))));
        Self.servers := TBasicArrayListD.Create();
        size := vector.size();
        for index := 0 to size - 1 do begin
            Self.servers.add(TJava.Box(vector.get(index)));
        end;
        stringUtil_ := TStringUtil.getInstance();
        Self.setSpecial(stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashtable.get(TJava.Box(abeClientInformationData_.SPECIAL))))));
        licenseTypeString := stringUtil_.getNonNull(TJava.UnboxString(TJava.ToObject(hashtable.get(TJava.Box(abeClientInformationData_.LICENSE_TYPE)))));
        Self.licenseType := TLicenseTypeFactory.getInstance().getInstance(licenseTypeString);
end;
    

class function TAbeClientLicense.hasRequiredKeys(resultHashtable: TABHashtable<TObject, TObject>): Boolean;
var
  abeClientInformationData_: TAbeClientInformationData;
begin
        abeClientInformationData_ := TAbeClientInformationData.getInstance();
        if (((resultHashtable.containsKey(TJava.Box(abeClientInformationData_.LICENSEID))) and (resultHashtable.containsKey(TJava.Box(abeClientInformationData_.LICENSESERVERS)))) and (resultHashtable.containsKey(TJava.Box(abeClientInformationData_.KEY)))) and (resultHashtable.containsKey(TJava.Box(abeClientInformationData_.LICENSE_TYPE))) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TAbeClientLicense.hasKey: Boolean;
begin
        Exit(Self.isValid());
end;
    

function TAbeClientLicense.getKey(keyName: string): string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.hashtable.get(TJava.Box(keyName)))));
end;
    

function TAbeClientLicense.getLicenseId: string;
begin
        Exit(Self.id);
end;
    

function TAbeClientLicense.getServers: TBasicArrayList;
begin
        Exit(Self.servers);
end;
    

function TAbeClientLicense.isValid: Boolean;
var
  stringValidationUtil_: TObject;
begin
        stringValidationUtil_ := nil;
        if not ((Self.getKey(TJava.Box(TAbeClientInformationData.getInstance().KEY)) = '')) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAbeClientLicense.toString: string;
var
  stringBuffer: TStringMaker;
  BREAK: string;
  serverVector: TBasicArrayList;
  size: Integer;
  nextServerString: string;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        BREAK := '<br/>';
        stringBuffer.append('License Id: ');
        stringBuffer.append(Self.getLicenseId());
        stringBuffer.append(BREAK);
        stringBuffer.append('Is Valid: ');
        stringBuffer.appendboolean(Self.isValid());
        stringBuffer.append(BREAK);
        stringBuffer.append('Keys: ');
        stringBuffer.append(Self.hashtable.toString());
        stringBuffer.append(BREAK);
        serverVector := Self.getServers();
        size := serverVector.size();
        for index := 0 to size - 1 do begin
            nextServerString := TJava.UnboxString(TJava.ToObject(serverVector.get(index)));
            stringBuffer.append('Server: ');
            stringBuffer.append(nextServerString);
            stringBuffer.append(BREAK);
        end;
        Exit(stringBuffer.toString());
end;
    

procedure TAbeClientLicense.setSpecial(special: string);
begin
        Self.special := special;
end;
    

function TAbeClientLicense.getSpecial: string;
begin
        Exit(Self.special);
end;
    

function TAbeClientLicense.getLicenseType: TLicenseType;
begin
        Exit(Self.licenseType);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


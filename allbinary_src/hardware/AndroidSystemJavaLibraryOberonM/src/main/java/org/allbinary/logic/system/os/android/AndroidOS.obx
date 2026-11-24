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
// package org.allbinary.logic.system.os.android
unit AndroidOS;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StringMaker, GenericOperatingSystem;

type
  {AB:TYPES}
  TAndroidOS = class(TGenericOperatingSystem)
  public
    stringBuffer: TStringMaker;
    DEVICE_ID: string;
    DEVICE_SOFTWARE_VERSION: string;
    LINE_1_NUMBER: string;
    OUYA: string;
    procedure InitFields;
        constructor Create;
        function isOverScan: Boolean; override;
        function getOverScanXPercent: Integer; override;
        function getOverScanYPercent: Integer; override;
        function toString: string; override;
  end;

implementation
uses
  AndroidSystemProperties, AndroidInfoFactory, CommonSeps;


{AB:CODE}

procedure TAndroidOS.InitFields;
begin
  Self.stringBuffer := TStringMaker.Create();
  Self.DEVICE_ID := 'DeviceId';
  Self.DEVICE_SOFTWARE_VERSION := 'DeviceSoftwareVersion';
  Self.LINE_1_NUMBER := 'Line1Number';
  Self.OUYA := 'ouya';
end;
    

constructor TAndroidOS.Create;
var
  SDK_VERSION: Integer;
  properties: TAndroidSystemProperties;
  commonStrings: TCommonSeps;
begin
    inherited Create;
    InitFields;
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        if (SDK_VERSION) > (10) then begin
            Self.scalable := True;
        end;
        properties := TAndroidSystemProperties.getInstance();
        commonStrings := TCommonSeps.getInstance();
        Self.stringBuffer.append(Self.DEVICE_ID);
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getDeviceId());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append(Self.DEVICE_SOFTWARE_VERSION);
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getDeviceSoftwareVersion());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append(Self.LINE_1_NUMBER);
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getLine1Number());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('NetworkCountryIso');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getNetworkCountryIso());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('NetworkOperator');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getNetworkOperator());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('NetworkOperatorName');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getNetworkOperatorName());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('NetworkType');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.appendint(Integer(Trunc(properties.getNetworkType())));
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('PhoneType');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.appendint(Integer(Trunc(properties.getPhoneType())));
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('SimCountryIso');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getSimCountryIso());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('SimOperator');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getSimOperator());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('SimOperatorName');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getSimOperatorName());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('SimSerialNumber');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getSimSerialNumber());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('SubscriberId');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getSubscriberId());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('VoiceMailAlphaTag');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getVoiceMailAlphaTag());
        Self.stringBuffer.append(commonStrings.SPACE);
        Self.stringBuffer.append('VoiceMailNumber');
        Self.stringBuffer.append(commonStrings.EQUALS);
        Self.stringBuffer.append(properties.getVoiceMailNumber());
        Self.stringBuffer.append(commonStrings.SPACE);
end;
    

function TAndroidOS.isOverScan: Boolean;
var
  properties: TAndroidSystemProperties;
begin
        properties := TAndroidSystemProperties.getInstance();
        if ((Pos(TJava.ToString(Self.OUYA), properties.getDevice().toLowerCase()) - 1)) >= (0) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TAndroidOS.getOverScanXPercent: Integer;
begin
        Exit(90);
end;
    

function TAndroidOS.getOverScanYPercent: Integer;
begin
        Exit(90);
end;
    

function TAndroidOS.toString: string;
var
  osBuffer: TStringMaker;
begin
        osBuffer := TStringMaker.Create();
        osBuffer.append(inherited toString());
        osBuffer.append(TCommonSeps.getInstance().SPACE);
        osBuffer.append('Other System Info: '#10'');
        osBuffer.append(Self.stringBuffer.toString());
        Exit(osBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


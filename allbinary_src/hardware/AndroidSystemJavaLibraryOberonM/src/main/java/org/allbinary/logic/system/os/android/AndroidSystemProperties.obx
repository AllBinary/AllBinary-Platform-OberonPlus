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
unit AndroidSystemProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Context, CommonStrings;

type
  {AB:TYPES}
  TAndroidSystemProperties = class(TObject)
  public
    commonStrings: TCommonStrings;
    class var SINGLETON: TAndroidSystemProperties;
    procedure InitFields;
        class function getInstance: TAndroidSystemProperties; static;
        constructor Create(context_: TContext);
        function getDeviceId: string; virtual;
        function getDeviceSoftwareVersion: string; virtual;
        function getLine1Number: string; virtual;
        function getNetworkCountryIso: string; virtual;
        function getNetworkOperator: string; virtual;
        function getNetworkOperatorName: string; virtual;
        function getSimCountryIso: string; virtual;
        function getSimOperator: string; virtual;
        function getSimOperatorName: string; virtual;
        function getSimSerialNumber: string; virtual;
        function getSubscriberId: string; virtual;
        function getVoiceMailAlphaTag: string; virtual;
        function getVoiceMailNumber: string; virtual;
        function getNetworkType: Integer; virtual;
        function getPhoneType: Integer; virtual;
        function getBoard: string; virtual;
        function getBrand: string; virtual;
        function getDevice: string; virtual;
        function getFingerprint: string; virtual;
        function getHost: string; virtual;
        function getId: string; virtual;
        function getModel: string; virtual;
        function getProduct: string; virtual;
        function getTags: string; virtual;
        function getTime: Int64; virtual;
        function getType: string; virtual;
        function getUser: string; virtual;
  end;

implementation
uses
  Build, ResourceUtil, StringUtil;


{AB:CODE}

procedure TAndroidSystemProperties.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;
    

class function TAndroidSystemProperties.getInstance: TAndroidSystemProperties;
begin
        Exit(TAndroidSystemProperties.SINGLETON);
end;
    

constructor TAndroidSystemProperties.Create(context_: TContext);
begin
    inherited Create;
    InitFields;
end;
    

function TAndroidSystemProperties.getDeviceId: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TAndroidSystemProperties.getDeviceSoftwareVersion: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getLine1Number: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getNetworkCountryIso: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getNetworkOperator: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getNetworkOperatorName: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getSimCountryIso: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getSimOperator: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getSimOperatorName: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getSimSerialNumber: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getSubscriberId: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getVoiceMailAlphaTag: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getVoiceMailNumber: string;
begin
        Exit(Self.commonStrings.DISABLE);
end;
    

function TAndroidSystemProperties.getNetworkType: Integer;
begin
        Exit(-1);
end;
    

function TAndroidSystemProperties.getPhoneType: Integer;
begin
        Exit(-1);
end;
    

function TAndroidSystemProperties.getBoard: string;
begin
        Exit(TBuild.BOARD);
end;
    

function TAndroidSystemProperties.getBrand: string;
begin
        Exit(TBuild.BRAND);
end;
    

function TAndroidSystemProperties.getDevice: string;
begin
        Exit(TBuild.DEVICE);
end;
    

function TAndroidSystemProperties.getFingerprint: string;
begin
        Exit(TBuild.FINGERPRINT);
end;
    

function TAndroidSystemProperties.getHost: string;
begin
        Exit(TBuild.HOST);
end;
    

function TAndroidSystemProperties.getId: string;
begin
        Exit(TBuild.ID);
end;
    

function TAndroidSystemProperties.getModel: string;
begin
        Exit(TBuild.MODEL);
end;
    

function TAndroidSystemProperties.getProduct: string;
begin
        Exit(TBuild.PRODUCT);
end;
    

function TAndroidSystemProperties.getTags: string;
begin
        Exit(TBuild.TAGS);
end;
    

function TAndroidSystemProperties.getTime: Int64;
begin
        Exit(TBuild.TIME);
end;
    

function TAndroidSystemProperties.getType: string;
begin
        Exit(TBuild.TYPE_);
end;
    

function TAndroidSystemProperties.getUser: string;
begin
        Exit(TBuild.USER);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidSystemProperties.SINGLETON := TAndroidSystemProperties.Create(TResourceUtil.getInstance().getContext());
  {AB:END}

end.


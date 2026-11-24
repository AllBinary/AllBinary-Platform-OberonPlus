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
// package org.allbinary.business.advertisement.campaign
unit AdvertisementCampaignData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAdvertisementCampaignData = class(TObject)
  public
    NAME: string;
    DESCRIPTION: string;
    CONFIG: string;
    class var instance: TAdvertisementCampaignData;
    procedure InitFields;
        class function getInstance: TAdvertisementCampaignData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TAdvertisementCampaignData.InitFields;
begin
  Self.NAME := 'ADVERTISEMENTCAMPAIGN_NAME';
  Self.DESCRIPTION := 'ADVERTISEMENTCAMPAIGN_DESCRIPTION';
  Self.CONFIG := 'ADVERTISEMENTCAMPAIGN_CONFIG';
end;
    

class function TAdvertisementCampaignData.getInstance: TAdvertisementCampaignData;
begin
        Exit(TAdvertisementCampaignData.instance);
end;
    

constructor TAdvertisementCampaignData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TAdvertisementCampaignData.instance := TAdvertisementCampaignData.Create();
  {AB:END}

end.


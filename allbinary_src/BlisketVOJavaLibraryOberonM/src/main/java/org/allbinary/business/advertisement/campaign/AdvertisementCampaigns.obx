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
unit AdvertisementCampaigns;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AdvertisementInterface, AdvertisementsInterface, AdvertisementSearchInterface, AdvertisementCampaignsInterface;

type
  {AB:TYPES}
  TAdvertisementCampaigns = class(TInterfacedObject, IAdvertisementCampaignsInterface)
  public
    advertisementsVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(vector: TBasicArrayList);
        procedure add(advertisementInterface_: IAdvertisementInterface); virtual;
        function get(index: Integer): IAdvertisementInterface; virtual;
        function size: Integer; virtual;
        function isEnabled: Boolean; virtual;
        function search(advertisementSearchInterface_: IAdvertisementSearchInterface): IAdvertisementsInterface; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TAdvertisementCampaigns.InitFields;
begin
  
end;

function TAdvertisementCampaigns.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementCampaigns.Create(vector: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.advertisementsVector := Self.advertisementsVector;
end;
    

procedure TAdvertisementCampaigns.add(advertisementInterface_: IAdvertisementInterface);
begin
        Self.advertisementsVector.add(TJava.Box(advertisementInterface_));
end;
    

function TAdvertisementCampaigns.get(index: Integer): IAdvertisementInterface;
begin
        Exit((TJava.ToObject(Self.advertisementsVector.get(index)) as IAdvertisementInterface));
end;
    

function TAdvertisementCampaigns.size: Integer;
begin
        Exit(Self.advertisementsVector.size());
end;
    

function TAdvertisementCampaigns.isEnabled: Boolean;
begin
        Exit(True);
end;
    

function TAdvertisementCampaigns.search(advertisementSearchInterface_: IAdvertisementSearchInterface): IAdvertisementsInterface;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


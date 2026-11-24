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
unit AdvertisementCampaign;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AdvertisementsInterface, AdvertisementSearchInterface, AdvertisementCampaignInterface;

type
  {AB:TYPES}
  TAdvertisementCampaign = class(TInterfacedObject, IAdvertisementCampaignInterface)
  public
    hashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>);
        function getComponent: TObject; virtual;
        function getName: string; virtual;
        procedure setComponentName(name: string); virtual;
        procedure setName(name: string); virtual;
        function search(advertisementSearchInterface_: IAdvertisementSearchInterface): IAdvertisementsInterface; virtual;
  end;

implementation
uses
  AdvertisementCampaignData, DynamicObjectData;


{AB:CODE}

procedure TAdvertisementCampaign.InitFields;
begin
  
end;

function TAdvertisementCampaign.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementCampaign.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
        Self.hashMap := hashMap_;
end;
    

function TAdvertisementCampaign.getComponent: TObject;
begin
        Exit(nil);
end;
    

function TAdvertisementCampaign.getName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.hashMap.get(TJava.Box(TAdvertisementCampaignData.getInstance().NAME)))));
end;
    

procedure TAdvertisementCampaign.setComponentName(name: string);
begin
        Self.hashMap.put(TJava.Box(TDynamicObjectData.NAME), TJava.Box(name));
end;
    

procedure TAdvertisementCampaign.setName(name: string);
begin
        Self.hashMap.put(TJava.Box(TAdvertisementCampaignData.getInstance().NAME), TJava.Box(name));
end;
    

function TAdvertisementCampaign.search(advertisementSearchInterface_: IAdvertisementSearchInterface): IAdvertisementsInterface;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


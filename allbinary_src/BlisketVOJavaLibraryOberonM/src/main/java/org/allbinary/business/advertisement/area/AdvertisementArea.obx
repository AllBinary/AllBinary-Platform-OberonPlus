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
// package org.allbinary.business.advertisement.area
unit AdvertisementArea;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AdvertisementAreaConstraintsInterface, AdvertisementAreaInterface;

type
  {AB:TYPES}
  TAdvertisementArea = class(TInterfacedObject, IAdvertisementAreaInterface)
  public
    name: string;
    storeName: string;
    description: string;
    advertisementAreaConstraintsInterface: IAdvertisementAreaConstraintsInterface;
    campaign: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>);
        function getName: string; virtual;
        function getStoreName: string; virtual;
        function getDescription: string; virtual;
        function getConstraints: IAdvertisementAreaConstraintsInterface; virtual;
        function getCampaign: string; virtual;
        procedure setName(name: string); virtual;
        procedure setStoreName(storeName: string); virtual;
        procedure setDescription(description: string); virtual;
        procedure setConstraints(advertisementConstraintsInterface: IAdvertisementAreaConstraintsInterface); virtual;
        procedure setCampaign(campaign: string); virtual;
  end;

implementation
uses
  AdvertisementAreaData, AdvertisementAreaConstraints, AdvertisementCampaignData, StoreFrontData, DomDocumentHelper, Document;


{AB:CODE}

procedure TAdvertisementArea.InitFields;
begin
  
  
  
  
  
end;

function TAdvertisementArea.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementArea.Create(hashMap_: TJavaHashMap<TObject, TObject>);
var
  constraintsDomString: string;
  document_: TDocument;
begin
    inherited Create;
    InitFields;
        Self.name := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TAdvertisementAreaData.getInstance().NAME))));
        Self.storeName := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TStoreFrontData.getInstance().NAME))));
        Self.description := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TAdvertisementAreaData.getInstance().DESCRIPTION))));
        constraintsDomString := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TAdvertisementAreaData.getInstance().CONSTRAINTS))));
        document_ := TDomDocumentHelper.create_(constraintsDomString);
        Self.advertisementAreaConstraintsInterface := TAdvertisementAreaConstraints.Create(document_);
        Self.campaign := TJava.UnboxString(TJava.ToObject(hashMap_.get(TJava.Box(TAdvertisementCampaignData.getInstance().NAME))));
end;
    

function TAdvertisementArea.getName: string;
begin
        Exit(Self.name);
end;
    

function TAdvertisementArea.getStoreName: string;
begin
        Exit(Self.storeName);
end;
    

function TAdvertisementArea.getDescription: string;
begin
        Exit(Self.description);
end;
    

function TAdvertisementArea.getConstraints: IAdvertisementAreaConstraintsInterface;
begin
        Exit(Self.advertisementAreaConstraintsInterface);
end;
    

function TAdvertisementArea.getCampaign: string;
begin
        Exit(Self.campaign);
end;
    

procedure TAdvertisementArea.setName(name: string);
begin
        Self.name := name;
end;
    

procedure TAdvertisementArea.setStoreName(storeName: string);
begin
        Self.storeName := storeName;
end;
    

procedure TAdvertisementArea.setDescription(description: string);
begin
        Self.description := description;
end;
    

procedure TAdvertisementArea.setConstraints(advertisementConstraintsInterface: IAdvertisementAreaConstraintsInterface);
begin
        Self.advertisementAreaConstraintsInterface := Self.advertisementAreaConstraintsInterface;
end;
    

procedure TAdvertisementArea.setCampaign(campaign: string);
begin
        Self.campaign := campaign;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


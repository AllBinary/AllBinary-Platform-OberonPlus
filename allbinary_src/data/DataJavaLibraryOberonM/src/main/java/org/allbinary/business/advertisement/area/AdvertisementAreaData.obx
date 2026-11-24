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
unit AdvertisementAreaData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAdvertisementAreaData = class(TObject)
  public
    NAME: string;
    DESCRIPTION: string;
    CONSTRAINTS: string;
    class var instance: TAdvertisementAreaData;
    procedure InitFields;
        class function getInstance: TAdvertisementAreaData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TAdvertisementAreaData.InitFields;
begin
  Self.NAME := 'ADVERTISEMENT_NAME';
  Self.DESCRIPTION := 'ADVERTISEMENT_DESCRIPTION';
  Self.CONSTRAINTS := 'ADVERTISEMENT_CONSTRAINTS';
end;
    

class function TAdvertisementAreaData.getInstance: TAdvertisementAreaData;
begin
        Exit(TAdvertisementAreaData.instance);
end;
    

constructor TAdvertisementAreaData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TAdvertisementAreaData.instance := TAdvertisementAreaData.Create();
  {AB:END}

end.


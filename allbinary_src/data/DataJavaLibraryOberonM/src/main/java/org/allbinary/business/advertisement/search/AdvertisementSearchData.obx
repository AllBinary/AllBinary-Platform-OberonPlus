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
// package org.allbinary.business.advertisement.search
unit AdvertisementSearchData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAdvertisementSearchData = class(TObject)
  public
    TITLE: string;
    PRICE: string;
    RELEVANCY: string;
    POPULARITY: string;
    class var instance: TAdvertisementSearchData;
    procedure InitFields;
        class function getInstance: TAdvertisementSearchData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TAdvertisementSearchData.InitFields;
begin
  Self.TITLE := 'AFFILIATE_TITLE';
  Self.PRICE := 'AFFILIATE_PRICE';
  Self.RELEVANCY := 'AFFILIATE_RELEVANCY';
  Self.POPULARITY := 'AFFILIATE_POPULARITY';
end;
    

class function TAdvertisementSearchData.getInstance: TAdvertisementSearchData;
begin
        Exit(TAdvertisementSearchData.instance);
end;
    

constructor TAdvertisementSearchData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TAdvertisementSearchData.instance := TAdvertisementSearchData.Create();
  {AB:END}

end.


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
// package org.allbinary.business.context.modules.storefront
unit StoreFrontsData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStoreFrontsData = class(TObject)
  public
    TYPE_: string;
    RETAIL: string;
    SUBSCRIPTION: string;
    AUCTION: string;
    NEWS: string;
    BLOG: string;
    FORUM: string;
    class var instance: TStoreFrontsData;
    procedure InitFields;
    constructor Create;
        class function getInstance: TStoreFrontsData; static;
  end;

implementation

{AB:CODE}

procedure TStoreFrontsData.InitFields;
begin
  Self.TYPE_ := 'STOREFRONTS_TYPE';
  Self.RETAIL := 'STOREFRONTS_RETAIL';
  Self.SUBSCRIPTION := 'STOREFRONTS_SUBSCRIPTION';
  Self.AUCTION := 'STOREFRONTS_AUCTION';
  Self.NEWS := 'STOREFRONTS_NEWS';
  Self.BLOG := 'STOREFRONTS_BLOG';
  Self.FORUM := 'STOREFRONTS_FORUM';
end;

constructor TStoreFrontsData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TStoreFrontsData.getInstance: TStoreFrontsData;
begin
        Exit(TStoreFrontsData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TStoreFrontsData.instance := TStoreFrontsData.Create();
  {AB:END}

end.


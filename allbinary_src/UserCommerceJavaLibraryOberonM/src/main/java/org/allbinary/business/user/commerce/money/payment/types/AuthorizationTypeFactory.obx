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
// package org.allbinary.business.user.commerce.money.payment.types
unit AuthorizationTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AuthorizationType;

type
  {AB:TYPES}
  TAuthorizationTypeFactory = class(TObject)
  public
    NONE: TAuthorizationType;
    VOICE: TAuthorizationType;
    RETINAL: TAuthorizationType;
    IMAGE: TAuthorizationType;
    DNA: TAuthorizationType;
    PRINT: TAuthorizationType;
    CHIP: TAuthorizationType;
    class var instance: TAuthorizationTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAuthorizationTypeFactory; static;
  end;

implementation

{AB:CODE}

procedure TAuthorizationTypeFactory.InitFields;
begin
  Self.NONE := TAuthorizationType.Create('None');
  Self.VOICE := TAuthorizationType.Create('Voice');
  Self.RETINAL := TAuthorizationType.Create('Retinal');
  Self.IMAGE := TAuthorizationType.Create('Image');
  Self.DNA := TAuthorizationType.Create('DNA');
  Self.PRINT := TAuthorizationType.Create('Print');
  Self.CHIP := TAuthorizationType.Create('Chip');
end;

constructor TAuthorizationTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAuthorizationTypeFactory.getInstance: TAuthorizationTypeFactory;
begin
        Exit(TAuthorizationTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TAuthorizationTypeFactory.instance := TAuthorizationTypeFactory.Create();
  {AB:END}

end.


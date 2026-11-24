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
// package org.allbinary.business.user.commerce.shipping.modules
unit FedExShippingModule;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OrderInterface, Money, ShippingInterface;

type
  {AB:TYPES}
  TFedExShippingModule = class(TInterfacedObject, IShippingInterface)
  public
    name: string;
    description: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getCost(order: IOrderInterface): TMoney; virtual;
        function getDescription: string; virtual;
        function getName: string; virtual;
  end;

implementation

{AB:CODE}

procedure TFedExShippingModule.InitFields;
begin
  Self.name := 'FedEx';
  Self.description := 'Fast Mail';
end;

function TFedExShippingModule.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFedExShippingModule.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TFedExShippingModule.getCost(order: IOrderInterface): TMoney;
begin
        Exit(TMoney.Create());
end;
    

function TFedExShippingModule.getDescription: string;
begin
        Exit(Self.description);
end;
    

function TFedExShippingModule.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


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
unit NoShippingModule;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OrderInterface, Money, CommonStrings, ShippingInterface;

type
  {AB:TYPES}
  TNoShippingModule = class(TInterfacedObject, IShippingInterface)
  public
    commonStrings: TCommonStrings;
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

procedure TNoShippingModule.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.name := 'No Shipping';
  Self.description := 'This shipping method is for items that are not shipped.';
end;

function TNoShippingModule.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNoShippingModule.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TNoShippingModule.getCost(order: IOrderInterface): TMoney;
begin
        Exit(TMoney.Create());
end;
    

function TNoShippingModule.getDescription: string;
begin
        Exit(Self.description);
end;
    

function TNoShippingModule.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


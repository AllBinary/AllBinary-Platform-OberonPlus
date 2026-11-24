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
unit BasicWeightShippingModule;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OrderInterface, Money, CommonStrings, ShippingInterface;

type
  {AB:TYPES}
  TBasicWeightShippingModule = class(TInterfacedObject, IShippingInterface)
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
uses
  BasketInterface;


{AB:CODE}

procedure TBasicWeightShippingModule.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.name := 'Basic Shipping (5 to 7 working days)';
  Self.description := 'We will soon provide a variety of shipping methods.';
end;

function TBasicWeightShippingModule.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicWeightShippingModule.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TBasicWeightShippingModule.getCost(order: IOrderInterface): TMoney;
var
  basket: IBasketInterface;
  money_: TMoney;
begin
        basket := order.getBasket();
        money_ := TMoney.Create();
        money_.add(basket.getTotalWeight());
        money_.multiply(1);
        money_.add('3.50');
        Exit(money_);
end;
    

function TBasicWeightShippingModule.getDescription: string;
begin
        Exit(Self.description);
end;
    

function TBasicWeightShippingModule.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


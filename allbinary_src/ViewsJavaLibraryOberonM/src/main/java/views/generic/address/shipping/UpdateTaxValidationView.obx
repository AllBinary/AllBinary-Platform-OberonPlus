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
// package views.generic.address.shipping
unit UpdateTaxValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, ShippingAddressView;

type
  {AB:TYPES}
  TUpdateTaxValidationView = class(TShippingAddressView, IValidationComponentInterface)
  public
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, StoreFrontFactory, StoreFrontInterface, ShippingAddressData, StreetAddress, TaxFactory, ShippingAddressesEntity;


{AB:CODE}

function TUpdateTaxValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUpdateTaxValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

// throws Exception
function TUpdateTaxValidationView.isValid: Boolean;
var
  storeFrontInterface_: IStoreFrontInterface;
  billingAddressesEntity: TShippingAddressesEntity;
  streetAddressList: TBasicArrayList;
  count: Integer;
  size: Integer;
  aStreetAddress: TStreetAddress;
  index: Integer;
begin
        Self.streetAddress := TStreetAddress.Create(Self.getRequest());
        storeFrontInterface_ := TStoreFrontFactory.getInstance(Self.getTransformInfoInterface().getStoreName());
        if (TTaxFactory.getInstance().getInstance(Self.abeClientInformation, storeFrontInterface_).isValid(Self.streetAddress, storeFrontInterface_)) = (False) then begin
            Exit(False);
        end;
        billingAddressesEntity := TShippingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
        streetAddressList := billingAddressesEntity.get();
        if (streetAddressList) = (nil) then begin
            Exit(False);
        end;
        count := 0;
        size := streetAddressList.size();
        for index := 0 to size - 1 do begin
            aStreetAddress := TStreetAddress(TJava.ToObject(streetAddressList.get(index)));
            if (aStreetAddress.getName().compareTo(TShippingAddressData.TAX)) = (0) then begin
                Inc(count);
            end;
        end;
        if (count) <> (1) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TUpdateTaxValidationView.validationInfo: string;
begin
        Exit('Unable to update tax location.');
end;
    

function TUpdateTaxValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TUpdateTaxValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TUpdateTaxValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


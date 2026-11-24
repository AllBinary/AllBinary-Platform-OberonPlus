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
unit ValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, ShippingAddressesView;

type
  {AB:TYPES}
  TValidationView = class(TShippingAddressesView, IValidationComponentInterface)
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
  StreetAddress, ShippingAddressesEntity;


{AB:CODE}

function TValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

function TValidationView.isValid: Boolean;
var
  billingAddressesEntity: TShippingAddressesEntity;
  size: Integer;
  streetAddress_: TStreetAddress;
  index: Integer;
begin
        billingAddressesEntity := TShippingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
        Self.streetAddressList := billingAddressesEntity.get();
        if (Self.streetAddressList) = (nil) then begin
            Exit(False);
        end;
        size := Self.streetAddressList.size();
        for index := 0 to size - 1 do begin
            streetAddress_ := TStreetAddress(TJava.ToObject(Self.streetAddressList.get(index)));
            if (streetAddress_.isValid()) = (False) then begin
                Self.streetAddressList.remove(streetAddress_);
            end;
        end;
        if (Self.streetAddressList.size()) < (1) then begin
            Exit(False);
        end;
        Exit(True);
end;
    

function TValidationView.validationInfo: string;
begin
        Exit('No Shipping Addresses to display.<br />');
end;
    

function TValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


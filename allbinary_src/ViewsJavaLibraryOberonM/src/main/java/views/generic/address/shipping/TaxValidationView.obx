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
unit TaxValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, ShippingAddressView;

type
  {AB:TYPES}
  TTaxValidationView = class(TShippingAddressView, IValidationComponentInterface)
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
  BasicArrayList, BasicArrayListD, ShippingAddressData, StreetAddress, ShippingAddressesEntity, StringUtil;


{AB:CODE}

function TTaxValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTaxValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

function TTaxValidationView.isValid: Boolean;
var
  billingAddressesEntity: TShippingAddressesEntity;
  streetAddressList: TBasicArrayList;
  size: Integer;
  aStreetAddress: TStreetAddress;
  index: Integer;
begin
        billingAddressesEntity := TShippingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
        streetAddressList := billingAddressesEntity.get();
        if (streetAddressList) = (nil) then begin
            Exit(False);
        end;
        size := streetAddressList.size();
        for index := 0 to size - 1 do begin
            aStreetAddress := TStreetAddress(TJava.ToObject(streetAddressList.get(index)));
            if (aStreetAddress.getName().compareTo(TShippingAddressData.TAX)) = (0) then begin
                Self.streetAddress := aStreetAddress;
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TTaxValidationView.validationInfo: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TTaxValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TTaxValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TTaxValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.


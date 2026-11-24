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
unit EditValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, ShippingAddressView;

type
  {AB:TYPES}
  TEditValidationView = class(TShippingAddressView, IValidationComponentInterface)
  public
    value: string;
    procedure InitFields;
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
  StreetAddressData, ShippingAddressesEntity, TransformInfoHttpInterface;


{AB:CODE}

procedure TEditValidationView.InitFields;
begin
  
end;

function TEditValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEditValidationView.Create(transformInfoInterface_: ITransformInfoInterface);
var
  httpTransformInfoInterface: ITransformInfoHttpInterface;
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        httpTransformInfoInterface := (TJava.ToObject(Self.getTransformInfoInterface()) as ITransformInfoHttpInterface);
        Self.value := httpTransformInfoInterface.getPageContext().getRequest().getParameter(TStreetAddressData.ID);
end;
    

function TEditValidationView.isValid: Boolean;
var
  billingAddressesEntity: TShippingAddressesEntity;
begin
        if not TJava.IsNull(Self.getWeblisketSession().getUserName()) then begin
            Exit(False);
        end;
        billingAddressesEntity := TShippingAddressesEntity.Create(Self.getWeblisketSession().getUserName());
        Self.streetAddress := billingAddressesEntity.get(Self.value);
        if (Self.streetAddress) = (nil) then begin
            Exit(False);
        end;
        Exit(Self.streetAddress.isValid());
end;
    

function TEditValidationView.validationInfo: string;
begin
        Exit(Self.streetAddress.validationInfo());
end;
    

function TEditValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TEditValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TEditValidationView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

